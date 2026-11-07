.class Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;
.super Ljava/lang/Object;
.source "Tunnel.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    move-result-object v0

    const-string v1, "tunnel core started"

    invoke-interface {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    move-result-object v0

    const-string v1, "tunnel core stopped"

    invoke-interface {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stop()V

    return-void
.end method
