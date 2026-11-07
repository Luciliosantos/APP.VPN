.class public Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/trilead/ssh2/InteractiveCallback;
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;
.implements Lcom/trilead/ssh2/DebugLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;,
        Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;
    }
.end annotation


# static fields
.field private static final AUTH_KEYBOARDINTERACTIVE:Ljava/lang/String; = "keyboard-interactive"

.field private static final AUTH_PASSWORD:Ljava/lang/String; = "password"

.field private static final AUTH_PUBLICKEY:Ljava/lang/String; = "publickey"

.field private static final AUTH_TRIES:I = 0x1

.field private static final RECONNECT_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TunnelManagerThread"


# instance fields
.field private dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

.field private lastPingLatency:J

.field private lost:Z

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mConnected:Z

.field private mConnection:Lcom/trilead/ssh2/Connection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;

.field public mReconnecting:Z

.field private mRunning:Z

.field private mStarting:Z

.field private mStopping:Z

.field private mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

.field private m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mcheck:Z

.field private pcheck:Z

.field private pinger:Lcom/romzkie/ultrasshservice/tunnel/Pinger;

.field serverAddr:Ljava/lang/String;

.field private thPing:Ljava/lang/Thread;

.field private useProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mRunning:Z

    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->pcheck:Z

    .line 274
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    .line 575
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->useProxy:Z

    const-wide/16 v1, -0x1

    .line 761
    iput-wide v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lastPingLatency:J

    .line 865
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    .line 1206
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    return p0
.end method

