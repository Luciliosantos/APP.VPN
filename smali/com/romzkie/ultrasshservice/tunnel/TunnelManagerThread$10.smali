.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;
.super Ljava/lang/Thread;
.source "TunnelManagerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startPinger(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

.field final synthetic val$timePing:I


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;I)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->val$timePing:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private declared-synchronized makePinger()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$800(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/trilead/ssh2/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$800(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/trilead/ssh2/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->ping()J

    move-result-wide v0

    .line 787
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$900(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 788
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v2, v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$902(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;J)J

    goto :goto_0

    .line 791
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 793
    :try_start_1
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    :cond_1
    :goto_0
    iget v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->val$timePing:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 797
    monitor-exit p0

    return-void

    :cond_2
    if-lez v0, :cond_3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 800
    :try_start_2
    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v0, "ping invalid"

    .line 802
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 773
    :goto_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$700(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;->makePinger()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string v0, "pinger stopped"

    .line 780
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    return-void
.end method
