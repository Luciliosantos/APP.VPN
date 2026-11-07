.class public Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.super Ljava/lang/Thread;
.source "DynamicAcceptThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    }
.end annotation


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x19

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private ss:Ljava/net/ServerSocket;

.field private threadBound:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    const-string p1, "DynamicAcceptThread"

    .line 79
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    .line 81
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    const/4 p1, 0x2

    if-ge p3, p1, :cond_0

    const/16 p3, 0x19

    .line 87
    :cond_0
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    const-string p1, "DynamicAcceptThread"

    .line 63
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 66
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 p1, 0x2

    if-ge p3, p1, :cond_0

    const/16 p3, 0x19

    .line 72
    :cond_0
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static synthetic access$000(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    return-object p0
.end method

.method static synthetic access$200()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .line 48
    sget-object v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 111
    new-instance v1, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;

    new-instance v2, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    invoke-direct {v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;-><init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 113
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 105
    :catch_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void

    .line 95
    :catch_1
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void
.end method

.method public stopWorking()V
    .locals 1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
