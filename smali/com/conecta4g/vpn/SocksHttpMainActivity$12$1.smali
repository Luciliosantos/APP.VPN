.class Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$12;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1500(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1600(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    goto :goto_0

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1461
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$12;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$12;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :goto_0
    return-void
.end method
