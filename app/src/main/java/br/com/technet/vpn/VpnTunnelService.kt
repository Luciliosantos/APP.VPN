package br.com.technet.vpn

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Intent
import android.net.VpnService
import android.os.Build
import android.os.ParcelFileDescriptor
import androidx.core.app.NotificationCompat
import br.com.technet.vpn.engine.HevBridge
import com.trilead.ssh2.Connection
import com.trilead.ssh2.DynamicPortForwarder
import java.io.File
import java.security.MessageDigest
import android.util.Base64

/** SSH password tunnel feeding the local SOCKS5 listener consumed by hev-socks5-tunnel. */
class VpnTunnelService : VpnService() {
    @Volatile private var tun: ParcelFileDescriptor? = null
    @Volatile private var ssh: Connection? = null
    @Volatile private var socks: DynamicPortForwarder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action == ACTION_STOP) {
            stopTunnel()
            reportStatus("OFFLINE")
            stopForeground(STOP_FOREGROUND_REMOVE)
            stopSelf()
            return START_NOT_STICKY
        }
        val host = intent?.getStringExtra(EXTRA_HOST).orEmpty()
        val port = intent?.getIntExtra(EXTRA_PORT, 22) ?: 22
        val username = intent?.getStringExtra(EXTRA_USER).orEmpty()
        val password = intent?.getStringExtra(EXTRA_PASS).orEmpty()
        if (host.isBlank() || username.isBlank() || password.isBlank()) {
            stopSelf()
            return START_NOT_STICKY
        }
        reportStatus("CONECTANDO")
        startForeground(NOTIFICATION_ID, notification("Conectando ao servidor..."))
        Thread {
            try {
                val connection = Connection(host, port)
                ssh = connection
                connection.connect({ hostname, serverPort, _, hostKey ->
                    val fingerprint = "SHA256:" + Base64.encodeToString(
                        MessageDigest.getInstance("SHA-256").digest(hostKey), Base64.NO_WRAP or Base64.NO_PADDING
                    )
                    val prefs = getSharedPreferences("technet_security", MODE_PRIVATE)
                    val key = "hostkey:$hostname:$serverPort"
                    val known = prefs.getString(key, null)
                    if (known == null) prefs.edit().putString(key, fingerprint).apply()
                    known == null || known == fingerprint
                }, 15000, 15000)
                if (!connection.authenticateWithPassword(username, password)) {
                    throw IllegalStateException("Login ou senha recusados pelo servidor")
                }
                socks = connection.createDynamicPortForwarder(1080)
                updateNotification("SSH autenticado • iniciando VPN")
                val builder = Builder()
                    .setSession("TECH NET VPN")
                    .setMtu(1400)
                    .addAddress("198.18.0.1", 32)
                    .addRoute("0.0.0.0", 0)
                    .addDnsServer("1.1.1.1")
                    .addDnsServer("8.8.8.8")
                val descriptor = builder.establish() ?: throw IllegalStateException("Android não autorizou a VPN")
                tun = descriptor
                val config = File(cacheDir, "hev-socks5-tunnel.yml")
                config.writeText("""
                    tunnel:
                      name: tun0
                      mtu: 1400
                      multi-queue: false
                      ipv4: 198.18.0.1
                      ipv6: ''
                    socks5:
                      port: 1080
                      address: 127.0.0.1
                      udp: 'udp'
                    misc:
                      log-level: warn
                """.trimIndent())
                HevBridge.start(config.absolutePath, descriptor.fd)
                updateNotification("Conectado • TECH NET VPN")
                reportStatus("CONECTADO")
            } catch (error: Exception) {
                stopTunnel()
                updateNotification("Falha: ${error.message ?: "não foi possível conectar"}")
                reportStatus("ERRO: ${error.message ?: "falha na conexão"}")
                stopForeground(STOP_FOREGROUND_DETACH)
                stopSelf()
            }
        }.start()
        return START_NOT_STICKY
    }

    private fun stopTunnel() {
        runCatching { HevBridge.stop() }
        runCatching { socks?.close() }
        socks = null
        runCatching { ssh?.close() }
        ssh = null
        runCatching { tun?.close() }
        tun = null
    }

    private fun notification(text: String): Notification {
        val channelId = "technet_vpn_status"
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(channelId, "TECH NET VPN", NotificationManager.IMPORTANCE_LOW)
            getSystemService(NotificationManager::class.java).createNotificationChannel(channel)
        }
        return NotificationCompat.Builder(this, channelId)
            .setSmallIcon(android.R.drawable.stat_sys_warning)
            .setContentTitle("TECH NET VPN")
            .setContentText(text)
            .setOngoing(text.contains("Conectado"))
            .build()
    }

    private fun reportStatus(status: String) {
        sendBroadcast(Intent(ACTION_STATUS).setPackage(packageName).putExtra(EXTRA_STATUS, status))
    }

    private fun updateNotification(text: String) {
        getSystemService(NotificationManager::class.java).notify(NOTIFICATION_ID, notification(text))
    }

    override fun onDestroy() {
        stopTunnel()
        super.onDestroy()
    }

    companion object {
        const val ACTION_STOP = "br.com.technet.vpn.STOP"
        const val EXTRA_HOST = "host"
        const val EXTRA_PORT = "port"
        const val EXTRA_USER = "username"
        const val EXTRA_PASS = "password"
        const val ACTION_STATUS = "br.com.technet.vpn.STATUS"
        const val EXTRA_STATUS = "status"
        private const val NOTIFICATION_ID = 7410
    }
}
