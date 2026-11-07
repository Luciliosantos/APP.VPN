.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Lcom/trilead/ssh2/ConnectionMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Monitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$1100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$400(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$000(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iget-boolean v0, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$1200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceiveInfo(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<strong>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->log_server_banner:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</strong> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
