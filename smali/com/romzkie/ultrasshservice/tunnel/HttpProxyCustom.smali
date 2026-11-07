.class public Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;
.super Ljava/lang/Object;
.source "HttpProxyCustom.java"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# instance fields
.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mContext:Landroid/content/Context;

.field private modoDropbear:Z

.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestPayload:Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 56
    invoke-direct/range {v0 .. v7}, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->modoDropbear:Z

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 65
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyHost:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyPort:I

    .line 67
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyUser:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyPass:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->requestPayload:Ljava/lang/String;

    .line 70
    iput-boolean p6, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->modoDropbear:Z

    .line 71
    iput-object p7, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mContext:Landroid/content/Context;

    .line 73
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p7}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyPort must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyHost must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->requestPayload:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "app_host"

    invoke-virtual {v1, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v3, "app_host_proxy"

    invoke-virtual {v2, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1, v1, v2, p2, v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->formatCustomPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CONNECT "

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " HTTP/1.0\r\n"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyUser:Ljava/lang/String;

    const-string p2, "\r\n"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyPass:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyUser:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyPass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "ISO-8859-1"

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    :goto_0
    const-string v1, "Proxy-Authorization: Basic "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    .line 80
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->proxyPort:I

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 82
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    invoke-virtual {p3, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 84
    sget p3, Lcom/romzkie/ultrasshservice/R$string;->state_proxy_running:I

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->isActiveVpn(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "</strong>"

    const-string v0, "<strong>"

    if-nez p2, :cond_a

    .line 95
    sget p2, Lcom/romzkie/ultrasshservice/R$string;->state_proxy_inject:I

    new-array v1, p4, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 97
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 100
    invoke-static {p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v1

    const-string v2, "ISO-8859-1"

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 110
    :cond_0
    iget-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->modoDropbear:Z

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    return-object p1

    :cond_1
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 115
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 118
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v1

    .line 122
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p4, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p4, v1}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    const/16 v1, 0x9

    const/16 v4, 0xc

    .line 127
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const/16 p3, 0xc8

    if-ne v5, p3, :cond_2

    .line 131
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-ne v5, v0, :cond_3

    const-string p1, "<b>HTTP/1.1 200 Connection established</b>"

    .line 133
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    return-object p1

    :cond_3
    move-object v0, v3

    .line 139
    :goto_2
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1, p4, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 144
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 149
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    :cond_5
    const-string p1, "HTTP/"

    .line 151
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "The proxy did not send back a valid HTTP response."

    if-eqz p1, :cond_9

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p4, 0xe

    if-lt p1, p4, :cond_8

    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p4, 0x20

    if-ne p1, p4, :cond_8

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_8

    .line 155
    :try_start_3
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_7

    const/16 p4, 0x3e7

    if-gt p1, p4, :cond_7

    if-ne p1, p3, :cond_6

    .line 161
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->sock:Ljava/net/Socket;

    return-object p1

    .line 159
    :cond_6
    new-instance p3, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 p4, 0xd

    invoke-virtual {v3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 157
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    :catch_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;->mContext:Landroid/content/Context;

    sget p4, Lcom/romzkie/ultrasshservice/R$string;->error_vpn_sniffer_detected:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 92
    new-instance p1, Ljava/io/IOException;

    const-string p2, "error detected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
