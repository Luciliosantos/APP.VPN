.class public Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;
.super Ljava/lang/Object;
.source "SSLProxy.java"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mContext:Landroid/content/Context;

.field private mSocket:Ljava/net/Socket;

.field private modoDropbear:Z

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestPayload:Ljava/lang/String;

.field private stunnelHostSNI:Ljava/lang/String;

.field private stunnelPort:I

.field private stunnelServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProvider()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->modoDropbear:Z

    const/16 v0, 0x1bb

    .line 73
    iput v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelPort:I

    .line 90
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelServer:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelPort:I

    .line 92
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelHostSNI:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyHost:Ljava/lang/String;

    .line 96
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyPort:I

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyUser:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyPass:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->requestPayload:Ljava/lang/String;

    .line 100
    iput-boolean p5, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->modoDropbear:Z

    .line 101
    iput-object p6, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mContext:Landroid/content/Context;

    .line 102
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p6}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-void
.end method

.method private doSSLHandshake(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/net/ssl/TrustManager;

    .line 241
    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$1;

    invoke-direct {v2, p0}, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 259
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    const-string v2, "TLS"

    const-string v4, "Conscrypt"

    .line 260
    invoke-static {v2, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    new-array v4, v0, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v4, v3

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v2, v1, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 263
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;

    invoke-direct {v1}, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;-><init>()V

    .line 264
    invoke-virtual {v1, p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHostname"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string p2, "Configurando SNI..."

    .line 280
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 284
    new-instance p2, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;-><init>(Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;Ljava/lang/String;ILjavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, p2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    const-string p1, "Iniciando SSL Handshake..."

    .line 285
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 289
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "N\u00e3o foi poss\u00edvel concluir SSL handshake: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 290
    throw p2
.end method

.method private getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->requestPayload:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "app_host"

    invoke-virtual {v1, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v3, "app_host_proxy"

    invoke-virtual {v2, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1, v1, v2, p2, v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->formatCustomPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CONNECT "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " HTTP/1.0\r\n"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyUser:Ljava/lang/String;

    const-string p2, "\r\n"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyPass:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyUser:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->proxyPass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "ISO-8859-1"

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    :goto_0
    const-string v1, "Proxy-Authorization: Basic "

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p3

    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 112
    new-instance p4, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelServer:Ljava/lang/String;

    iget v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelPort:I

    invoke-direct {p4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 114
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 115
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelHostSNI:Ljava/lang/String;

    iget p4, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->stunnelPort:I

    invoke-direct {p0, p1, p3, p4}, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->doSSLHandshake(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;

    move-result-object p3

    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    const/4 p4, 0x1

    .line 116
    invoke-virtual {p3, p4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 117
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p3, p4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 120
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 125
    invoke-static {p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result p3

    const-string p4, "ISO-8859-1"

    if-nez p3, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 131
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 135
    :cond_1
    iget-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->modoDropbear:Z

    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    return-object p1

    :cond_2
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 140
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 143
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result p3

    const/4 v0, 0x0

    .line 147
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, p3, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 149
    :catch_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, p3}, Ljava/lang/String;-><init>([BII)V

    .line 151
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<strong>"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</strong>"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const/16 p3, 0x9

    const/16 v2, 0xc

    .line 155
    invoke-virtual {v1, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 158
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    return-object p1

    :cond_3
    const/16 v5, 0x65

    if-ne v3, v5, :cond_4

    const-string p1, "<b>HTTP/1.1 200 Connection established</b>"

    .line 160
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    return-object p1

    :cond_4
    move-object v3, v1

    .line 168
    :goto_2
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1, v0, v5, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 173
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 178
    invoke-static {v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    :cond_6
    const-string p1, "HTTP/"

    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "The proxy did not send back a valid HTTP response."

    if-eqz p1, :cond_a

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p4, 0xe

    if-lt p1, p4, :cond_9

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p4, 0x20

    if-ne p1, p4, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_9

    .line 184
    :try_start_3
    invoke-virtual {v1, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_8

    const/16 p3, 0x3e7

    if-gt p1, p3, :cond_8

    if-ne p1, v4, :cond_7

    .line 190
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    return-object p1

    .line 188
    :cond_7
    new-instance p3, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 p4, 0xd

    invoke-virtual {v1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 186
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    :catch_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
