.class public Lnet/sourceforge/jsocks/Socks5Message;
.super Lnet/sourceforge/jsocks/ProxyMessage;
.source "Socks5Message.java"


# static fields
.field public static final SOCKS_ATYP_DOMAINNAME:I = 0x3

.field public static final SOCKS_ATYP_IPV4:I = 0x1

.field public static final SOCKS_ATYP_IPV6:I = 0x4

.field public static final SOCKS_IPV6_LENGTH:I = 0x10

.field public static final SOCKS_VERSION:I = 0x5

.field static doResolveIP:Z = true


# instance fields
.field public addrType:I

.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 98
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    const/4 p1, 0x2

    aput-byte v1, v0, p1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    .line 157
    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    const/4 p1, 0x5

    .line 158
    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    const/4 v0, 0x3

    .line 162
    iput v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 165
    array-length v1, p2

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v2, 0x0

    .line 166
    aput-byte p1, v1, v2

    .line 167
    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    .line 168
    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 169
    aput-byte v0, v1, v0

    .line 170
    array-length v0, p2

    int-to-byte v0, v0

    const/4 v5, 0x4

    aput-byte v0, v1, v5

    .line 173
    array-length v0, p2

    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length p2, p1

    sub-int/2addr p2, v3

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 176
    array-length p2, p1

    sub-int/2addr p2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;I)V
    .locals 6

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>(ILjava/net/InetAddress;I)V

    if-nez p2, :cond_0

    const-string p1, "0.0.0.0"

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    const/4 p1, 0x5

    .line 116
    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    const/4 v0, 0x4

    if-nez p2, :cond_1

    new-array p2, v0, [B

    .line 121
    fill-array-data p2, :array_0

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    .line 126
    :goto_1
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    iput v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    .line 128
    array-length v1, p2

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v3, 0x0

    .line 129
    aput-byte p1, v1, v3

    .line 130
    iget p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 131
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    const/4 v1, 0x2

    aput-byte v3, p1, v1

    const/4 v4, 0x3

    .line 132
    iget v5, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 135
    array-length v4, p2

    invoke-static {p2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    array-length p2, p1

    sub-int/2addr p2, v1

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 138
    array-length p2, p1

    sub-int/2addr p2, v2

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lnet/sourceforge/jsocks/ProxyMessage;-><init>()V

    .line 87
    invoke-virtual {p0, p1, p2}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public static resolveIP()Z
    .locals 1

    .line 38
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return v0
.end method

.method public static resolveIP(Z)Z
    .locals 1

    .line 50
    sget-boolean v0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    .line 51
    sput-boolean p0, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    return v0
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lnet/sourceforge/jsocks/Socks5Message;->read(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public read(Ljava/io/InputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 228
    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    .line 230
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    .line 233
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    if-eqz p2, :cond_1

    .line 234
    iget p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    iget p2, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    invoke-direct {p1, p2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 239
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, p2, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 251
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 252
    invoke-static {p1, v1}, Lnet/sourceforge/jsocks/Socks5Message;->bytes2IPV6([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    goto :goto_1

    .line 261
    :cond_2
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x60000

    invoke-direct {p1, p2}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 256
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    new-array p1, p1, [B

    .line 257
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 258
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array p1, v2, [B

    .line 246
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    invoke-static {p1, v1}, Lnet/sourceforge/jsocks/Socks5Message;->bytes2IPV4([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    .line 264
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    .line 266
    iget p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    if-eq p1, v3, :cond_5

    sget-boolean p1, Lnet/sourceforge/jsocks/Socks5Message;->doResolveIP:Z

    if-eqz p1, :cond_5

    .line 268
    :try_start_0
    iget-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socks5Message:\nVN   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nCMD  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nATYP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nADDR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    if-nez v0, :cond_2

    .line 296
    iget v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->addrType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 297
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/lang/String;I)V

    goto :goto_1

    .line 299
    :cond_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 301
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v0, 0x60000

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 306
    :cond_1
    :goto_0
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    iget v1, p0, Lnet/sourceforge/jsocks/Socks5Message;->command:I

    iget-object v2, p0, Lnet/sourceforge/jsocks/Socks5Message;->ip:Ljava/net/InetAddress;

    iget v3, p0, Lnet/sourceforge/jsocks/Socks5Message;->port:I

    invoke-direct {v0, v1, v2, v3}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 308
    :goto_1
    iget-object v0, v0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    iput-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    .line 310
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jsocks/Socks5Message;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
