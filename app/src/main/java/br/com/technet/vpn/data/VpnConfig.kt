package br.com.technet.vpn.data

import org.json.JSONArray
import org.json.JSONObject

enum class TransportType { SSH, SSL, TLS, WEBSOCKET, HTTP_PROXY, PAYLOAD, BHTTP, XHTTP, UNKNOWN }

data class VpnConfig(
    val id: String, val name: String, val type: TransportType,
    val host: String? = null, val port: Int? = null, val sni: String? = null,
    val proxyHost: String? = null, val proxyPort: Int? = null,
    val payload: String? = null, val raw: JSONObject
)

object VpnConfigParser {
    fun parse(json: String): List<VpnConfig> {
        val root = JSONObject(json)
        val array = when {
            root.has("connections") -> root.optJSONArray("connections")
            root.has("configs") -> root.optJSONArray("configs")
            root.has("servers") -> root.optJSONArray("servers")
            root.has("content") && root.opt("content") is JSONArray -> root.optJSONArray("content")
            else -> null
        } ?: throw IllegalArgumentException("JSON sem lista connections/configs/servers")
        val result = mutableListOf<VpnConfig>()
        for (i in 0 until array.length()) {
            val item = array.optJSONObject(i) ?: continue
            val rawType = item.optString("type", item.optString("mode", "UNKNOWN")).uppercase().replace('-', '_').replace(' ', '_')
            val type = runCatching { TransportType.valueOf(rawType) }.getOrDefault(TransportType.UNKNOWN)
            result += VpnConfig(
                id = item.optString("id", "import-$i"),
                name = item.optString("name", item.optString("title", "Conexão " + (i + 1))),
                type = type,
                host = item.optString("host").takeIf { it.isNotBlank() },
                port = item.optInt("port").takeIf { it in 1..65535 },
                sni = item.optString("sni").takeIf { it.isNotBlank() },
                proxyHost = item.optString("proxyHost").takeIf { it.isNotBlank() },
                proxyPort = item.optInt("proxyPort").takeIf { it in 1..65535 },
                payload = item.optString("payload").takeIf { it.isNotBlank() },
                raw = item
            )
        }
        if (result.isEmpty()) throw IllegalArgumentException("Nenhuma conexão válida encontrada no JSON")
        return result
    }
}
