package br.com.technet.vpn
import android.net.VpnService

/**
 * Ponto de integração do serviço VPN Android.
 * Não cria interface TUN até que um motor de transporte real seja integrado e testado.
 */
class VpnTunnelService : VpnService()
