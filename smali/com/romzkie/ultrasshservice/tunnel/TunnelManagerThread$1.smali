.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll2()V
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

    .line 126
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$002(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 131
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->closeSSH()V

    const-wide/16 v0, 0x3e8

    .line 137
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESCONECTADO"

    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$302(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 142
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$402(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 143
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iput-boolean v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    .line 144
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$502(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 146
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$600(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/romzkie/ultrasshservice/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->network_meter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method