.method static synthetic access$002(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    return p1
.end method

.method static synthetic access$100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lost:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lost:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->rec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    return p0
.end method

.method static synthetic access$402(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    return p1
.end method

.method static synthetic access$502(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mcheck:Z

    return p1
.end method

.method static synthetic access$600(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/romzkie/ultrasshservice/config/Settings;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-object p0
.end method

.method static synthetic access$700(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    return p0
.end method

.method static synthetic access$800(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Lcom/trilead/ssh2/Connection;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    return-object p0
.end method

.method static synthetic access$900(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lastPingLatency:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lastPingLatency:J

    return-wide p1
.end method

.method private declared-synchronized interruptPinger()V
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->pinger:Lcom/romzkie/ultrasshservice/tunnel/Pinger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stopping pinger"

    .line 252
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->pinger:Lcom/romzkie/ultrasshservice/tunnel/Pinger;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isServiceVpnRunning()Z
    .locals 2

    .line 1169
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getStartingTunnelManager()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelManager()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private rec(Ljava/lang/String;)V
    .locals 2

    .line 1033
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;

    invoke-direct {v1, p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1040
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized startForwarderSocks(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 716
    :try_start_0
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 725
    :try_start_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getMaximoThreadsSocks()I

    move-result v0

    if-lez v0, :cond_0

    .line 730
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1, p1, v0}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(II)Lcom/trilead/ssh2/DynamicPortForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socks local number threads: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(I)Lcom/trilead/ssh2/DynamicPortForwarder;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 739
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socks Local: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 741
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1

    .line 717
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startPinger(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 764
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "starting pinger"

    .line 768
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 770
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;

    invoke-direct {v0, p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$10;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;I)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->thPing:Ljava/lang/Thread;

    .line 809
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 765
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method private declared-synchronized stopForwarderSocks()V
    .locals 1

    monitor-enter p0

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 749
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/DynamicPortForwarder;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 751
    :try_start_2
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopPinger()V
    .locals 1

    monitor-enter p0

    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->thPing:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stopping pinger"

    .line 815
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->thPing:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->thPing:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected addProxy(ZILjava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/Connection;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    if-eqz v0, :cond_c

    const/4 v3, 0x1

    .line 580
    iput-boolean v3, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->useProxy:Z

    const-string v4, "sshPort"

    const-string v5, "sshServer"

    const/4 v6, 0x0

    if-eq v0, v3, :cond_a

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v0, v7, :cond_7

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    .line 703
    iput-boolean v6, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->useProxy:Z

    goto/16 :goto_5

    .line 655
    :cond_0
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->tls_version()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    sput-boolean v3, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->TLSv3:Z

    goto :goto_0

    .line 658
    :cond_1
    sput-boolean v6, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->TLSv3:Z

    :goto_0
    if-eqz v2, :cond_2

    .line 662
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v14, v8

    goto :goto_1

    :cond_2
    move-object v14, v2

    :goto_1
    if-eqz p3, :cond_3

    .line 668
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v15, v8

    goto :goto_2

    :cond_3
    move-object/from16 v15, p3

    .line 673
    :goto_2
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0, v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 674
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 680
    :try_start_0
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;

    const/16 v16, 0x0

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    move-object v11, v0

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/romzkie/ultrasshservice/tunnel/SSLProxy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    .line 681
    invoke-virtual {v10, v0}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 685
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 631
    :cond_4
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->tls_version()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 632
    sput-boolean v3, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->TLSv3:Z

    goto :goto_3

    .line 634
    :cond_5
    sput-boolean v6, Lcom/romzkie/ultrasshservice/tunnel/TLSSocketFactory;->TLSv3:Z

    :goto_3
    if-eqz v2, :cond_6

    .line 637
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    .line 641
    :cond_6
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0, v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v3, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 646
    :try_start_1
    new-instance v4, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;

    invoke-direct {v4, v0, v3, v2}, Lcom/romzkie/ultrasshservice/tunnel/SSLTunnelProxy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 647
    invoke-virtual {v10, v4}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    .line 650
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    if-eqz p3, :cond_8

    .line 606
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v8, p3

    .line 610
    :goto_4
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "proxyRemoto"

    invoke-virtual {v0, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 611
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "proxyRemotoPorta"

    invoke-virtual {v0, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 614
    :try_start_2
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    move-object v11, v0

    move-object/from16 v16, v8

    move-object/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    if-nez p1, :cond_9

    .line 618
    invoke-virtual {v10, v0}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V

    :cond_9
    if-eqz v8, :cond_c

    .line 620
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 623
    :catch_2
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(I)V

    .line 625
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz p3, :cond_b

    .line 586
    :try_start_3
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2, v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/romzkie/ultrasshservice/tunnel/HttpProxyCustom;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    .line 589
    invoke-virtual {v10, v0}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    const-string v0, "Payload: *******"

    .line 592
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 595
    :catch_3
    new-instance v0, Ljava/lang/Exception;

    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_b
    iput-boolean v6, v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->useProxy:Z

    :cond_c
    :goto_5
    return-void
.end method

.method protected autenticar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->state_auth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTENTICANDO"

    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    const-string v1, "password"

    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Autenticando com senha"

    .line 459
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$8;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$8;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AUTENTICADO"

    .line 468
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->state_auth_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->TAG:Ljava/lang/String;

    const-string v2, "Problema durante handleAuthentication ()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 472
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->TAG:Ljava/lang/String;

    const-string v2, "A conex\u00e3o foi interrompida enquanto tent\u00e1vamos autenticar"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    const-string v1, "publickey"

    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 480
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    .line 483
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    const-string p3, "Autenticando com chave p\u00fablica"

    .line 485
    invoke-static {p3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 487
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {p3, p1, v0, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<strong>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget p3, Lcom/romzkie/ultrasshservice/R$string;->state_auth_success:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</strong>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 494
    :catch_2
    sget-object p1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->TAG:Ljava/lang/String;

    const-string p2, "O host n\u00e3o oferece suporte \u00e0 autentica\u00e7\u00e3o de \'chave p\u00fablica\'."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p1, "<strong></font><font color=\"red\">ERRO - USU\u00c1RIO/SENHA INCORRETOS OU LOGIN EXPIRADO \ud83d\udd11</strong>"

    .line 521
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string p1, "<strong></font><font color=\"red\">Verifique a data de vencimento da sua internet </strong>"

    .line 522
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string p1, "<strong></font><font color=\"red\">Entre em contato com o dono do servidor p/ verificar</strong>"

    .line 523
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$9;

    invoke-direct {p2, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$9;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll2()V

    .line 530
    new-instance p1, Ljava/io/IOException;

    const-string p2, "N\u00e3o foi poss\u00edvel autenticar com os dados fornecidos"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public declared-synchronized closeSSH()V
    .locals 1

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopForwarder()V

    .line 342
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopPinger()V

    .line 343
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->interruptPinger()V

    .line 345
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    if-eqz v0, :cond_0

    const-string v0, "Parando SSH"

    .line 346
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected conectar(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    if-eqz v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    .line 361
    :try_start_0
    new-instance v1, Lcom/trilead/ssh2/Connection;

    invoke-direct {v1, p1, p2}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 363
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getModoDebug()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "protegerConfig"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$5;

    invoke-direct {v2, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$5;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getIsDisabledDelaySSH()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {p1, v2}, Lcom/trilead/ssh2/Connection;->setTCPNoDelay(Z)V

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->ssh_compression()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 382
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {p1, v2}, Lcom/trilead/ssh2/Connection;->setCompression(Z)V

    const-string p1, "<strong>Compress\u00e3o SSH habilitada</strong>"

    .line 383
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 387
    :cond_2
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string p1, "tunnelType"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "usarDefaultPayload"

    .line 388
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "proxyPayload"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "sslSNI"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    move-object v3, p0

    .line 387
    invoke-virtual/range {v3 .. v8}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->addProxy(ZILjava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/Connection;)V

    .line 392
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    new-instance p2, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;

    invoke-direct {p2, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$Monitor;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/Connection;->addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V

    .line 394
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4

    .line 395
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 396
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    :cond_4
    const-string p1, "CONECTANDO"

    .line 402
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v0, Lcom/romzkie/ultrasshservice/R$string;->state_connecting:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_connecting:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 405
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    const/16 p2, 0x2710

    const/16 v0, 0x4e20

    invoke-virtual {p1, p0, p2, v0}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    .line 407
    iput-boolean v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 411
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 412
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 414
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    .line 415
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->useProxy:Z

    if-eqz v0, :cond_5

    const-string v0, "A troca de chaves n\u00e3o foi conclu\u00edda"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, "Proxy: Connection Lost"

    .line 416
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    const-string p2, "<strong></font><font color=\"red\">ERRO:N\u00c3O FOI POSS\u00cdVEL COMPLETAR A CONEX\u00c3O</strong>"

    .line 417
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    const-string p2, "<strong>-----------------</strong>"

    .line 418
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string v0, "<strong></font><font color=\"red\">Ative o modo avi\u00e3o,reinicie o telefone</strong>"

    .line 419
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 420
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const-string p2, "<strong></font><font color=\"red\">Contate o dono do servidor p/ mais informa\u00e7\u00f5es</strong>"

    .line 421
    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 422
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$6;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$6;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 428
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$7;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$7;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    :goto_1
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 353
    :cond_6
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const-string p2, "%s: %s"

    .line 1075
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public reconnectSSH()V
    .locals 9

    .line 868
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 872
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    const/4 v1, 0x0

    .line 873
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lost:Z

    .line 875
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mcheck:Z

    .line 877
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->closeSSH()V

    const-string v2, "RECONECTANDO"

    const-string v3, "Reconnecting.."

    .line 879
    invoke-static {v2, v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    .line 882
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 888
    iget-object v4, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getAutoClearLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 889
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->clearLog()V

    .line 893
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-eqz v4, :cond_2

    .line 894
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    return-void

    :cond_2
    const/4 v4, 0x5

    .line 899
    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "AGUARDANDO"

    const-string v6, "Esperando por rede .."

    .line 900
    invoke-static {v5, v6}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$11;

    invoke-direct {v6, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$11;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    sget v5, Lcom/romzkie/ultrasshservice/R$string;->state_nonetwork:I

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    .line 909
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    .line 910
    invoke-static {v2, v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<strong><font color=\"#ff8c00\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v7, Lcom/romzkie/ultrasshservice/R$string;->state_reconnecting:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</strong>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 913
    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$12;

    invoke-direct {v7, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$12;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    :try_start_1
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startClienteSSH()V

    .line 922
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    .line 923
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 928
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<strong><font color=\"red\">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v8, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 929
    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$13;

    invoke-direct {v6, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$13;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    :goto_1
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 940
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 943
    :catch_1
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    return-void

    .line 884
    :catch_2
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public reconnectSSH2()V
    .locals 7

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    .line 959
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 966
    :goto_0
    iget-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-eqz v1, :cond_0

    .line 967
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    return-void

    :cond_0
    const/4 v1, 0x5

    .line 972
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AGUARDANDO"

    const-string v4, "Aguardando rede.."

    .line 973
    invoke-static {v2, v4}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    sget v2, Lcom/romzkie/ultrasshservice/R$string;->state_nonetwork:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 977
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$14;

    invoke-direct {v4, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$14;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 985
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    const-string v2, "RECONECTANDO"

    const-string v4, "Reconectando.."

    .line 986
    invoke-static {v2, v4}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<strong><font color=\"#ff8c00\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v5, Lcom/romzkie/ultrasshservice/R$string;->state_reconnecting:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</strong>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$15;

    invoke-direct {v5, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$15;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 997
    :try_start_1
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startClienteSSH()V

    .line 999
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    .line 1000
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1005
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<strong><font color=\"red\">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v6, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 1007
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$16;

    invoke-direct {v4, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$16;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1014
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    :goto_1
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 1018
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1021
    :catch_1
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    return-void

    .line 961
    :catch_2
    iput-boolean v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mReconnecting:Z

    return-void
.end method

.method public replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 542
    aget-object p5, p4, p2

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    const-string v0, "password"

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 543
    iget-object p5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v0, "sshPass"

    invoke-virtual {p5, v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p1, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    .line 57
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->starting_service_ssh:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</strong>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 62
    :goto_0
    iget-boolean v4, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1f4

    .line 64
    :try_start_0
    iget-object v6, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "AGUARDANDO"

    .line 65
    iget-object v7, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v8, Lcom/romzkie/ultrasshservice/R$string;->state_nonetwork:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget v6, Lcom/romzkie/ultrasshservice/R$string;->state_nonetwork:I

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v6, 0x1388

    .line 70
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 72
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V

    goto :goto_2

    :cond_0
    if-lez v3, :cond_1

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v8, Lcom/romzkie/ultrasshservice/R$string;->state_reconnecting:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    :cond_1
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 86
    :try_start_4
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startClienteSSH()V

    goto :goto_2

    .line 82
    :catch_1
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 91
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<strong><font color=\'red\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v8, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</font></strong>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->closeSSH()V

    .line 95
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :catch_3
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V

    .line 105
    :cond_2
    :goto_2
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStarting:Z

    .line 107
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-nez v0, :cond_3

    .line 109
    :try_start_6
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 111
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 115
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mListener:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;

    if-eqz v0, :cond_4

    .line 116
    invoke-interface {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;->onStop()V

    :cond_4
    return-void
.end method

.method public setOnStopClienteListener(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mListener:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;

    return-void
.end method

.method protected startClienteSSH()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mRunning:Z

    .line 279
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->lost:Z

    .line 281
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v3, "sshServer"

    invoke-virtual {v2, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v4, "sshPort"

    invoke-virtual {v3, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 283
    iget-object v4, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v5, "sshUser"

    invoke-virtual {v4, v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    iget-object v5, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v6, "sshPass"

    invoke-virtual {v5, v6}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;->getAuthPassword(Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v5

    .line 288
    :cond_0
    iget-object v6, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v6}, Lcom/romzkie/ultrasshservice/config/Settings;->getSSHKeypath()Ljava/lang/String;

    move-result-object v6

    .line 289
    iget-object v7, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v8, "sshPortaLocal"

    invoke-virtual {v7, v8}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 293
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->conectar(Ljava/lang/String;I)V

    .line 296
    iget-boolean v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    return-void

    .line 301
    :cond_1
    :try_start_1
    invoke-virtual {p0, v4, v5, v6}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->autenticar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v2, "CONECTADO"

    const-string v3, "Conex\u00e3o SSH estabelecida"

    .line 317
    invoke-static {v2, v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<strong><html><font color=\'#0062AF\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v4, Lcom/romzkie/ultrasshservice/R$string;->state_connected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</font></html></strong>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$4;

    invoke-direct {v3, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$4;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getSSHPinger()I

    move-result v2

    if-lez v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getSSHPinger()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startPinger(I)V

    .line 329
    :cond_2
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mcheck:Z

    .line 331
    invoke-virtual {p0, v7}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startForwarder(I)V

    return-void

    .line 306
    :catch_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "A autentica\u00e7\u00e3o falhou"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    .line 334
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    .line 336
    throw v1
.end method

.method protected startForwarder(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    if-eqz v0, :cond_2

    .line 196
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startForwarderSocks(I)V

    .line 198
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->startTunnelVpnService()V

    .line 200
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->network_meter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    const-class v2, Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->setPinger()Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->setAutoPing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    .line 212
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v0, ""

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnection:Lcom/trilead/ssh2/Connection;

    invoke-direct {v0, v1, p1}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;-><init>(Lcom/trilead/ssh2/Connection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->pinger:Lcom/romzkie/ultrasshservice/tunnel/Pinger;

    .line 218
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->start()V

    :cond_1
    return-void

    .line 193
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method protected startTunnelVpnService()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1086
    iget-boolean v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConnected:Z

    if-eqz v1, :cond_a

    const-string v1, "Come\u00e7ando servi\u00e7o de t\u00fanel"

    .line 1090
    invoke-static {v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 1091
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v1

    .line 1094
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "tunnelVpnDisconnectBroadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "tunnelVpnStartBroadcast"

    .line 1096
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1099
    invoke-virtual {v3, v4, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 1101
    iget-object v4, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v5, "sshPortaLocal"

    invoke-virtual {v4, v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "127.0.0.1:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1102
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsForward()Z

    move-result v8

    .line 1103
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnUdpForward()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnUdpResolver()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v11, v3

    .line 1105
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v4, "sshServer"

    invoke-virtual {v3, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tunnelType"

    .line 1107
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1109
    :try_start_0
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v3, "proxyRemoto"

    invoke-virtual {v1, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1111
    :catch_0
    sget v1, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(I)V

    .line 1113
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1118
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1119
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->serverAddr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    new-array v12, v2, [Ljava/lang/String;

    aput-object v1, v12, v5

    if-eqz v8, :cond_3

    .line 1128
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsResolver2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    .line 1129
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsResolver()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    goto :goto_2

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    .line 1131
    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsResolver()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsResolver2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_2
    move-object v9, v1

    goto :goto_3

    .line 1134
    :cond_3
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;->getNetworkDnsServer(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    .line 1135
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v5

    move-object v9, v3

    .line 1138
    :goto_3
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->isServiceVpnRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1139
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->TAG:Ljava/lang/String;

    const-string v2, "J\u00e1 executando servi\u00e7o"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v1

    .line 1142
    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelManager()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1145
    invoke-virtual {v1, v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->restartTunnel(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 1151
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    const-class v4, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 1152
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1154
    new-instance v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    if-eqz v8, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    if-nez v8, :cond_8

    if-eqz v11, :cond_8

    :cond_7
    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 1156
    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getIsFilterApps()Z

    move-result v13

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getIsFilterBypassMode()Z

    move-result v14

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getFilterApps()[Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getIsTetheringSubnet()Z

    move-result v16

    move-object v6, v3

    invoke-direct/range {v6 .. v16}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;-><init>(Ljava/lang/String;Z[Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;Z)V

    const-string v2, "vpnSettings"

    .line 1157
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1159
    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1165
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->setStartingTunnelManager()V

    return-void

    :cond_9
    const-string v1, "Falha ao iniciar servi\u00e7o VPN de t\u00fanel"

    .line 1160
    invoke-static {v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 1162
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Servi\u00e7o VPN falhou ao iniciar"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1121
    :catch_1
    new-instance v1, Ljava/io/IOException;

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->error_server_ip_invalid:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1087
    :cond_a
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public stopAll()V
    .locals 3

    .line 156
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->stopping_service_ssh:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PARANDO"

    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->stopping_service_ssh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$2;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$3;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAll2()V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mStopping:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->stopping_service_ssh:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PARANDO"

    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->stopping_service_ssh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected stopForwarder()V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopTunnelVpnService()V

    .line 261
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopForwarderSocks()V

    return-void
.end method

.method protected declared-synchronized stopTunnelVpnService()V
    .locals 2

    monitor-enter p0

    .line 1174
    :try_start_0
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->isServiceVpnRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1175
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Parando servi\u00e7o de t\u00fanel"

    .line 1184
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelManager()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1200
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 559
    invoke-static {p3, p4}, Lcom/trilead/ssh2/KnownHosts;->createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    .line 563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Finger Print: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
