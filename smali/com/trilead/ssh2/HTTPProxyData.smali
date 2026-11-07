.class public Lcom/trilead/ssh2/HTTPProxyData;
.super Ljava/lang/Object;
.source "HTTPProxyData.java"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# instance fields
.field private final proxyHost:Ljava/lang/String;

.field private final proxyPass:Ljava/lang/String;

.field private final proxyPort:I

.field private final proxyUser:Ljava/lang/String;

.field private final requestHeaderLines:[Ljava/lang/String;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 92
    iput-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 93
    iput p2, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    .line 94
    iput-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyPort must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxyHost must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    .line 103
    iget-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    invoke-direct {v2, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 105
    iget-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    invoke-virtual {p3, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 109
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "CONNECT "

    .line 111
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3a

    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " HTTP/1.0\r\n"

    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    const-string p2, "ISO-8859-1"

    const-string p4, "\r\n"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    :goto_0
    const-string v0, "Proxy-Authorization: Basic "

    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 135
    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    .line 137
    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 148
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 150
    :catch_1
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 152
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 157
    iget-object p3, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    .line 159
    invoke-static {p3, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result p4

    .line 163
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, p4, p2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 165
    :catch_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0, p4}, Ljava/lang/String;-><init>([BII)V

    :goto_3
    const-string p2, "HTTP/"

    .line 168
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const-string p4, "The proxy did not send back a valid HTTP response."

    if-eqz p2, :cond_7

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xe

    if-lt p2, v0, :cond_6

    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x20

    if-ne p2, v0, :cond_6

    const/16 p2, 0xc

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_6

    const/16 v0, 0x9

    .line 180
    :try_start_3
    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    if-ltz p2, :cond_5

    const/16 v0, 0x3e7

    if-gt p2, v0, :cond_5

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_4

    .line 199
    :cond_3
    invoke-static {p3, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result p2

    if-nez p2, :cond_3

    .line 204
    iget-object p1, p0, Lcom/trilead/ssh2/HTTPProxyData;->sock:Ljava/net/Socket;

    return-object p1

    .line 192
    :cond_4
    new-instance p1, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 p3, 0xd

    invoke-virtual {v1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 188
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :catch_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
