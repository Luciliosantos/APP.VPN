.class public Lcom/romzkie/ultrasshservice/NetSpeedNotification;
.super Landroid/app/IntentService;
.source "NetSpeedNotification.java"


# instance fields
.field private dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mDestroyed:Z

.field private mDownloadSpeedOutput:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNotifyMgr:Landroid/app/NotificationManager;

.field private mUnits:Ljava/lang/String;

.field private mUnits2:Ljava/lang/String;

.field private mUploadSpeedOutput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NetSpeedNotification"

    .line 36
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDestroyed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    return-object p0
.end method

.method static synthetic access$102(Lcom/romzkie/ultrasshservice/NetSpeedNotification;Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    return-object p1
.end method

.method static synthetic access$200(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDownloadSpeedOutput:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUploadSpeedOutput:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Landroid/app/Notification$Builder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mBuilder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Landroid/app/NotificationManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mNotifyMgr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V
    .locals 3

    .line 122
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Internet Speed Notification"

    const/4 v2, 0x4

    invoke-direct {v0, p2, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x1

    .line 123
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private getDownloadSpeed()V
    .locals 6

    .line 130
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 133
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 136
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x3b9aca00

    const-string v4, " kB/s"

    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    long-to-float v0, v2

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    const-string v1, " GB/s"

    .line 144
    iput-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    long-to-float v0, v2

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    const-string v1, " MB/s"

    .line 147
    iput-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits:Ljava/lang/String;

    goto :goto_1

    :cond_1
    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 151
    iput-object v4, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits:Ljava/lang/String;

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 156
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.1f"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDownloadSpeedOutput:Ljava/lang/String;

    goto :goto_2

    :cond_2
    float-to-int v0, v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDownloadSpeedOutput:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private getUploadSpeed()V
    .locals 6

    .line 166
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 169
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 172
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x3b9aca00

    const-string v4, " kB/s"

    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    long-to-float v0, v2

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    const-string v1, " GB/s"

    .line 180
    iput-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits2:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    long-to-float v0, v2

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    const-string v1, " MB/s"

    .line 183
    iput-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits2:Ljava/lang/String;

    goto :goto_1

    :cond_1
    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 187
    iput-object v4, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits2:Ljava/lang/String;

    .line 191
    :goto_1
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUnits2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 192
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%.1f"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUploadSpeedOutput:Ljava/lang/String;

    goto :goto_2

    :cond_2
    float-to-int v0, v0

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mUploadSpeedOutput:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private initializeNotification()V
    .locals 5

    .line 57
    new-instance v0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;-><init>(Lcom/romzkie/ultrasshservice/NetSpeedNotification;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mHandler:Landroid/os/Handler;

    const-string v0, "notification"

    .line 91
    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mNotifyMgr:Landroid/app/NotificationManager;

    .line 92
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mynotif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 96
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mNotifyMgr:Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->createNotification(Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 115
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDestroyed:Z

    .line 204
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mNotifyMgr:Landroid/app/NotificationManager;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->initializeNotification()V

    .line 44
    :goto_0
    iget-boolean p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mDestroyed:Z

    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->getDownloadSpeed()V

    .line 47
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->getUploadSpeed()V

    .line 49
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    return-void
.end method
