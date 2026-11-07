.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;
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

    .line 161
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$002(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 165
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->closeSSH()V

    .line 170
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$302(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 171
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$402(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 172
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iput-boolean v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    .line 173
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$502(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    return-void
.end method
