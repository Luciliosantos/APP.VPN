.class Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GobblerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/StreamGobbler;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/StreamGobbler;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 48
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v2}, Lcom/trilead/ssh2/StreamGobbler;->access$000(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 50
    iget-object v3, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v3}, Lcom/trilead/ssh2/StreamGobbler;->access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v2, :cond_0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/trilead/ssh2/StreamGobbler;->access$202(Lcom/trilead/ssh2/StreamGobbler;Z)Z

    .line 55
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v0}, Lcom/trilead/ssh2/StreamGobbler;->access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v3

    goto/16 :goto_1

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->access$300(Lcom/trilead/ssh2/StreamGobbler;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v5}, Lcom/trilead/ssh2/StreamGobbler;->access$400(Lcom/trilead/ssh2/StreamGobbler;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    .line 65
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->access$400(Lcom/trilead/ssh2/StreamGobbler;)I

    move-result v4

    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->access$500(Lcom/trilead/ssh2/StreamGobbler;)I

    move-result v6

    sub-int/2addr v4, v6

    add-int v6, v4, v2

    .line 68
    iget-object v7, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v7}, Lcom/trilead/ssh2/StreamGobbler;->access$300(Lcom/trilead/ssh2/StreamGobbler;)[B

    move-result-object v7

    .line 70
    iget-object v8, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v8}, Lcom/trilead/ssh2/StreamGobbler;->access$300(Lcom/trilead/ssh2/StreamGobbler;)[B

    move-result-object v8

    array-length v8, v8

    if-le v6, v8, :cond_3

    .line 72
    div-int/lit8 v7, v6, 0x3

    const/16 v8, 0x100

    if-ge v7, v8, :cond_1

    const/16 v7, 0x100

    :cond_1
    if-le v7, v0, :cond_2

    const/16 v7, 0x2000

    :cond_2
    add-int/2addr v6, v7

    .line 75
    new-array v7, v6, [B

    :cond_3
    if-lez v4, :cond_4

    .line 79
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->access$300(Lcom/trilead/ssh2/StreamGobbler;)[B

    move-result-object v6

    iget-object v8, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v8}, Lcom/trilead/ssh2/StreamGobbler;->access$500(Lcom/trilead/ssh2/StreamGobbler;)I

    move-result v8

    invoke-static {v6, v8, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_4
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6, v7}, Lcom/trilead/ssh2/StreamGobbler;->access$302(Lcom/trilead/ssh2/StreamGobbler;[B)[B

    .line 83
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6, v5}, Lcom/trilead/ssh2/StreamGobbler;->access$502(Lcom/trilead/ssh2/StreamGobbler;I)I

    .line 84
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6, v4}, Lcom/trilead/ssh2/StreamGobbler;->access$402(Lcom/trilead/ssh2/StreamGobbler;I)I

    .line 87
    :cond_5
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->access$300(Lcom/trilead/ssh2/StreamGobbler;)[B

    move-result-object v4

    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->access$400(Lcom/trilead/ssh2/StreamGobbler;)I

    move-result v6

    invoke-static {v1, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v4, v2}, Lcom/trilead/ssh2/StreamGobbler;->access$412(Lcom/trilead/ssh2/StreamGobbler;I)I

    .line 90
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v2}, Lcom/trilead/ssh2/StreamGobbler;->access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v1}, Lcom/trilead/ssh2/StreamGobbler;->access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v2, v0}, Lcom/trilead/ssh2/StreamGobbler;->access$602(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)Ljava/io/IOException;

    .line 98
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    invoke-static {v0}, Lcom/trilead/ssh2/StreamGobbler;->access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 99
    monitor-exit v1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 100
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
