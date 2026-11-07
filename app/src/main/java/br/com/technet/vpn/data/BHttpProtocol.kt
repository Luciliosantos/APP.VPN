package br.com.technet.vpn.data

import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.MessageDigest
import java.security.SecureRandom
import javax.net.ssl.SSLSocketFactory

/**
 * BHTTP v1 wire-protocol probe compatible with the supplied BHTTP.py server.
 * This validates the endpoint and cipher framing; it is not the VPN/TUN data plane.
 */
object BHttpProtocol {
    private const val MODE_PROBE = 0
    private const val STATUS_OK = 0
    private const val HEADER_SIZE = 29

    data class ProbeResult(val ok: Boolean, val message: String)

    fun probe(host: String, port: Int, tls: Boolean, timeoutMs: Int = 7000): ProbeResult {
        require(host.isNotBlank()) { "Servidor BHTTP não informado" }
        require(port in 1..65535) { "Porta BHTTP inválida" }

        val sid = ByteArray(16).also { SecureRandom().nextBytes(it) }
        val seq = 0L
        val clear = ByteBuffer.allocate(10).order(ByteOrder.BIG_ENDIAN)
            .put(byteArrayOf(0x42, 0x48, 0x50, 0x31)) // BHP1
            .put(1.toByte())
            .put(MODE_PROBE.toByte())
            .putInt(0)
            .array()
        val encrypted = crypt(clear, sid, MODE_PROBE, seq, false)
        val frame = ByteBuffer.allocate(HEADER_SIZE + encrypted.size).order(ByteOrder.BIG_ENDIAN)
            .put(MODE_PROBE.toByte())
            .put(sid)
            .putLong(seq)
            .putInt(encrypted.size)
            .put(encrypted)
            .array()

        val socket: Socket = if (tls) {
            SSLSocketFactory.getDefault().createSocket() as Socket
        } else Socket()

        socket.use { s ->
            s.connect(InetSocketAddress(host, port), timeoutMs)
            s.soTimeout = timeoutMs
            if (tls) (s as javax.net.ssl.SSLSocket).startHandshake()
            val output = BufferedOutputStream(s.getOutputStream())
            output.write(frame)
            output.flush()

            val input = BufferedInputStream(s.getInputStream())
            val responseHeader = readFully(input, 5)
            val status = responseHeader[0].toInt() and 0xff
            val length = ByteBuffer.wrap(responseHeader, 1, 4).order(ByteOrder.BIG_ENDIAN).int
            if (length < 0 || length > 524288) return ProbeResult(false, "Resposta BHTTP inválida")
            val body = readFully(input, length)
            if (status != STATUS_OK) {
                val detail = body.toString(Charsets.UTF_8).take(120)
                return ProbeResult(false, if (detail.isBlank()) "Servidor recusou o teste (status $status)" else detail)
            }
            val decoded = crypt(body, sid, MODE_PROBE, seq, true)
            if (decoded.size < 10 || !decoded.copyOfRange(0, 4).contentEquals(byteArrayOf(0x42, 0x48, 0x50, 0x31)) || decoded[4].toInt() != 1) {
                return ProbeResult(false, "Resposta não corresponde ao protocolo BHTTP v1")
            }
            return ProbeResult(true, "Servidor respondeu ao teste BHTTP v1")
        }
    }

    private fun readFully(input: BufferedInputStream, size: Int): ByteArray {
        val result = ByteArray(size)
        var offset = 0
        while (offset < size) {
            val count = input.read(result, offset, size - offset)
            if (count < 0) throw java.io.EOFException("Conexão encerrada durante resposta BHTTP")
            offset += count
        }
        return result
    }

    private fun crypt(data: ByteArray, sid: ByteArray, mode: Int, seq: Long, receiver: Boolean): ByteArray {
        if (data.isEmpty()) return data
        val seed = ByteBuffer.allocate(26).order(ByteOrder.BIG_ENDIAN)
            .put(sid.copyOf(16))
            .put(mode.toByte())
            .putLong(seq)
            .put(if (receiver) 1 else 0)
            .array()
        val digest = MessageDigest.getInstance("SHA-256")
        val output = ByteArray(data.size)
        var offset = 0
        var counter = 0
        while (offset < data.size) {
            digest.reset()
            val block = digest.digest(seed + ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(counter).array())
            val count = minOf(block.size, data.size - offset)
            for (i in 0 until count) output[offset + i] = (data[offset + i].toInt() xor block[i].toInt()).toByte()
            offset += count
            counter++
        }
        return output
    }
}
