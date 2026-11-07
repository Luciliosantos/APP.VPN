.class Lcom/conecta4g/vpn/preference/SettingsPreference$3;
.super Ljava/lang/Object;
.source "SettingsPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/preference/SettingsPreference;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/preference/SettingsPreference;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$3;->this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsPreference$3;->this$0:Lcom/conecta4g/vpn/preference/SettingsPreference;

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->access$000(Lcom/conecta4g/vpn/preference/SettingsPreference;Z)V

    return-void
.end method
