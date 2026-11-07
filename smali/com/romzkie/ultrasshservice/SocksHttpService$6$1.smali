.class Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;
.super Ljava/lang/Object;
.source "SocksHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/romzkie/ultrasshservice/SocksHttpService$6;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/SocksHttpService$6;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;->this$1:Lcom/romzkie/ultrasshservice/SocksHttpService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;->this$1:Lcom/romzkie/ultrasshservice/SocksHttpService$6;

    iget-object v0, v0, Lcom/romzkie/ultrasshservice/SocksHttpService$6;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->access$000(Lcom/romzkie/ultrasshservice/SocksHttpService;)Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;->this$1:Lcom/romzkie/ultrasshservice/SocksHttpService$6;

    iget-object v0, v0, Lcom/romzkie/ultrasshservice/SocksHttpService$6;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->access$000(Lcom/romzkie/ultrasshservice/SocksHttpService;)Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->reconnectSSH()V

    :cond_0
    return-void
.end method
