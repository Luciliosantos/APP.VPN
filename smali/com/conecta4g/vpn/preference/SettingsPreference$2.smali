.class Lcom/conecta4g/vpn/preference/SettingsPreference$2;
.super Ljava/lang/Object;
.source "SettingsPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/preference/SettingsPreference;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

.field final synthetic val$lang:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/preference/SettingsPreference;Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$2;->this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

    iput-object p2, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$2;->val$lang:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 240
    invoke-static {}, Lcom/conecta4g/vpn/SocksHttpApp;->getApp()Lcom/conecta4g/vpn/SocksHttpApp;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$2;->val$lang:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/conecta4g/vpn/preference/LocaleHelper;->setNewLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/conecta4g/vpn/LauncherActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x1e240

    const/high16 v3, 0x10000000

    .line 247
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 257
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
