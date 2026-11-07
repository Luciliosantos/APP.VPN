.class Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference$1;->this$0:Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
