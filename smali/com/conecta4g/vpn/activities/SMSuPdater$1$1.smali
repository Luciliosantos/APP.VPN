.class Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;
.super Ljava/lang/Object;
.source "SMSuPdater.java"

# interfaces
.implements Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/SMSuPdater$1;->onCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conecta4g/vpn/activities/SMSuPdater$1;

.field final synthetic val$SMS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/SMSuPdater$1;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;->this$1:Lcom/conecta4g/vpn/activities/SMSuPdater$1;

    iput-object p2, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;->val$SMS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 4

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;->val$SMS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;->this$1:Lcom/conecta4g/vpn/activities/SMSuPdater$1;

    iget-object v1, v1, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v1}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/conecta4g/vpn/util/Utils;->CurrentSMSVersion:Ljava/lang/String;

    const-string v3, "SendMessage"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;->this$1:Lcom/conecta4g/vpn/activities/SMSuPdater$1;

    iget-object v0, v0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstStartSMS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismiss()V

    return-void
.end method
