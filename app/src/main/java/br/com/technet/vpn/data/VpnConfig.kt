package br.com.technet.vpn.data

import org.json.JSONArray
import org.json.JSONObject

enum class TransportType { SSH, SSL, TLS, WEBSOCKET, HTTP_PROXY, PAYLOAD, BHTTP, XHTTP, UNKNOWN }

data class VpnServer(
    val name: String,
    val type: String,
    val flag: String?,
    val serverIp: String,
    val serverPort: Int,
    val sslPort: Int?,
    val checkUser: String?
)

data class VpnConfig(
    val id: String,
    val name: String,
    val flag: String?,
    val type: TransportType,
    val info: String?,
    val payload: String?,
    val sni: String?,
    val tlsIp: String?,
    val proxyIp: String?,
    val proxyPort: Int?,
    val raw: JSONObject
)

data class VpnProfile(
    val version: String,
    val releaseNotes: String?,
    val smsUrl: String?,
    val updateUrl: String?,
    val checkUser: Boolean,
    val udpPorts: List<Int>,
    val servers: List<VpnServer>,
    val networks: List<VpnConfig>
)

object VpnConfigParser {
    fun parse(json: String): VpnProfile {
        val root = JSONObject(json)
        val serversArray = root.optJSONArray("Servers") ?: JSONArray()
        val networksArray = root.optJSONArray("Networks") ?: JSONArray()
        val udpArray = root.optJSONArray("Udp") ?: JSONArray()

        val servers = (0 until serversArray.length()).mapNotNull { i ->
            val item = serversArray.optJSONObject(i) ?: return@mapNotNull null
            val serverIp = item.optString("ServerIP").trim()
            if (serverIp.isEmpty()) return@mapNotNull null
            VpnServer(
                name = item.optString("Name", "Servidor"),
                type = item.optString("TYPE", "standard"),
                flag = item.optString("FLAG").takeIf { it.isNotBlank() },
                serverIp = serverIp,
                serverPort = item.optInt("ServerPort", 22),
                sslPort = item.optInt("SSLPort").takeIf { it in 1..65535 },
                checkUser = item.optString("CheckUser").takeIf { it.isNotBlank() }
            )
        }

        val networks = (0 until networksArray.length()).mapNotNull { i ->
            val item = networksArray.optJSONObject(i) ?: return@mapNotNull null
            val info = item.optString("Info").trim()
            val type = when (info.uppercase()) {
                "PROXY" -> TransportType.HTTP_PROXY
                "TLS", "SSL" -> TransportType.TLS
                "SSH" -> TransportType.SSH
                "WEBSOCKET", "WS" -> TransportType.WEBSOCKET
                "BHTTP" -> TransportType.BHTTP
                "XHTTP" -> TransportType.XHTTP
                "PAYLOAD" -> TransportType.PAYLOAD
                else -> if (item.optString("SNI").isNotBlank()) TransportType.TLS else TransportType.UNKNOWN
            }
            VpnConfig(
                id = "network-$i",
                name = item.optString("Name", "Conexão " + (i + 1)),
                flag = item.optString("FLAG").takeIf { it.isNotBlank() },
                type = type,
                info = info.takeIf { it.isNotBlank() },
                payload = item.optString("Payload").takeIf { it.isNotBlank() },
                sni = item.optString("SNI").takeIf { it.isNotBlank() },
                tlsIp = item.optString("TlsIP").takeIf { it.isNotBlank() },
                proxyIp = item.optString("ProxyIP").takeIf { it.isNotBlank() },
                proxyPort = item.optString("ProxyPort").toIntOrNull()?.takeIf { it in 1..65535 },
                raw = item
            )
        }

        val udpPorts = (0 until udpArray.length()).mapNotNull { i ->
            udpArray.optJSONObject(i)?.optString("Porta")?.toIntOrNull()?.takeIf { it in 1..65535 }
        }.distinct()

        if (servers.isEmpty()) throw IllegalArgumentException("Nenhum servidor válido encontrado em Servers")
        if (networks.isEmpty()) throw IllegalArgumentException("Nenhuma conexão válida encontrada em Networks")

        return VpnProfile(
            version = root.optString("Version", "1.0.0"),
            releaseNotes = root.optString("ReleaseNotes").takeIf { it.isNotBlank() },
            smsUrl = root.optString("Sms").takeIf { it.isNotBlank() },
            updateUrl = root.optString("UrlUpdate").takeIf { it.isNotBlank() },
            checkUser = root.optString("CheckUser", "0") == "1",
            udpPorts = udpPorts,
            servers = servers,
            networks = networks
        )
    }
}
