.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;
.super Ljava/lang/Object;
.source "TunnelState.java"


# static fields
.field private static m_tunnelState:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;


# instance fields
.field private m_startingTunnelManager:Z

.field private m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z

    return-void
.end method

.method public static declared-synchronized getTunnelState()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelState:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    invoke-direct {v1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;-><init>()V

    sput-object v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelState:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;

    .line 16
    :cond_0
    sget-object v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelState:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getStartingTunnelManager()Z
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunnelManager()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartingTunnelManager()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 34
    :try_start_0
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTunnelManager(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;)V
    .locals 0

    monitor-enter p0

    .line 25
    :try_start_0
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_tunnelManager:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnManager;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
