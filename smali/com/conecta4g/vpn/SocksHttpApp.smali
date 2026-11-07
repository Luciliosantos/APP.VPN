.class public Lcom/conecta4g/vpn/SocksHttpApp;
.super Landroid/app/Application;
.source "SocksHttpApp.java"


# static fields
.field public static final PREFS_GERAL:Ljava/lang/String; = "SocksHttpGERAL"

.field private static final TAG:Ljava/lang/String; = "SocksHttpApp"

.field private static mApp:Lcom/conecta4g/vpn/SocksHttpApp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getApp()Lcom/conecta4g/vpn/SocksHttpApp;
    .locals 1

    .line 69
    sget-object v0, Lcom/conecta4g/vpn/SocksHttpApp;->mApp:Lcom/conecta4g/vpn/SocksHttpApp;

    return-object v0
.end method

.method private setModoNoturno(Landroid/content/Context;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p1}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getModoNoturno()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 64
    :goto_0
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    sput-object p0, Lcom/conecta4g/vpn/SocksHttpApp;->mApp:Lcom/conecta4g/vpn/SocksHttpApp;

    .line 38
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/SocksHttpCore;->init(Landroid/content/Context;)V

    .line 41
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/util/SkProtect;->init(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p0}, Lcom/conecta4g/vpn/SocksHttpApp;->setModoNoturno(Landroid/content/Context;)V

    return-void
.end method
