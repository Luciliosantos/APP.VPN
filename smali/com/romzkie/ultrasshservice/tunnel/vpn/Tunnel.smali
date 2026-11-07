.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;
.super Ljava/lang/Object;
.source "Tunnel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;
    }
.end annotation


# static fields
.field private static final DNS_RESOLVER_IP:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_RESOLVER_PORT:I = 0x35

.field private static final VPN_INTERFACE_NETMASK:Ljava/lang/String; = "255.255.255.0"

.field private static mTunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;


# instance fields
.field private final mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

.field private mMtu:I

.field private mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

.field private mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

.field private mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

.field private mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

.field private mTunFd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5dc

    .line 165
    iput v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    .line 107
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 109
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    invoke-direct {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;-><init>()V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    return-object p0
.end method

.method public static declared-synchronized newTunnel(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;)Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stop()V

    .line 101
    :cond_0
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;

    invoke-direct {v1, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;)V

    sput-object v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunnel:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 14

    move-object v0, p0

    .line 334
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 339
    :cond_0
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    if-nez v6, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0x1f9b

    const/16 v4, 0xa

    .line 349
    invoke-static {v1, v4}, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;->findAvailablePort(II)I

    move-result v12

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 352
    iget-object v4, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget-object v4, v4, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%s:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    iget-object v4, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-interface {v4}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v10, 0x35

    iget-object v4, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget-object v11, v4, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    move-object v7, v2

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;-><init>(Landroid/content/Context;[Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    .line 356
    new-instance v4, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$1;

    invoke-direct {v4, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)V

    invoke-virtual {v2, v4}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->setOnPdnsdListener(Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;)V

    .line 368
    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->start()V

    :cond_2
    move-object v12, v1

    .line 372
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-interface {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v7, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    iget-object v2, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget-object v8, v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mRouter:Ljava/lang/String;

    const-string v9, "255.255.255.0"

    move-object v4, v1

    move-object v10, p1

    move-object/from16 v11, p4

    move/from16 v13, p5

    invoke-direct/range {v4 .. v13}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    .line 376
    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;

    invoke-direct {v2, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$2;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;)V

    invoke-virtual {v1, v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->setOnTun2SocksListener(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;)V

    .line 390
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->start()V

    .line 392
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-interface {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onTunnelConnected()V

    .line 393
    iget-object v1, v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    const-string v2, "routing through tunnel"

    invoke-interface {v1, v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    return v3
.end method

.method private startVpn(Z[Ljava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    const-string v5, "startVpn failed"

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Routes: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Routes Excluded: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;->selectPrivateAddress()Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    move-result-object v8

    iput-object v8, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    .line 181
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    if-ge v10, v8, :cond_0

    aget-object v12, v3, v10

    .line 182
    iget-object v13, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v14, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    invoke-direct {v14, v12, v11}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v14, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 191
    :try_start_0
    new-instance v8, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v8, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 196
    iget-object v8, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    .line 197
    invoke-interface {v8}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->newVpnServiceBuilder()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/VpnService$Builder;

    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget-object v10, v10, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    iget-object v12, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget v12, v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mPrefixLength:I

    .line 198
    invoke-virtual {v8, v10, v12}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v8

    .line 200
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v13, "0.0.0.0"

    invoke-direct {v12, v13, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 201
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v14, "10.0.0.0"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v15}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 202
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    iget-object v14, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget-object v14, v14, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mSubnet:Ljava/lang/String;

    iget-object v15, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPrivateAddress:Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;

    iget v15, v15, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mPrefixLength:I

    invoke-direct {v12, v14, v15}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    if-eqz p7, :cond_1

    .line 208
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v14, "192.168.42.0"

    const/16 v15, 0x17

    invoke-direct {v12, v14, v15}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 210
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v14, "192.168.44.0"

    const/16 v15, 0x18

    invoke-direct {v12, v14, v15}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 212
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v12, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v14, "192.168.49.0"

    invoke-direct {v12, v14, v15}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 216
    :cond_1
    array-length v10, v2

    const/4 v12, 0x0

    :goto_1
    const/4 v14, 0x2

    if-ge v12, v10, :cond_2

    aget-object v15, v2, v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :try_start_1
    invoke-virtual {v8, v15}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 219
    iget-object v13, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    new-instance v9, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    invoke-direct {v9, v15, v11}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v11, p1

    :try_start_2
    invoke-virtual {v13, v9, v11}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v11, p1

    :goto_2
    move-object v9, v0

    .line 221
    :try_start_3
    iget-object v13, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    const-string v2, "Erro ao adicinar dns %s, %s"

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v14, v15

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    const/4 v9, 0x0

    const/16 v11, 0x20

    const/4 v13, 0x1

    goto :goto_1

    .line 225
    :cond_2
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 226
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-ne v9, v10, :cond_3

    const-string v9, "4.4.3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "4.4.4"

    .line 227
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "4.4.5"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "4.4.6"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    const/16 v9, 0x500

    if-ge v2, v9, :cond_3

    .line 229
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Forcing MTU to 1280 instead of %d to workaround Android Bug #70916"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    iget v11, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-static {v2, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 230
    iput v9, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    .line 232
    :cond_3
    iget v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mMtu:I

    invoke-virtual {v8, v2}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 235
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->getNetworks(Z)Ljava/util/Collection;

    move-result-object v2

    .line 236
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "%s/%d"

    const-string v11, ", "

    if-eqz v9, :cond_4

    .line 238
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    new-array v12, v14, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    iget v9, v9, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 243
    :cond_4
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 245
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->getNetworks(Z)Ljava/util/Collection;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    new-array v12, v14, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v12, v15

    iget v9, v9, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 253
    :cond_5
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 255
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 256
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 259
    new-instance v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    new-instance v6, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;

    const-string v7, "224.0.0.0"

    const/4 v9, 0x3

    invoke-direct {v6, v7, v9}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 261
    iget-object v6, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    invoke-virtual {v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->getPositiveIPList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    :try_start_5
    invoke-virtual {v2, v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->containsNet(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VPN: Ignoring multicast route: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    goto :goto_6

    .line 266
    :cond_6
    invoke-virtual {v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-virtual {v8, v9, v10}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v9, v0

    .line 268
    :try_start_6
    iget-object v10, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route rejeitada: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 272
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_9

    if-eqz p4, :cond_9

    .line 274
    array-length v2, v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_9

    aget-object v7, v4, v6
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p5, :cond_8

    .line 277
    :try_start_7
    invoke-virtual {v8, v7}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 278
    iget-object v9, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    const-string v10, "Filtro de Apps: Vpn desativada para \"%s\""

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v12, v11

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    goto :goto_8

    .line 281
    :cond_8
    invoke-virtual {v8, v7}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 282
    iget-object v9, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    const-string v10, "Filtro de Apps: Vpn ativada para \"%s\""

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v12, v11

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 285
    :catch_3
    :try_start_8
    iget-object v9, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Aplicativo \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" n\u00e3o encontrado. Filtro de Apps n\u00e3o ir\u00e1 funcionar, verifique as configura\u00e7\u00f5es."

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 292
    :cond_9
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    .line 293
    invoke-interface {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v2

    iget-object v4, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    .line 294
    invoke-interface {v4}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_a

    .line 326
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    const/4 v4, 0x0

    return v4

    :cond_a
    const/4 v4, 0x0

    .line 304
    :try_start_9
    iget-object v6, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 305
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    invoke-interface {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onVpnEstablished()V

    .line 308
    iget-object v2, v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mRoutes:Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->clear()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 326
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 321
    :try_start_a
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 317
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 313
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 326
    :goto_9
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 327
    throw v2
.end method

.method private stopRoutingThroughTunnel()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTun2Socks:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;

    .line 412
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->interrupt()V

    .line 416
    :cond_1
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mPdnsd:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    return-void
.end method

.method private stopVpn()V
    .locals 3

    .line 421
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stopRoutingThroughTunnel()V

    .line 423
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->mHostService:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;

    const-string v2, "VPN service stopped"

    invoke-interface {v1, v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized startRouting(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    iget-object v2, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    iget-object v3, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    iget-boolean v4, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    iget-boolean v5, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    iget-object v6, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    iget-boolean v7, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->startVpn(Z[Ljava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTunneling(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stopVpn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTunneling()V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tunnel;->stopRoutingThroughTunnel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
