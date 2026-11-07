.class public Lcom/romzkie/ultrasshservice/SocksHttpService;
.super Landroid/app/Service;
.source "SocksHttpService.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;


# static fields
.field public static final NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String; = "openvpn_bg"

.field public static final NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String; = "openvpn_newstat"

.field public static final NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String; = "openvpn_userreq"

.field private static final PRIORITY_DEFAULT:I = 0x0

.field private static final PRIORITY_MAX:I = 0x2

.field private static final PRIORITY_MIN:I = -0x2

.field public static final START_SERVICE:Ljava/lang/String; = "com.conecta4g.vpn:startTunnel"

.field private static final TAG:Ljava/lang/String; = "SocksHttpService"

.field public static final TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

.field public static final TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

.field public static isRunning:Z

.field private static lastStateMsg:Ljava/lang/String;


# instance fields
.field private connMgr:Landroid/net/ConnectivityManager;

.field private lastChannel:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyBuilder:Landroid/app/Notification$Builder;

.field private mPrefs:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

.field private mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTunnelThread:Ljava/lang/Thread;

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 464
    const-class v0, Lcom/romzkie/ultrasshservice/SocksHttpService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::restartservicebroadcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "::stopservicebroadcast"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/romzkie/ultrasshservice/SocksHttpService$1;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$1;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 447
    new-instance v0, Lcom/romzkie/ultrasshservice/SocksHttpService$5;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$5;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 488
    new-instance v0, Lcom/romzkie/ultrasshservice/SocksHttpService$6;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$6;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/SocksHttpService;)Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    return-object p0
.end method

