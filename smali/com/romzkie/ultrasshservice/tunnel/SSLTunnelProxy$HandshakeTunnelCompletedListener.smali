.class Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;
.super Ljava/lang/Object;
.source "SSLTunnelProxy.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeTunnelCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;

.field private final val$host:Ljava/lang/String;

.field private final val$port:I

.field private final val$sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;Ljava/lang/String;ILjavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;->this$0:Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;->val$host:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;->val$port:I

    .line 36
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy$HandshakeTunnelCompletedListener;->val$sslSocket:Ljavax/net/ssl/SSLSocket;

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usando protocolo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string p1, "Handshake finalizado!"

    .line 48
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    return-void
.end method
