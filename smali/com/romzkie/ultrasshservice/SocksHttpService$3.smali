.class Lcom/romzkie/ultrasshservice/SocksHttpService$3;
.super Ljava/lang/Object;
.source "SocksHttpService.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService;->startTunnel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$3;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$3;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->endTunnelService()V

    return-void
.end method
