.class Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;
.super Ljava/util/TimerTask;
.source "SocksHttpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;Landroid/os/Handler;)V
    .locals 0

    .line 1734
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1737
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1$1;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
