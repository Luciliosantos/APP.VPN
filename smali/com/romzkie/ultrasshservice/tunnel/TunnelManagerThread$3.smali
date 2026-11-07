.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESCONECTADO"

    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$600(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/romzkie/ultrasshservice/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->network_meter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
