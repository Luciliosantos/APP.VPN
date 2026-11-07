.class public abstract Lnet/sourceforge/jsocks/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static final SOCKS_ADDR_NOT_SUPPORTED:I = 0x8

.field public static final SOCKS_AUTH_FAILURE:I = 0x50000

.field public static final SOCKS_AUTH_NOT_SUPPORTED:I = 0x40000

.field public static final SOCKS_BADCONNECT:I = 0x2

.field public static final SOCKS_BADNETWORK:I = 0x3

.field static final SOCKS_CMD_BIND:I = 0x2

.field public static final SOCKS_CMD_CONNECT:I = 0x1

.field public static final SOCKS_CMD_NOT_SUPPORTED:I = 0x7

.field static final SOCKS_CMD_UDP_ASSOCIATE:I = 0x3

.field public static final SOCKS_CONNECTION_REFUSED:I = 0x5

.field public static final SOCKS_DIRECT_FAILED:I = 0x70000

.field public static final SOCKS_FAILURE:I = 0x1

.field public static final SOCKS_HOST_UNREACHABLE:I = 0x4

.field public static final SOCKS_JUST_ERROR:I = 0x60000

.field public static final SOCKS_METHOD_NOTSUPPORTED:I = 0x80000

.field public static final SOCKS_NO_PROXY:I = 0x10000

.field public static final SOCKS_PROXY_IO_ERROR:I = 0x30000

.field public static final SOCKS_PROXY_NO_CONNECT:I = 0x20000

.field public static final SOCKS_SUCCESS:I = 0x0

.field public static final SOCKS_TTL_EXPIRE:I = 0x6

.field protected static defaultProxy:Lnet/sourceforge/jsocks/Proxy;


# instance fields
.field protected chainProxy:Lnet/sourceforge/jsocks/Proxy;

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field protected proxyHost:Ljava/lang/String;

.field protected proxyIP:Ljava/net/InetAddress;

.field protected proxyPort:I

.field protected proxySocket:Ljava/net/Socket;

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 86
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 98
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 128
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 130
    iput p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 86
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 98
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 104
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 105
    iput p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    return-void
.end method

.method constructor <init>(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 86
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 98
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 109
    iget-object v0, p1, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 110
    iget v0, p1, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    iput v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    .line 111
    iget p1, p1, Lnet/sourceforge/jsocks/Proxy;->version:I

    iput p1, p0, Lnet/sourceforge/jsocks/Proxy;->version:I

    return-void
.end method

.method constructor <init>(Lnet/sourceforge/jsocks/Proxy;Ljava/net/InetAddress;I)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 86
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyHost:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 98
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 115
    iput-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->chainProxy:Lnet/sourceforge/jsocks/Proxy;

    .line 116
    iput-object p2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    .line 117
    iput p3, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    return-void
.end method

.method public static getDefaultProxy()Lnet/sourceforge/jsocks/Proxy;
    .locals 1

    .line 70
    sget-object v0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    return-object v0
.end method

.method public static setDefaultProxy(Lnet/sourceforge/jsocks/Proxy;)V
    .locals 0

    .line 81
    sput-object p0, Lnet/sourceforge/jsocks/Proxy;->defaultProxy:Lnet/sourceforge/jsocks/Proxy;

    return-void
.end method


# virtual methods
.method protected accept()Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 140
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v2, 0x30000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "While Trying accept:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 137
    throw v0
.end method

.method protected bind(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x2

    .line 159
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 163
    throw p1
.end method

.method protected bind(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x2

    .line 148
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 152
    throw p1
.end method

.method protected connect(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 185
    throw p1
.end method

.method protected connect(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 174
    throw p1
.end method

.method protected abstract copy()Lnet/sourceforge/jsocks/Proxy;
.end method

.method protected endSession()V
    .locals 1

    .line 191
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 205
    iget-object p1, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v1, 0x30000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 207
    throw p1
.end method

.method protected abstract formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method protected abstract formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
.end method

.method protected abstract formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 226
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 234
    iget v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    return v0
.end method

.method protected readMsg()Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lnet/sourceforge/jsocks/Proxy;->formMessage(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    return-object v0
.end method

.method protected sendMsg(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 251
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    iget v2, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    .line 252
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->in:Ljava/io/InputStream;

    .line 253
    iget-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->proxySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/sourceforge/jsocks/Proxy;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 v2, 0x30000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 255
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyIP:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Proxy;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sourceforge/jsocks/Proxy;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected udpAssociate(Ljava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x3

    .line 291
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/lang/String;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 301
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x80000

    const-string v0, "This version of proxy does not support UDP associate, use version 5"

    invoke-direct {p1, p2, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 297
    throw p1
.end method

.method protected udpAssociate(Ljava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jsocks/SocksException;
        }
    .end annotation

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->startSession()V

    const/4 v0, 0x3

    .line 274
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jsocks/Proxy;->formMessage(ILjava/net/InetAddress;I)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lnet/sourceforge/jsocks/Proxy;->exchange(Lnet/sourceforge/jsocks/ProxyMessage;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object p1
    :try_end_0
    .catch Lnet/sourceforge/jsocks/SocksException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 284
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/high16 p2, 0x80000

    const-string v0, "This version of proxy does not support UDP associate, use version 5"

    invoke-direct {p1, p2, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p0}, Lnet/sourceforge/jsocks/Proxy;->endSession()V

    .line 280
    throw p1
.end method
