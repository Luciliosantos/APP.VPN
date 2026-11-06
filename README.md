# TECH NET VPN — Android

Aplicativo Android nativo em Kotlin + Jetpack Compose.

## Formato de configuração compatível
- Metadados: Version, ReleaseNotes, Sms, UrlUpdate, CheckUser.
- Servidores: Servers (Name, TYPE, FLAG, ServerIP, ServerPort, SSLPort, CheckUser).
- Conexões: Networks (Name, FLAG, Payload, SNI, TlsIP, ProxyIP, ProxyPort, Info).
- Portas UDP: Udp[].Porta.
- Quantidade de Networks e servidores não é fixa; importa as entradas válidas encontradas no JSON.

## Implementado
- Interface inicial.
- Leitura do formato de configuração TECH NET VPN/TeleMax enviado pelo usuário.
- Lista de conexões, identificação de protocolo pelo campo Info e exibição de SNI/proxy.
- Serviço Android VpnService registrado.

## Pendente
Motores de transporte reais e encaminhamento TUN ainda não foram integrados. O app não simula conexão ativa.
