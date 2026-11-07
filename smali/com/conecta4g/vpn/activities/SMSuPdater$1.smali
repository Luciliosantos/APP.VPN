.class Lcom/conecta4g/vpn/activities/SMSuPdater$1;
.super Ljava/lang/Object;
.source "SMSuPdater.java"

# interfaces
.implements Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/SMSuPdater;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

.field final synthetic val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/SMSuPdater;Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    iput-object p2, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public onCompleted(Ljava/lang/String;)V
    .locals 9

    const-string v0, ".smsupdater"

    const-string v1, "NOVA MENSAGEM DO ADMINISTRADOR"

    const-string v2, "firstStartSMS"

    .line 40
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "SendMessage"

    .line 41
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v5}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/conecta4g/vpn/util/Utils;->CurrentSMSVersion:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto/16 :goto_0

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v4}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    new-instance v4, Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v6}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "MyMessage"

    .line 50
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    iget-object v3, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 53
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_1

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {v7}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 56
    iget-object v6, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {v8}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v3, v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$100(Lcom/conecta4g/vpn/activities/SMSuPdater;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 58
    :cond_1
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    const-string v6, "SMS"

    .line 61
    invoke-virtual {v0, v6}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 58
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0800a3

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 v0, 0x1021

    .line 67
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    new-instance v1, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    iget-object v3, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->val$h:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$202(Lcom/conecta4g/vpn/activities/SMSuPdater;Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 71
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "NOVA MENSAGEM"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 72
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 73
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    const-string v1, "Certo"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 74
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelable(Z)V

    .line 75
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;

    invoke-direct {v1, p0, p1}, Lcom/conecta4g/vpn/activities/SMSuPdater$1$1;-><init>(Lcom/conecta4g/vpn/activities/SMSuPdater$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 90
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater$1;->this$0:Lcom/conecta4g/vpn/activities/SMSuPdater;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/SMSuPdater;->access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
