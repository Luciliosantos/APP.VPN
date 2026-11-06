package br.com.technet.vpn

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import br.com.technet.vpn.data.VpnProfile
import br.com.technet.vpn.data.VpnConfigParser

class MainActivity : ComponentActivity() {
    private var importHandler: ((String) -> Unit)? = null
    private val jsonPicker = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) contentResolver.openInputStream(uri)?.bufferedReader()?.use { it.readText() }?.let { importHandler?.invoke(it) }
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            var profile by remember { mutableStateOf<VpnProfile?>(null) }
            var selectedId by remember { mutableStateOf<String?>(null) }
            var message by remember { mutableStateOf("Importe seu arquivo de configuração para carregar os servidores.") }
            importHandler = { raw ->
                runCatching { VpnConfigParser.parse(raw) }
                    .onSuccess {
                        profile = it
                        selectedId = it.networks.firstOrNull()?.id
                        message = "Versão " + it.version + " • " + it.networks.size + " conexões • " + it.servers.size + " servidor(es)"
                    }
                    .onFailure { message = "Erro na configuração: " + it.message }
            }
            TechNetScreen(profile, selectedId, message, { selectedId = it }) {
                jsonPicker.launch(arrayOf("application/json", "text/*", "application/octet-stream"))
            }
        }
    }
}

@Composable
private fun TechNetScreen(profile: VpnProfile?, selectedId: String?, message: String, onSelect: (String) -> Unit, onImport: () -> Unit) {
    val cyan = Color(0xFF00D9FF)
    MaterialTheme(colorScheme = darkColorScheme(primary = cyan, background = Color(0xFF07111F), surface = Color(0xFF111E2E))) {
        Surface(Modifier.fillMaxSize(), color = Color(0xFF07111F)) {
            Column(Modifier.fillMaxSize().padding(20.dp), verticalArrangement = Arrangement.spacedBy(13.dp)) {
                Text("TECH NET VPN", style = MaterialTheme.typography.headlineMedium, color = Color.White)
                Text("CENTRAL DE CONEXÕES", color = cyan, style = MaterialTheme.typography.labelMedium)
                Card(colors = CardDefaults.cardColors(containerColor = Color(0xFF111E2E)), shape = RoundedCornerShape(18.dp)) {
                    Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(9.dp)) {
                        Text("Status: DESCONECTADO", color = Color(0xFFFFC857))
                        Text(message, color = Color.LightGray, style = MaterialTheme.typography.bodySmall)
                        Button(onClick = onImport, modifier = Modifier.fillMaxWidth()) { Text("IMPORTAR CONFIGURAÇÃO") }
                    }
                }
                if (profile != null) {
                    Text("SERVIDOR: " + (profile.servers.firstOrNull()?.name ?: "—"), color = Color.White)
                    Text("IP: " + (profile.servers.firstOrNull()?.serverIp ?: "—"), color = Color.Gray)
                    Text("PORTAS UDP: " + profile.udpPorts.joinToString(", "), color = Color.Gray)
                }
                Text("MINHAS CONEXÕES (" + (profile?.networks?.size ?: 0) + ")", color = cyan)
                val networks = profile?.networks.orEmpty()
                if (networks.isEmpty()) {
                    Box(Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) { Text("Nenhuma conexão importada", color = Color.Gray) }
                } else {
                    LazyColumn(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(networks, key = { it.id }) { config ->
                            Card(onClick = { onSelect(config.id) }, colors = CardDefaults.cardColors(containerColor = if (selectedId == config.id) Color(0xFF12354A) else Color(0xFF111E2E))) {
                                Column(Modifier.fillMaxWidth().padding(14.dp), verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                    Text(config.name, color = Color.White)
                                    Text(config.type.toString() + " • " + (config.info ?: "—"), color = cyan, style = MaterialTheme.typography.bodySmall)
                                    if (!config.sni.isNullOrBlank()) Text("SNI: " + config.sni, color = Color.LightGray, style = MaterialTheme.typography.bodySmall)
                                    if (!config.proxyPort.let { it == null }) Text("Proxy: " + (config.proxyIp ?: "automático") + ":" + config.proxyPort, color = Color.LightGray, style = MaterialTheme.typography.bodySmall)
                                }
                            }
                        }
                    }
                }
                Text("Motores de túnel ainda em integração", color = Color.Gray, style = MaterialTheme.typography.labelSmall)
            }
        }
    }
}
