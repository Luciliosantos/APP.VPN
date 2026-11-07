package br.com.technet.vpn.data

import android.content.Context
import java.net.HttpURLConnection
import java.net.URL

object ConfigRepository {
    const val DEFAULT_CONFIG_URL = "https://paste.lsnet.shop/raw/qfDPu0C8xwhV"
    private const val PREFS = "technet_config"
    private const val RAW_CONFIG = "raw_config"

    fun cached(context: Context): String? =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(RAW_CONFIG, null)

    fun save(context: Context, raw: String) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit().putString(RAW_CONFIG, raw).apply()
    }

    fun download(configUrl: String): String {
        require(configUrl.startsWith("https://")) { "A URL da configuração precisa usar HTTPS" }
        val connection = (URL(configUrl).openConnection() as HttpURLConnection).apply {
            requestMethod = "GET"
            connectTimeout = 15000
            readTimeout = 20000
            setRequestProperty("Accept", "application/json")
            setRequestProperty("Cache-Control", "no-cache")
        }
        try {
            val code = connection.responseCode
            if (code !in 200..299) throw IllegalStateException("Servidor de configuração respondeu HTTP $code")
            return connection.inputStream.bufferedReader(Charsets.UTF_8).use { it.readText() }
                .also { if (it.isBlank()) throw IllegalStateException("Configuração remota vazia") }
        } finally {
            connection.disconnect()
        }
    }
}
