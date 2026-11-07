.class public abstract Lcom/conecta4g/vpn/activities/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# static fields
.field public static mTheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/conecta4g/vpn/preference/LocaleHelper;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->setModoNoturnoLocal()V

    .line 29
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->resetTitles()V

    return-void
.end method

.method protected resetTitles()V
    .locals 3

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 49
    iget v1, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v1, :cond_0

    .line 50
    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/BaseActivity;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setModoNoturnoLocal()V
    .locals 2

    .line 38
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getModoNoturno()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    return-void
.end method
