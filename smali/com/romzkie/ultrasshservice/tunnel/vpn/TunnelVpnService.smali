.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;
.super Landroid/net/VpnService;
.source "TunnelVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TunnelVpnService"

.field public static final TUNNEL_VPN_DISCONNECT_BROADCAST:Ljava/lang/String; = "tunnelVpnDisconnectBroadcast"

.field public static final TUNNEL_VPN_START_BROADCAST:Ljava/lang/String; = "tunnelVpnStartBroadcast"

.field public static final TUNNEL_VPN_START_SUCCESS_EXTRA:Ljava/lang/String; = "tunnelVpnStartSuccessExtra"


# instance fields
.field private final m_binder:Landroid/os/IBinder;

.field private m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 43
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    .line 51
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_binder:Landroid/os/IBinder;

    return-void
.end method

.method private dispatchBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 107
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public broadcastVpnDisconnect()V
    .locals 2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tunnelVpnDisconnectBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->dispatchBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public broadcastVpnStart(Z)V
    .locals 2

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tunnelVpnStartBroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tunnelVpnStartSuccessExtra"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->dispatchBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public newBuilder()Landroid/net/VpnService$Builder;
    .locals 1

    .line 90
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.net.VpnService"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "TunnelVpnService"

    const-string v1, "on create"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v0

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->setTunnelManager(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TunnelVpnService"

    const-string v1, "on destroy"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->setTunnelManager(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;)V

    .line 78
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->onDestroy()V

    return-void
.end method

.method public onRevoke()V
    .locals 1

    const-string v0, "<strong>VPN service revoked</strong>"

    .line 83
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->broadcastVpnDisconnect()V

    .line 86
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "TunnelVpnService"

    const-string v1, "on start"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
