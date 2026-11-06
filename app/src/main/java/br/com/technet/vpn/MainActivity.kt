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
import br.com.technet.vpn.data.VpnConfig
import br.com.technet.vpn.data.VpnConfigParser

class MainActivity : ComponentActivity() {
    private var importHandler: ((String) -> Unit)? = null
    private val jsonPicker = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) contentResolver.openInputStream(uri)?.bufferedReader()?.use { it.readText() }?.let { importHandler?.invoke(it) }
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            var configs by remember { mutableStateOf<List<VpnConfig>>(emptyList()) }
            var selected by remember { mutableStateOf<String?>(null) }
            var message by remember { mutableStateOf("Importe seu arquivo JSON para carregar as conexões.") }
            importHandler = { raw ->
                runCatching { VpnConfigParser.parse(raw) }
                    .onSuccess { configs = it; selected = it.firstOrNull()?.id; message = it.size.toString() + " conexão(ões) importada(s)." }
                    .onFailure { message = "Erro no JSON: " + it.message }
            }
            TechNetScreen(configs, selected, message, { selected = it }) {
                jsonPicker.launch(arrayOf("application/json", "text/*", "application/octet-stream"))
            }
        }
    }
}

@Composable
private fun TechNetScreen(configs: List<VpnConfig>, selectedId: String?, message: String, onSelect: (String) -> Unit, onImport: () -> Unit) {
    val cyan = Color(0xFF00D9FF)
    MaterialTheme(colorScheme = darkColorScheme(primary = cyan, background = Color(0xFF07111F), surface = Color(0xFF111E2E))) {
        Surface(Modifier.fillMaxSize(), color = Color(0xFF07111F)) {
            Column(Modifier.fillMaxSize().padding(20.dp), verticalArrangement = Arrangement.spacedBy(15.dp)) {
                Text("TECH NET VPN", style = MaterialTheme.typography.headlineMedium, color = Color.White)
                Text("CENTRAL DE CONEXÕES", color = cyan, style = MaterialTheme.typography.labelMedium)
                Card(colors = CardDefaults.cardColors(containerColor = Color(0xFF111E2E)), shape = RoundedCornerShape(18.dp)) {
                    Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(9.dp)) {
                        Text("Status: DESCONECTADO", color = Color(0xFFFFC857))
                        Text(message, color = Color.LightGray, style = MaterialTheme.typography.bodySmall)
                        Button(onClick = onImport, modifier = Modifier.fillMaxWidth()) { Text("IMPORTAR JSON") }
                    }
                }
                Text("PROTOCOLOS PREVISTOS", color = cyan)
                Text("SSH • SSL/TLS • WebSocket • Proxy • Payload • BHTTP • XHTTP", color = Color.LightGray)
                Text("MINHAS CONEXÕES (" + configs.size + ")", color = Color.White)
                if (configs.isEmpty()) {
                    Box(Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) { Text("Nenhuma conexão importada", color = Color.Gray) }
                } else {
                    LazyColumn(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(configs, key = { it.id }) { config ->
                            Card(onClick = { onSelect(config.id) }, colors = CardDefaults.cardColors(containerColor = if (selectedId == config.id) Color(0xFF12354A) else Color(0xFF111E2E))) {
                                Column(Modifier.fillMaxWidth().padding(14.dp)) {
                                    Text(config.name, color = Color.White)
                                    Text(config.type.toString() + " • " + (config.host ?: "host não informado") + (config.port?.let { ":$it" } ?: ""), color = cyan, style = MaterialTheme.typography.bodySmall)
                                }
                            }
                        }
                    }
                }
                Text("Versão inicial • motores de túnel em desenvolvimento", color = Color.Gray, style = MaterialTheme.typography.labelSmall)
            }
        }
    }
}