.method private addVpnActionsToNotification(Landroid/app/Notification$Builder;)V
    .locals 5

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/romzkie/ultrasshservice/MainReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sshTunnelServiceRestsrt"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 378
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 380
    sget v3, Lcom/romzkie/ultrasshservice/R$drawable;->ic_autorenew_black_24dp:I

    sget v4, Lcom/romzkie/ultrasshservice/R$string;->reconnect:I

    .line 381
    invoke-virtual {p0, v4}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {p1, v3, v4, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/romzkie/ultrasshservice/MainReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "sshtunnelservicestop"

    .line 384
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 387
    sget v1, Lcom/romzkie/ultrasshservice/R$drawable;->ic_power_settings_new_black_24dp:I

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->stop:I

    .line 388
    invoke-virtual {p0, v2}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".SocksHttpMainActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 414
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getIconByConnectionStatus(Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;)I
    .locals 1

    .line 392
    sget-object v0, Lcom/romzkie/ultrasshservice/SocksHttpService$7;->$SwitchMap$com$romzkie$ultrasshservice$logger$ConnectionStatus:[I

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 402
    sget p1, Lcom/romzkie/ultrasshservice/R$drawable;->ic_connecting:I

    return p1

    .line 394
    :cond_0
    sget p1, Lcom/romzkie/ultrasshservice/R$drawable;->ic_cloud_black_24dp:I

    return p1
.end method

.method private jbNotificationExtras(ILandroid/app/Notification$Builder;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setPriority"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mPrefs:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->network_meter()Z

    move-result p1

    if-nez p1, :cond_0

    .line 361
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setUsesChronometer"

    new-array v1, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 362
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 369
    :goto_0
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private lpNotificationExtras(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 0

    .line 348
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    .line 349
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method private setWakelock()V
    .locals 3

    :try_start_0
    const-string v0, "power"

    .line 110
    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SocksHttpService::WakelockService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "CPU Wakelock Ativo"

    .line 112
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAKELOCK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startTunnelBroadcast()V
    .locals 3

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 472
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 473
    sget-object v1, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    sget-object v1, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private stopTunnelBroadcast()V
    .locals 2

    .line 481
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private unsetWakelock()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WAKELOCK"

    const-string v1, "is disabled"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "CPU Wakelock Parado"

    .line 126
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public endTunnelService()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/romzkie/ultrasshservice/SocksHttpService$4;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$4;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getIpPublic()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->connMgr:Landroid/net/ConnectivityManager;

    .line 194
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Indisponivel"

    return-object v0
.end method

.method protected networkStateChange(Landroid/content/Context;Z)V
    .locals 6

    .line 521
    :try_start_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "not connected"

    goto :goto_1

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    .line 529
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    const-string v2, "%2$s %4$s to %1$s %3$s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 543
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 544
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v0, v3, p1

    .line 543
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_3

    .line 551
    sget-object p2, Lcom/romzkie/ultrasshservice/SocksHttpService;->lastStateMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 552
    :cond_3
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 554
    :cond_4
    sput-object p1, Lcom/romzkie/ultrasshservice/SocksHttpService;->lastStateMsg:Ljava/lang/String;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 66
    sget-object v0, Lcom/romzkie/ultrasshservice/SocksHttpService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mPrefs:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mHandler:Landroid/os/Handler;

    const-string v0, "connectivity"

    .line 73
    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->connMgr:Landroid/net/ConnectivityManager;

    const-string v0, "notification"

    .line 74
    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    sget-object v0, Lcom/romzkie/ultrasshservice/SocksHttpService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 218
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->stopTunnel()V

    .line 220
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->stopTunnelBroadcast()V

    .line 222
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 238
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    const-string v0, "Aviso de pouca mem\u00f3ria!"

    .line 240
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logWarning(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 82
    sget-object p2, Lcom/romzkie/ultrasshservice/SocksHttpService;->TAG:Ljava/lang/String;

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->startTunnelBroadcast()V

    .line 86
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.conecta4g.vpn:startTunnel"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 91
    :cond_0
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLastState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLocalizedState(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 92
    sget-object v5, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_START:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const/4 v6, 0x0

    const-string v2, "openvpn_newstat"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/romzkie/ultrasshservice/SocksHttpService;->showNotification(Ljava/lang/String;Ljava/lang/String;JLcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V

    .line 94
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/romzkie/ultrasshservice/SocksHttpService$2;

    invoke-direct {p3, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$2;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 227
    sget-object p1, Lcom/romzkie/ultrasshservice/SocksHttpService;->TAG:Ljava/lang/String;

    const-string v0, "tarefa removida"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/romzkie/ultrasshservice/util/DummyActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized showNotification(Ljava/lang/String;Ljava/lang/String;JLcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    .line 269
    :try_start_0
    invoke-direct {p0, p5}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getIconByConnectionStatus(Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    const/16 v2, 0x10

    if-nez v1, :cond_1

    .line 274
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->app_name:I

    .line 275
    invoke-virtual {p0, v3}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 276
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    .line 287
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->addVpnActionsToNotification(Landroid/app/Notification$Builder;)V

    .line 291
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 292
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    const-string v3, "service"

    invoke-direct {p0, v1, v3}, Lcom/romzkie/ultrasshservice/SocksHttpService;->lpNotificationExtras(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    :cond_1
    const-string v1, "openvpn_bg"

    .line 296
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    const-string v1, "openvpn_userreq"

    .line 298
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 301
    :goto_0
    iget-object v4, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 302
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 304
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_WAITING_FOR_USER_INPUT:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    if-ne p5, v0, :cond_4

    const/high16 p5, 0x4000000

    .line 305
    invoke-static {p0, v3, p6, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    .line 306
    iget-object p6, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p6, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 309
    :cond_4
    iget-object p5, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-static {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p6

    invoke-virtual {p5, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_1
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-eqz v0, :cond_5

    .line 313
    iget-object p5, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p5, p3, p4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 316
    :cond_5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v2, :cond_6

    .line 317
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v1, p3}, Lcom/romzkie/ultrasshservice/SocksHttpService;->jbNotificationExtras(ILandroid/app/Notification$Builder;)V

    .line 320
    :cond_6
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1a

    if-lt p3, p4, :cond_7

    .line 322
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_7
    if-eqz p1, :cond_8

    const-string p3, ""

    .line 326
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 327
    iget-object p3, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 329
    :cond_8
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 331
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    .line 333
    invoke-virtual {p0, p3, p1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->startForeground(ILandroid/app/Notification;)V

    .line 335
    iget-object p4, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p4, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 337
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->lastChannel:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 339
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p3, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->lastChannel:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 342
    :cond_9
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->lastChannel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTunnel()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "INICIANDO"

    .line 138
    sget v1, Lcom/romzkie/ultrasshservice/R$string;->starting_service_ssh:I

    invoke-virtual {p0, v1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p0, v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->networkStateChange(Landroid/content/Context;Z)V

    const-string v1, "Ip Local: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getIpPublic()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mPrefs:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getWakelock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->setWakelock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    :try_start_1
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    .line 152
    new-instance v1, Lcom/romzkie/ultrasshservice/SocksHttpService$3;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/SocksHttpService$3;-><init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->setOnStopClienteListener(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$OnStopCliente;)V

    .line 159
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelThread:Ljava/lang/Thread;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/Exception;)V

    .line 166
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->endTunnelService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTunnel()V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, p0, v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->networkStateChange(Landroid/content/Context;Z)V

    .line 176
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "Parando Tunnel Thread"

    .line 180
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelManager:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    .line 185
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->unsetWakelock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 7

    .line 430
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService;->mTunnelThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {p4, p1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    .line 437
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLastState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLocalizedState(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const-string v2, "openvpn_bg"

    move-object v0, p0

    move-object v5, p4

    .line 438
    invoke-virtual/range {v0 .. v6}, Lcom/romzkie/ultrasshservice/SocksHttpService;->showNotification(Ljava/lang/String;Ljava/lang/String;JLcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V

    return-void
.end method
