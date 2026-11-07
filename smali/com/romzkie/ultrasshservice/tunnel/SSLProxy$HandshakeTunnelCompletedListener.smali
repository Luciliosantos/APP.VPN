.class Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;
.super Ljava/lang/Object;
.source "SSLProxy.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeTunnelCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;

.field private final val$host:Ljava/lang/String;

.field private final val$port:I

.field private final val$sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;Ljava/lang/String;ILjavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;->this$0:Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;->val$host:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;->val$port:I

    .line 49
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;->val$sslSocket:Ljavax/net/ssl/SSLSocket;

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SSL: Protocolos ativos: <br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy$HandshakeTunnelCompletedListener;->val$sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL: Usando cipher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL: Usando protocolo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string p1, "SSL: Handshake finished"

    .line 61
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    return-void
.end method
