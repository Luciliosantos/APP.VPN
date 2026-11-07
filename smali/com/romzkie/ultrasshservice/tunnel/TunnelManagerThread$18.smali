.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;
.super Landroid/content/BroadcastReceiver;
.source "TunnelManagerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    monitor-enter p0

    .line 1209
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tunnelVpnStartBroadcast"

    .line 1211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "tunnelVpnStartSuccessExtra"

    const/4 v0, 0x1

    .line 1212
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1215
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V

    goto :goto_0

    :cond_0
    const-string p2, "tunnelVpnDisconnectBroadcast"

    .line 1218
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1219
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$18;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->stopAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
