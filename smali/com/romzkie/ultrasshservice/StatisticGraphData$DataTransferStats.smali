.class public Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
.super Ljava/lang/Object;
.source "StatisticGraphData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/StatisticGraphData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataTransferStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;
    }
.end annotation


# static fields
.field public static final FAST_BUCKET_PERIOD_MILLISECONDS:J = 0x3e8L

.field public static final MAX_BUCKETS:I = 0x120

.field public static final SLOW_BUCKET_PERIOD_MILLISECONDS:J = 0x493e0L


# instance fields
.field private mLastReceived:J

.field private mLastSent:J

.field private mReceived:J

.field private mSent:J

.field private m_connectedTime:J

.field private m_fastBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private m_fastBucketsLastStartTime:J

.field private m_isConnected:Z

.field private m_slowBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private m_slowBucketsLastStartTime:J

.field private m_totalBytesReceived:J

.field private m_totalBytesSent:J

.field final synthetic this$0:Lcom/romzkie/ultrasshservice/StatisticGraphData;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/StatisticGraphData;)V
    .locals 2

    .line 77
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->this$0:Lcom/romzkie/ultrasshservice/StatisticGraphData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesSent:J

    .line 79
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 81
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->stop()V

    return-void
.end method

.method private addReceivedToBuckets(J)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    .line 208
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    return-void
.end method

.method private addSentToBuckets(J)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    .line 202
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    return-void
.end method

.method private bucketStartTime(JJ)J
    .locals 0

    .line 135
    div-long/2addr p1, p3

    mul-long p3, p3, p1

    return-wide p3
.end method

.method private getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 194
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v2, v2, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesReceived:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 182
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    iget-wide v2, v2, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;->m_bytesSent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private manageBuckets()V
    .locals 10

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 164
    iget-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    sub-long v5, v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v5, v2

    if-ltz v4, :cond_0

    const-wide/32 v7, 0x493e0

    .line 167
    iget-object v9, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->shiftBuckets(JJLjava/util/ArrayList;)V

    .line 168
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->bucketStartTime(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    .line 171
    :cond_0
    iget-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    sub-long v5, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v5, v2

    if-ltz v4, :cond_1

    const-wide/16 v7, 0x3e8

    .line 174
    iget-object v9, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->shiftBuckets(JJLjava/util/ArrayList;)V

    .line 175
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->bucketStartTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    :cond_1
    return-void
.end method

.method private newBuckets()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x120

    if-ge v1, v2, :cond_0

    .line 143
    new-instance v2, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;-><init>(Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;Lcom/romzkie/ultrasshservice/StatisticGraphData$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private resetBytesTransferred()V
    .locals 4

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    .line 111
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->bucketStartTime(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBucketsLastStartTime:J

    .line 112
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->newBuckets()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    const-wide/16 v2, 0x3e8

    .line 113
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->bucketStartTime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBucketsLastStartTime:J

    .line 114
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->newBuckets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    return-void
.end method

.method private shiftBuckets(JJLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 150
    div-long v4, p1, p3

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 152
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats$Bucket;-><init>(Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;Lcom/romzkie/ultrasshservice/StatisticGraphData$1;)V

    invoke-virtual {p5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 153
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x120

    if-lt v2, v3, :cond_0

    .line 155
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addBytesReceived(J)V
    .locals 2

    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesReceived:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 129
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->addReceivedToBuckets(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBytesSent(J)V
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesSent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesSent:J

    .line 121
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->addSentToBuckets(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public byteCountToDisplaySize(JZ)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 260
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " B"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    long-to-double p1, p1

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v0, v1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_2

    const-string v2, "kMGTPE"

    goto :goto_1

    :cond_2
    const-string v2, "KMGTPE"

    :goto_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    const-string p3, ""

    goto :goto_2

    :cond_3
    const-string p3, "i"

    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-double v5, v0

    .line 263
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const-string p1, "%.1f %sB"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getBytesReceived()J
    .locals 4

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 275
    iget-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mLastReceived:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mReceived:J

    .line 276
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mLastReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesSent()J
    .locals 4

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 267
    iget-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mLastSent:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mSent:J

    .line 268
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->mLastSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getElapsedTime()J
    .locals 4

    monitor-enter p0

    .line 218
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 220
    iget-wide v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_connectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFastReceivedSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 254
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFastSentSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 248
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_fastBuckets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSlowReceivedSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 242
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getReceivedSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSlowSentSeries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->manageBuckets()V

    .line 236
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_slowBuckets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->getSentSeries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalBytesReceived()J
    .locals 2

    monitor-enter p0

    .line 230
    :try_start_0
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesReceived:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalBytesSent()J
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesSent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_isConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startConnected()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 93
    :try_start_0
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_isConnected:Z

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_connectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession()V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->resetBytesTransferred()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 101
    :try_start_0
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesReceived:J

    .line 102
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_totalBytesSent:J

    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_isConnected:Z

    .line 104
    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->m_connectedTime:J

    .line 105
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;->resetBytesTransferred()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
