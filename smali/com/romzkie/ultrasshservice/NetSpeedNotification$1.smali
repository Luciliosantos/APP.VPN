.class Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;
.super Landroid/os/Handler;
.source "NetSpeedNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/NetSpeedNotification;->initializeNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/NetSpeedNotification;Landroid/os/Looper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 62
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$000(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {}, Lcom/romzkie/ultrasshservice/StatisticGraphData;->getStatisticData()Lcom/romzkie/ultrasshservice/StatisticGraphData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData;->getDataTransferStats()Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$102(Lcom/romzkie/ultrasshservice/NetSpeedNotification;Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    .line 67
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$100(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object p1

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$100(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getTotalBytesReceived()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->byteCountToDisplaySize(JZ)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$100(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object v0

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$100(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getTotalBytesSent()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->byteCountToDisplaySize(JZ)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Upload: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$200(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$300(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$400(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$500(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2193  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2191"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$600(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/romzkie/ultrasshservice/R$drawable;->ic_rocket:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v1, -0x1

    .line 82
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 84
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$700(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Landroid/app/NotificationManager;

    move-result-object p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/NetSpeedNotification$1;->this$0:Lcom/romzkie/ultrasshservice/NetSpeedNotification;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/NetSpeedNotification;->access$600(Lcom/romzkie/ultrasshservice/NetSpeedNotification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
