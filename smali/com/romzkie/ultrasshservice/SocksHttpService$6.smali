.class Lcom/romzkie/ultrasshservice/SocksHttpService$6;
.super Landroid/content/BroadcastReceiver;
.source "SocksHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService;
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

    .line 488
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$6;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 497
    :cond_0
    sget-object p2, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 498
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;

    invoke-direct {p2, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$6$1;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService$6;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 505
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 508
    :cond_1
    sget-object p2, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 509
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$6;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->endTunnelService()V

    :cond_2
    :goto_0
    return-void
.end method
