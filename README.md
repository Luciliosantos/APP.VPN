# TECH NET VPN — Android

Aplicativo Android nativo em Kotlin + Jetpack Compose para importar configurações JSON.

## Implementado nesta primeira base
- Estrutura Android nativa.
- Importador inicial JSON (listas connections, configs, servers e content).
- Modelo de conexão com SSH, SSL/TLS, WebSocket, HTTP Proxy, Payload, BHTTP e XHTTP.
- Serviço Android VpnService registrado como ponto de integração.

## Ainda não implementado
Os motores de transporte e o encaminhamento real do tráfego pelo TUN ainda precisam ser integrados e testados. A interface não simula uma VPN conectada.

## Build
Requer JDK 17, Android SDK API 35 e Gradle 8.9 ou superior.
