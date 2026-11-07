.class public Lcom/conecta4g/vpn/activities/AboutActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 14
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/AboutActivity;->setContentView(I)V

    const p1, 0x7f09014b

    .line 17
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 18
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/AboutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onResume()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/AboutActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
