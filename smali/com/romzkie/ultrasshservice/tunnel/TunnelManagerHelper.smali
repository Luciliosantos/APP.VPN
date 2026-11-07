.class public Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerHelper;
.super Ljava/lang/Object;
.source "TunnelManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startSocksHttp(Landroid/content/Context;)V
    .locals 3

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-static {}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->restartRotateAndRandom()V

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static stopSocksHttp(Landroid/content/Context;)V
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/romzkie/ultrasshservice/SocksHttpService;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    .line 29
    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
