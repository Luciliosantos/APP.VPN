.class Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;
.super Ljava/lang/Thread;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsynchronousWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v0}, Lcom/trilead/ssh2/transport/TransportManager;->access$000(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->access$000(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->access$000(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->access$000(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->access$102(Lcom/trilead/ssh2/transport/TransportManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 94
    monitor-exit v0

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->access$000(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 99
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    return-void

    :catchall_0
    move-exception v1

    .line 99
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
