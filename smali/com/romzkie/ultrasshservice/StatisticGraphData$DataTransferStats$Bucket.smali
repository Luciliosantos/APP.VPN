.class Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;
.super Ljava/lang/Object;
.source "StatisticGraphData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bucket"
.end annotation


# instance fields
.field public m_bytesReceived:J

.field public m_bytesSent:J

.field final synthetic this$1:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;


# direct methods
.method private constructor <init>(Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->this$1:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 68
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;Lcom/romzkie/ultrasshservice/StatisticGraphData$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;-><init>(Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;)V

    return-void
.end method
