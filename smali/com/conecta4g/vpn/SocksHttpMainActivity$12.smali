.class Lcom/conecta4g/vpn/SocksHttpMainActivity$12;
.super Ljava/util/TimerTask;
.source "SocksHttpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroid/os/Handler;Ljava/util/Timer;)V
    .locals 0

    .line 1451
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1454
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
