.class public Lcom/romzkie/ultrasshservice/SocksHttpCore;
.super Ljava/lang/Object;
.source "SocksHttpCore.java"


# static fields
.field private static mInstance:Lcom/romzkie/ultrasshservice/SocksHttpCore;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/TopExceptionHandler;->init(Landroid/content/Context;)V

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/SocksHttpCore;->createNotificationChannels()V

    :cond_0
    return-void
.end method

.method private createNotificationChannels()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 40
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->channel_name_background:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "openvpn_bg"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 44
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->channel_description_background:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const v1, -0xbbbbbc

    .line 47
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 51
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->channel_name_status:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "openvpn_newstat"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 55
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->channel_description_status:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const v1, -0xffff01

    .line 58
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 63
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->channel_name_userreq:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "openvpn_userreq"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 66
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mContext:Landroid/content/Context;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->channel_description_userreq:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const v1, -0xff0001

    .line 68
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mInstance:Lcom/romzkie/ultrasshservice/SocksHttpCore;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/romzkie/ultrasshservice/SocksHttpCore;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/SocksHttpCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/romzkie/ultrasshservice/SocksHttpCore;->mInstance:Lcom/romzkie/ultrasshservice/SocksHttpCore;

    :cond_0
    return-void
.end method
