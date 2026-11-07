.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;
.super Ljava/lang/Object;
.source "TunnelVpnManager.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager$ManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TunnelManager"

.field public static final VPN_SETTINGS:Ljava/lang/String; = "vpnSettings"


# instance fields
.field private mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

.field private m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

.field private m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

.field private m_tunnelThread:Ljava/lang/Thread;

.field private m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    .line 50
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    .line 60
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->newTunnel(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;)Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;)Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->runTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method private runTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 13

    move-object v1, p0

    const-string v2, "Stopping tunnel."

    const-string v3, "Stopping VPN and tunnel."

    const-string v4, "TunnelManager"

    .line 191
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v6, 0x1

    .line 195
    :try_start_0
    iget-object v7, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->startTunneling(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VPN service running"

    .line 199
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 211
    :goto_0
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 197
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v7, "application is not prepared or revoked"

    invoke-direct {v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v7, "Start tunnel failed: %s"

    new-array v8, v6, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0, v5}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :goto_1
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stopTunneling()V

    goto :goto_2

    .line 230
    :cond_1
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stop()V

    .line 232
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->stopForeground(Z)V

    .line 233
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->stopSelf()V

    .line 235
    :goto_2
    iget-object v0, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 221
    :goto_3
    iget-object v7, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 224
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stopTunneling()V

    goto :goto_4

    .line 230
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stop()V

    .line 232
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v2, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->stopForeground(Z)V

    .line 233
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->stopSelf()V

    .line 235
    :goto_4
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    throw v0
.end method

.method private startTunnel()V
    .locals 2

    .line 176
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager$1;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    return-object v0
.end method

.method public getVpnService()Landroid/net/VpnService;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    return-object v0
.end method

.method public bridge synthetic getVpnService()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->getVpnService()Landroid/net/VpnService;

    move-result-object v0

    return-object v0
.end method

.method public newVpnServiceBuilder()Landroid/net/VpnService$Builder;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->newBuilder()Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newVpnServiceBuilder()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->newVpnServiceBuilder()Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 138
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    return-void
.end method

.method public onDiagnosticMessage(Ljava/lang/String;)V
    .locals 5

    .line 270
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    const-string v1, "protegerConfig"

    const/4 v2, 0x0

    .line 272
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    iget-object v0, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "********"

    .line 274
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "TunnelManager"

    const-string p3, "onStartCommand"

    .line 69
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const-string p1, "Failed to receive intent"

    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    return p3

    :cond_0
    const-string v0, "vpnSettings"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    if-nez p1, :cond_1

    const-string p1, "Failed to receive the Vpn Settings."

    .line 79
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    return p3

    .line 84
    :cond_1
    iget-object p1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "Failed to receive the socks server address."

    .line 86
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    return p3

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    iget-object p1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "Failed to receive the dns resolvers."

    .line 93
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    return p3

    .line 100
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    invoke-virtual {p1, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->startRouting(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Failed to establish VPN"

    .line 102
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p3

    const-string p1, "Failed to establish VPN: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "<strong><font color=\"red\">ERRO - ALTERE O PROTOCO DE APN(IPV4)</strong>"

    .line 109
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    const/4 p2, 0x3

    const-string v0, "ERRO - ALTERE O PROTOCO DE APN(IPV4)"

    invoke-static {p1, v0, p3, p2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    .line 111
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    :cond_4
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTunnelConnected()V
    .locals 1

    const-string v0, "<strong><font color=\'green\'>Tunnel Conectado</font></strong>"

    .line 284
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public onVpnEstablished()V
    .locals 1

    const-string v0, "<strong>VPN Established</strong>"

    .line 291
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->startTunnel()V

    return-void
.end method

.method public restartTunnel(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TunnelManager"

    const-string v1, "Restarting tunnel."

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    iget-object v1, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->mSettings:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    iput-object p1, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    return-void

    .line 161
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_parentService:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-virtual {p1, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    return-void
.end method

.method public signalStopService()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
