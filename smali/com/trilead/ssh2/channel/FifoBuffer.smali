.class Lcom/trilead/ssh2/channel/FifoBuffer;
.super Ljava/lang/Object;
.source "FifoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;,
        Lcom/trilead/ssh2/channel/FifoBuffer$Page;
    }
.end annotation


# instance fields
.field private closed:Z

.field private limit:I

.field private final lock:Ljava/lang/Object;

.field private final pageSize:I

.field private r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

.field private sz:I

.field private w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/channel/FifoBuffer;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    move-object p1, p0

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    .line 116
    iput p3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    .line 117
    iput p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    .line 119
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;-><init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    .line 121
    new-instance p2, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    invoke-direct {p2, p0, p1, p3}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;-><init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    return-void
.end method

.method static synthetic access$000(Lcom/trilead/ssh2/channel/FifoBuffer;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/trilead/ssh2/channel/FifoBuffer;)Lcom/trilead/ssh2/channel/FifoBuffer$Page;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-result-object p0

    return-object p0
.end method

.method private newPage()Lcom/trilead/ssh2/channel/FifoBuffer$Page;
    .locals 2

    .line 131
    new-instance v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->pageSize:I

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/FifoBuffer$Page;-><init>(I)V

    return-object v0
.end method

.method private releaseRing()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    iput-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    .line 173
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->releaseRing()V

    .line 174
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 176
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 215
    iget-object v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->r:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->read([BII)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    .line 220
    iget v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 222
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 206
    monitor-exit v1

    return v0

    .line 208
    :cond_2
    iget-boolean v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->closed:Z

    if-eqz v2, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->releaseRing()V

    const/4 p1, -0x1

    .line 210
    monitor-exit v1

    return p1

    .line 212
    :cond_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method readable()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLimit(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iput p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    .line 127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writable()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->limit:I

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 154
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->writable()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->w:Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;

    invoke-virtual {v2, p1, p2, v1}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->write([BII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 162
    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->sz:I

    .line 164
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 235
    invoke-virtual {p0, v3, v0, v2}, Lcom/trilead/ssh2/channel/FifoBuffer;->read([BII)I

    move-result v2

    .line 236
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 241
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
