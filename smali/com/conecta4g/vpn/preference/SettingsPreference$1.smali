.class Lcom/conecta4g/vpn/preference/SettingsPreference$1;
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

.field final synthetic val$enableModoNoturno:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/preference/SettingsPreference;Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

    iput-object p2, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$1;->val$enableModoNoturno:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 202
    invoke-static {}, Lcom/conecta4g/vpn/SocksHttpApp;->getApp()Lcom/conecta4g/vpn/SocksHttpApp;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v1, v0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$1;->val$enableModoNoturno:Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->setModoNoturno(Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x1e240

    const/high16 v3, 0x10000000

    .line 210
    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 222
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conecta4g/vpn/util/Utils;->exitAll2(Landroid/app/Activity;)V

    return-void
.end method
