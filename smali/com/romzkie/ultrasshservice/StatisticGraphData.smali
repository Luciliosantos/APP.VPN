.class public Lcom/romzkie/ultrasshservice/StatisticGraphData;
.super Ljava/lang/Object;
.source "StatisticGraphData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
    }
.end annotation


# static fields
.field private static statisticData:Lcom/romzkie/ultrasshservice/StatisticGraphData;


# instance fields
.field private m_dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

.field private m_displayDataTransferStats:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;-><init>(Lcom/romzkie/ultrasshservice/StatisticGraphData;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData;->m_dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData;->m_displayDataTransferStats:Z

    return-void
.end method

.method public static declared-synchronized getStatisticData()Lcom/romzkie/ultrasshservice/StatisticGraphData;
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/StatisticGraphData;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/StatisticGraphData;->statisticData:Lcom/romzkie/ultrasshservice/StatisticGraphData;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/romzkie/ultrasshservice/StatisticGraphData;

    invoke-direct {v1}, Lcom/romzkie/ultrasshservice/StatisticGraphData;-><init>()V

    sput-object v1, Lcom/romzkie/ultrasshservice/StatisticGraphData;->statisticData:Lcom/romzkie/ultrasshservice/StatisticGraphData;

    .line 28
    :cond_0
    sget-object v1, Lcom/romzkie/ultrasshservice/StatisticGraphData;->statisticData:Lcom/romzkie/ultrasshservice/StatisticGraphData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getDataTransferStats()Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData;->m_dataTransferStats:Lcom/romzkie/ultrasshservice/StatisticGraphData$DataTransferStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayDataTransferStats()Z
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData;->m_displayDataTransferStats:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisplayDataTransferStats(Z)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/StatisticGraphData;->m_displayDataTransferStats:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
