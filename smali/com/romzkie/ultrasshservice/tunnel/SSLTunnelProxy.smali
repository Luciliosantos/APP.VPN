.class public Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;
.super Ljava/lang/Object;
.source "SSLTunnelProxy.java"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;
    }
.end annotation


# static fields
.field private static final delay:I = 0x3e8


# instance fields
.field private input:Ljava/net/Socket;

.field private mSocket:Ljava/net/Socket;

.field private stunnelHostSNI:Ljava/lang/String;

.field private stunnelPort:I

.field private stunnelServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
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

    .line 65
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelServer:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelPort:I

    .line 75
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelHostSNI:Ljava/lang/String;

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

    .line 113
    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$1;

    invoke-direct {v2, p0}, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 131
    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    const-string v2, "TLS"

    const-string v4, "Conscrypt"

    .line 132
    invoke-static {v2, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    new-array v4, v0, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v4, v3

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v2, v1, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 135
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;

    invoke-direct {v1}, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;-><init>()V

    .line 136
    invoke-virtual {v1, p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
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

    .line 152
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 156
    new-instance p2, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;-><init>(Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;Ljava/lang/String;ILjavax/net/ssl/SSLSocket;)V

    invoke-virtual {v1, p2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    const-string p1, "Iniciando SSL Handshake..."

    .line 157
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 161
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "N\u00e3o foi poss\u00edvel concluir SSL handshake: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p2
.end method

.method private sendForwardSuccess(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "HTTP/1.1 200 OK\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 91
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private setSNIHost(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 5

    .line 177
    instance-of v0, p1, Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 178
    check-cast p1, Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {p1, p2, p3}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setHostname"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v4

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public SSLSupport(Ljava/net/Socket;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->input:Ljava/net/Socket;

    return-void
.end method

.method public close()V
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p3

    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    .line 100
    new-instance p4, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelServer:Ljava/lang/String;

    iget v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelPort:I

    invoke-direct {p4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 102
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 103
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->stunnelHostSNI:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->doSSLHandshake(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 105
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;->mSocket:Ljava/net/Socket;

    return-object p1
.end method
