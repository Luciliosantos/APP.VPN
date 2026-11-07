package br.com.technet.vpn

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import br.com.technet.vpn.data.BHttpProtocol
import br.com.technet.vpn.data.VpnConfig
import br.com.technet.vpn.data.VpnConfigParser
import br.com.technet.vpn.data.VpnProfile

private val BG = Color(0xFF080D18)
private val CARD = Color(0xFF121D2E)
private val BLUE = Color(0xFF35D7FF)
private val GREEN = Color(0xFFB8F36B)
private val MUTED = Color(0xFF91A1B8)

class MainActivity : ComponentActivity() {
    private var importHandler: ((String) -> Unit)? = null
    private val picker = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) contentResolver.openInputStream(uri)?.bufferedReader()?.use { importHandler?.invoke(it.readText()) }
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            var profile by remember { mutableStateOf<VpnProfile?>(null) }
            var selected by remember { mutableStateOf<String?>(null) }
            var page by remember { mutableStateOf("INÍCIO") }
            var query by remember { mutableStateOf("") }
            var carrier by remember { mutableStateOf("TODAS") }
            var message by remember { mutableStateOf("Importe seu config.json para carregar os perfis.") }
            var bhttpMessage by remember { mutableStateOf<String?>(null) }
            var bhttpTesting by remember { mutableStateOf(false) }
            val scope = rememberCoroutineScope()
            importHandler = { raw ->
                runCatching { VpnConfigParser.parse(raw) }
                    .onSuccess { p -> profile = p; selected = p.networks.firstOrNull()?.id; message = "Versão " + p.version + " • " + p.networks.size + " conexões carregadas" }
                    .onFailure { e -> message = "Erro no JSON: " + (e.message ?: "arquivo inválido") }
            }
            val all = profile?.networks.orEmpty()
            val filtered = all.filter { c ->
                (carrier == "TODAS" || (c.flag ?: "").contains(carrier, true)) &&
                (query.isBlank() || c.name.contains(query, true) || c.type.name.contains(query, true) || (c.info ?: "").contains(query, true))
            }
            val active = all.firstOrNull { it.id == selected }
            MaterialTheme(colorScheme = darkColorScheme(primary = BLUE, background = BG, surface = CARD)) {
                Surface(Modifier.fillMaxSize(), color = BG) {
                    Column(Modifier.fillMaxSize()) {
                        Row(Modifier.fillMaxWidth().background(Brush.horizontalGradient(listOf(Color(0xFF173B55), BG))).padding(20.dp), verticalAlignment = Alignment.CenterVertically) {
                            Box(Modifier.size(44.dp).background(BLUE, RoundedCornerShape(13.dp)), contentAlignment = Alignment.Center) { Text("TN", color = BG, fontWeight = FontWeight.Black) }
                            Spacer(Modifier.width(12.dp))
                            Column(Modifier.weight(1f)) {
                                Text("TECH NET", color = Color.White, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Black)
                                Text("VPN  /  SECURE CONNECTION", color = BLUE, style = MaterialTheme.typography.labelSmall)
                            }
                            Text("v" + (profile?.version ?: "1.0"), color = MUTED, style = MaterialTheme.typography.labelSmall)
                        }
                        when (page) {
                            "SERVIDORES" -> {
                                Column(Modifier.fillMaxSize().weight(1f).padding(18.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
                                    Text("BIBLIOTECA DE PERFIS", color = MUTED, style = MaterialTheme.typography.labelSmall)
                                    Text("Conexões", color = Color.White, style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
                                    OutlinedTextField(query, { query = it }, Modifier.fillMaxWidth(), placeholder = { Text("Buscar conexão...") }, singleLine = true, shape = RoundedCornerShape(14.dp))
                                    Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                                        listOf("TODAS", "VIVO", "TIM", "CLARO").forEach { f -> FilterChip(selected = carrier == f, onClick = { carrier = f }, label = { Text(f) }) }
                                    }
                                    Row(verticalAlignment = Alignment.CenterVertically) {
                                        Text(filtered.size.toString() + " RESULTADOS", color = MUTED, modifier = Modifier.weight(1f), style = MaterialTheme.typography.labelSmall)
                                        TextButton(onClick = { picker.launch(arrayOf("application/json", "text/*", "application/octet-stream")) }) { Text("IMPORTAR JSON") }
                                    }
                                    if (filtered.isEmpty()) {
                                        Box(Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) { Text("Nenhum perfil. Importe o config.json.", color = MUTED) }
                                    } else LazyColumn(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                                        items(filtered, key = { it.id }) { c ->
                                            val chosen = c.id == selected
                                            Row(Modifier.fillMaxWidth().background(if (chosen) Color(0xFF17334A) else CARD, RoundedCornerShape(15.dp))
                                                .border(1.dp, if (chosen) BLUE else Color(0xFF1D2B40), RoundedCornerShape(15.dp))
                                                .clickable { selected = c.id }.padding(14.dp), verticalAlignment = Alignment.CenterVertically) {
                                                Box(Modifier.size(40.dp).background(Color(0xFF22364D), RoundedCornerShape(11.dp)), contentAlignment = Alignment.Center) {
                                                    Text((c.flag ?: "VPN").take(3).uppercase(), color = BLUE, style = MaterialTheme.typography.labelSmall)
                                                }
                                                Spacer(Modifier.width(11.dp))
                                                Column(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                                    Text(c.name, color = Color.White, fontWeight = FontWeight.SemiBold, maxLines = 2, overflow = TextOverflow.Ellipsis)
                                                    Text(c.type.name + " • " + (c.info ?: "sem tipo"), color = MUTED, style = MaterialTheme.typography.labelSmall)
                                                    if (!c.sni.isNullOrBlank()) Text("SNI: " + c.sni, color = MUTED, style = MaterialTheme.typography.labelSmall)
                                                }
                                                Text(if (chosen) "✓" else "›", color = if (chosen) GREEN else BLUE)
                                            }
                                        }
                                    }
                                }
                            }
                            "FERRAMENTAS" -> {
                                Column(Modifier.weight(1f).fillMaxWidth().padding(20.dp), verticalArrangement = Arrangement.spacedBy(14.dp)) {
                                    Text("FERRAMENTAS", color = MUTED, style = MaterialTheme.typography.labelSmall)
                                    Text("Gerenciar aplicativo", color = Color.White, style = MaterialTheme.typography.headlineMedium)
                                    ToolItem("Importar config.json", "Carregar servidores e conexões") { picker.launch(arrayOf("application/json", "text/*", "application/octet-stream")) }
                                    ToolItem("Versão da configuração", profile?.version ?: "Não importada") {}
                                    ToolItem("Portas UDP", profile?.udpPorts?.joinToString(", ") ?: "Não informadas") {}
                                    ToolItem("Motor de conexão", "Integração pendente — sem status falso") {}
                                    Text(message, color = MUTED, style = MaterialTheme.typography.bodySmall)
                                    Spacer(Modifier.weight(1f))
                                    Text("BHTTP será ativado com o motor de transporte compatível.", color = GREEN, style = MaterialTheme.typography.bodySmall)
                                }
                            }
                            else -> {
                                Column(Modifier.weight(1f).fillMaxWidth().padding(20.dp), verticalArrangement = Arrangement.spacedBy(15.dp)) {
                                    Row(verticalAlignment = Alignment.CenterVertically) {
                                        Column(Modifier.weight(1f)) {
                                            Text("PAINEL DE CONTROLE", color = MUTED, style = MaterialTheme.typography.labelSmall)
                                            Text("Sua conexão.", color = Color.White, style = MaterialTheme.typography.headlineMedium, fontWeight = FontWeight.Bold)
                                        }
                                        Text("● OFFLINE", color = GREEN, fontWeight = FontWeight.Bold)
                                    }
                                    Column(Modifier.fillMaxWidth().background(Brush.linearGradient(listOf(Color(0xFF173B55), Color(0xFF142238), CARD)), RoundedCornerShape(23.dp)).padding(19.dp)) {
                                        Text("PERFIL SELECIONADO", color = BLUE, style = MaterialTheme.typography.labelSmall)
                                        Spacer(Modifier.height(8.dp))
                                        Text(active?.name ?: "Nenhuma conexão selecionada", color = Color.White, style = MaterialTheme.typography.titleLarge, fontWeight = FontWeight.Bold)
                                        Spacer(Modifier.height(8.dp))
                                        Text((active?.type?.name ?: "SEM PERFIL") + " • " + (active?.info ?: "IMPORTAR CONFIG"), color = BLUE)
                                        Spacer(Modifier.height(12.dp))
                                        Text("O motor VPN ainda não está ativo nesta versão. O app não simula conexão.", color = MUTED, style = MaterialTheme.typography.bodySmall)
                                        if (active?.type == br.com.technet.vpn.data.TransportType.BHTTP) {
                                            Spacer(Modifier.height(10.dp))
                                            Text("Endpoint BHTTP: " + (active.bhttpHost ?: "não informado") + ":" + (active.bhttpPort?.toString() ?: "sem porta"), color = MUTED, style = MaterialTheme.typography.bodySmall)
                                            Button(
                                                enabled = !bhttpTesting && !active.bhttpHost.isNullOrBlank() && active.bhttpPort != null,
                                                onClick = {
                                                    val host = active.bhttpHost!!
                                                    val port = active.bhttpPort!!
                                                    val tls = active.bhttpTls
                                                    bhttpTesting = true
                                                    bhttpMessage = "Testando protocolo BHTTP v1..."
                                                    scope.launch {
                                                        val result = withContext(Dispatchers.IO) {
                                                            runCatching { BHttpProtocol.probe(host, port, tls) }
                                                        }
                                                        bhttpMessage = result.fold({ it.message }, { "Falha no teste: " + (it.message ?: "erro de rede") })
                                                        bhttpTesting = false
                                                    }
                                                },
                                                modifier = Modifier.fillMaxWidth(),
                                                colors = ButtonDefaults.buttonColors(containerColor = BLUE),
                                                shape = RoundedCornerShape(12.dp)
                                            ) { Text(if (bhttpTesting) "TESTANDO BHTTP..." else "TESTAR PROTOCOLO BHTTP", color = BG, fontWeight = FontWeight.Black) }
                                            bhttpMessage?.let { Text(it, color = if (it.contains("respondeu")) GREEN else MUTED, style = MaterialTheme.typography.bodySmall) }
                                        }
                                        Spacer(Modifier.height(12.dp))
                                        Button(onClick = { page = "SERVIDORES" }, Modifier.fillMaxWidth(), colors = ButtonDefaults.buttonColors(containerColor = BLUE), shape = RoundedCornerShape(12.dp)) { Text("ESCOLHER CONEXÃO", color = BG, fontWeight = FontWeight.Black) }
                                    }
                                    Row(horizontalArrangement = Arrangement.spacedBy(9.dp)) {
                                        MiniStat("PERFIS", all.size.toString(), Modifier.weight(1f))
                                        MiniStat("SERVIDORES", (profile?.servers?.size ?: 0).toString(), Modifier.weight(1f))
                                        MiniStat("UDP", (profile?.udpPorts?.size ?: 0).toString(), Modifier.weight(1f))
                                    }
                                    Text("CONFIGURAÇÃO", color = Color.White, fontWeight = FontWeight.Bold)
                                    Text(message, color = MUTED, style = MaterialTheme.typography.bodySmall)
                                    OutlinedButton(onClick = { picker.launch(arrayOf("application/json", "text/*", "application/octet-stream")) }, Modifier.fillMaxWidth(), shape = RoundedCornerShape(12.dp)) { Text("IMPORTAR CONFIG.JSON") }
                                    Spacer(Modifier.weight(1f))
                                    Text("TECH NET VPN  •  CENTRAL DE REDE", color = Color(0xFF52647C), style = MaterialTheme.typography.labelSmall)
                                }
                            }
                        }
                        Row(Modifier.fillMaxWidth().background(Color(0xFF0D1524)).padding(vertical = 8.dp), horizontalArrangement = Arrangement.SpaceAround) {
                            listOf("INÍCIO" to "⌂", "SERVIDORES" to "▤", "FERRAMENTAS" to "⚙").forEach { (label, glyph) ->
                                Column(Modifier.weight(1f).clickable { page = label }.padding(4.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text(glyph, color = if (page == label) BLUE else MUTED, style = MaterialTheme.typography.titleLarge)
                                    Text(label, color = if (page == label) BLUE else MUTED, style = MaterialTheme.typography.labelSmall)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun MiniStat(label: String, value: String, modifier: Modifier) {
    Column(modifier.background(CARD, RoundedCornerShape(14.dp)).padding(12.dp)) {
        Text(label, color = MUTED, style = MaterialTheme.typography.labelSmall)
        Text(value, color = Color.White, style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.Bold)
    }
}

@Composable
private fun ToolItem(title: String, subtitle: String, onClick: () -> Unit) {
    Row(Modifier.fillMaxWidth().background(CARD, RoundedCornerShape(14.dp)).clickable { onClick() }.padding(15.dp), verticalAlignment = Alignment.CenterVertically) {
        Column(Modifier.weight(1f)) {
            Text(title, color = Color.White, fontWeight = FontWeight.SemiBold)
            Text(subtitle, color = MUTED, style = MaterialTheme.typography.bodySmall)
        }
        Text("›", color = BLUE, style = MaterialTheme.typography.headlineSmall)
    }
}
