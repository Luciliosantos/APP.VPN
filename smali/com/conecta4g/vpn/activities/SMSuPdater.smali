.class public Lcom/conecta4g/vpn/activities/SMSuPdater;
.super Ljava/lang/Object;
.source "SMSuPdater.java"


# instance fields
.field private pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater;->pref:Landroid/content/SharedPreferences;

    .line 33
    new-instance v0, Lcom/conecta4g/vpn/activities/SMS_Updater;

    new-instance v1, Lcom/conecta4g/vpn/activities/SMSuPdater$1;

    invoke-direct {v1, p0, p1}, Lcom/conecta4g/vpn/activities/SMSuPdater$1;-><init>(Lcom/conecta4g/vpn/activities/SMSuPdater;Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    invoke-direct {v0, p1, v1}, Lcom/conecta4g/vpn/activities/SMS_Updater;-><init>(Landroid/content/Context;Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 112
    invoke-virtual {v0, p1}, Lcom/conecta4g/vpn/activities/SMS_Updater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/activities/SMSuPdater;)Landroid/content/SharedPreferences;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater;->pref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conecta4g/vpn/activities/SMSuPdater;Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/conecta4g/vpn/activities/SMSuPdater;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/conecta4g/vpn/activities/SMSuPdater;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/conecta4g/vpn/activities/SMSuPdater;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conecta4g/vpn/activities/SMSuPdater;Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMSuPdater;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    return-object p1
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 3

    .line 118
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "SMSuUpdater Notification"

    const/4 v2, 0x4

    invoke-direct {v0, p2, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x1

    .line 119
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method
