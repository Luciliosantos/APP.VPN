.class public Lcom/conecta4g/vpn/LauncherActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "LauncherActivity.java"


# instance fields
.field private app_name:Landroid/widget/TextView;

.field private txtAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 26
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/LauncherActivity;->setContentView(I)V

    const p1, 0x7f090045

    .line 28
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conecta4g/vpn/LauncherActivity;->app_name:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p0}, Lcom/conecta4g/vpn/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010014

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/LauncherActivity;->txtAnim:Landroid/view/animation/Animation;

    .line 32
    iget-object p1, p0, Lcom/conecta4g/vpn/LauncherActivity;->app_name:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/conecta4g/vpn/LauncherActivity;->app_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/conecta4g/vpn/LauncherActivity;->txtAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 37
    new-instance v0, Lcom/conecta4g/vpn/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/conecta4g/vpn/LauncherActivity$1;-><init>(Lcom/conecta4g/vpn/LauncherActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
