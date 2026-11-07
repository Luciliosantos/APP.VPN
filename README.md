# Conecta4G - APK extraído

Este repositório contém a extração técnica do APK Conecta4G enviado pelo proprietário.

## Conteúdo
- AndroidManifest.xml, recursos, assets e arquivos Smali recuperados com Apktool.
- release/original/Conecta4G-base.apk: APK original fornecido.
- release/original/Conecta4G-extracao.zip: pacote de extração inicial.

## Identificação
- Package: com.conecta4g.vpn
- Serviço VPN: com.romzkie.ultrasshservice.tunnel.vpn.TunnelVpnService

## Limitação importante
O APK não contém o projeto Android Studio original. A extração recupera manifesto, recursos, assets e bytecode em Smali; não recupera integralmente os fontes Java/Kotlin originais, histórico, comentários ou configuração Gradle. Para reconstruir um projeto Android compilável, será necessário fazer engenharia reversa adicional e recriar a estrutura Gradle.

## Ferramenta
Extração de recursos e bytecode realizada com Apktool.
