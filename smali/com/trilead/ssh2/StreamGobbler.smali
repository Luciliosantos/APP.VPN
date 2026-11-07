.class public Lcom/trilead/ssh2/StreamGobbler;
.super Ljava/io/InputStream;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private exception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private isClosed:Z

.field private isEOF:Z

.field private read_pos:I

.field private final synchronizer:Ljava/lang/Object;

.field private final t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

.field private write_pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 112
    iput-boolean v0, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 115
    iput-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    .line 116
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 117
    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    .line 121
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    .line 122
    new-instance p1, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;-><init>(Lcom/trilead/ssh2/StreamGobbler;)V

    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->t:Lcom/trilead/ssh2/StreamGobbler$GobblerThread;

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->setDaemon(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/trilead/ssh2/StreamGobbler;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    return p1
.end method

.method static synthetic access$300(Lcom/trilead/ssh2/StreamGobbler;)[B
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/trilead/ssh2/StreamGobbler;[B)[B
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return p0
.end method

.method static synthetic access$402(Lcom/trilead/ssh2/StreamGobbler;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return p1
.end method

.method static synthetic access$412(Lcom/trilead/ssh2/StreamGobbler;I)I
    .locals 1

    .line 36
    iget v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    return v0
.end method

.method static synthetic access$500(Lcom/trilead/ssh2/StreamGobbler;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return p0
.end method

.method static synthetic access$502(Lcom/trilead/ssh2/StreamGobbler;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    return p1
.end method

.method static synthetic access$602(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_0

    .line 165
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 163
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This StreamGobbler is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-eqz v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 180
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    .line 181
    iput-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    .line 182
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 183
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_3

    .line 134
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 139
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 144
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 137
    :cond_1
    throw v1

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 154
    monitor-exit v0

    return v1

    .line 132
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This StreamGobbler is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/StreamGobbler;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    .line 192
    array-length v1, p1

    if-gt v0, v1, :cond_6

    if-ltz v0, :cond_6

    array-length v0, p1

    if-gt p2, v0, :cond_6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isClosed:Z

    if-nez v1, :cond_5

    .line 203
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    iget v2, p0, Lcom/trilead/ssh2/StreamGobbler;->write_pos:I

    if-ne v1, v2, :cond_3

    .line 205
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 208
    iget-boolean v1, p0, Lcom/trilead/ssh2/StreamGobbler;->isEOF:Z

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 213
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler;->synchronizer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 206
    :cond_2
    throw v1

    :cond_3
    sub-int/2addr v2, v1

    if-le v2, p3, :cond_4

    goto :goto_1

    :cond_4
    move p3, v2

    .line 225
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler;->buffer:[B

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/StreamGobbler;->read_pos:I

    .line 229
    monitor-exit v0

    return p3

    .line 201
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This StreamGobbler is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 230
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 193
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
