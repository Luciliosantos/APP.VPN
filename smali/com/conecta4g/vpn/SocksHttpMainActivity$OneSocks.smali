.class public Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OneSocks"
.end annotation


# instance fields
.field UNINSTALL_REQUEST_CODE:I

.field private context:Landroid/content/Context;

.field private items:[Ljava/lang/String;

.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;


# direct methods
.method public constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1699
    iput p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->UNINSTALL_REQUEST_CODE:I

    .line 1706
    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->context:Landroid/content/Context;

    .line 1707
    iput-object p3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->items:[Ljava/lang/String;

    return-void
.end method

.method private check(Ljava/lang/String;)Z
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 1714
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public UnistallAPP(Ljava/lang/String;)V
    .locals 3

    .line 1761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1763
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {p1, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 1764
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method alert(Ljava/lang/String;)V
    .locals 4

    .line 1747
    sget-boolean v0, Lcom/romzkie/ultrasshservice/SocksHttpService;->isRunning:Z

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->context:Landroid/content/Context;

    const-class v3, Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    new-instance v1, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->context:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1702(Lcom/conecta4g/vpn/SocksHttpMainActivity;Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1752
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const v2, 0x7f0f0032

    invoke-virtual {v1, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1753
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const v3, 0x7f0f008f

    invoke-virtual {v2, v3}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1754
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "Desinstalar"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1755
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$$ExternalSyntheticLambda0;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 1756
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelable(Z)V

    .line 1757
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    return-void
.end method

.method check()V
    .locals 3

    const/4 v0, 0x0

    .line 1723
    :goto_0
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->items:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1724
    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->items:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->alert(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public init()V
    .locals 7

    .line 1732
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1733
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 1734
    new-instance v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;

    invoke-direct {v2, p0, v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;Landroid/os/Handler;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xbb8

    .line 1744
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public synthetic lambda$alert$0$SocksHttpMainActivity$OneSocks(Ljava/lang/String;Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 0

    .line 1755
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->UnistallAPP(Ljava/lang/String;)V

    return-void
.end method
