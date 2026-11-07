.class Lcom/conecta4g/vpn/preference/SettingsSSHPreference$1;
.super Ljava/lang/Object;
.source "SettingsSSHPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/preference/SettingsSSHPreference;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/preference/SettingsSSHPreference;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsSSHPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsSSHPreference;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
