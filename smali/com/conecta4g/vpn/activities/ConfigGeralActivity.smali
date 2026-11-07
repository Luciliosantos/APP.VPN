.class public Lcom/conecta4g/vpn/activities/ConfigGeralActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "ConfigGeralActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# static fields
.field public static OPEN_SETTINGS_SSH:Ljava/lang/String; = "openSSHScreen"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 25
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->setContentView(I)V

    .line 27
    new-instance p1, Lcom/conecta4g/vpn/preference/SettingsPreference;

    invoke-direct {p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->OPEN_SETTINGS_SSH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f00b7

    .line 32
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->setTitle(I)V

    .line 33
    new-instance p1, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;

    invoke-direct {p1}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;-><init>()V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090089

    .line 38
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const p1, 0x7f09014b

    .line 42
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 43
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 44
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 52
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 58
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f090089

    .line 59
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 p1, 0x1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
