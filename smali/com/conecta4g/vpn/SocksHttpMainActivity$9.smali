.class Lcom/conecta4g/vpn/SocksHttpMainActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "SocksHttpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "MainUpdate"

    .line 1266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {p2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1267
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.conecta4g.vpn:openLogs"

    .line 1268
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1269
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$9;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1400(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_0
    return-void
.end method
