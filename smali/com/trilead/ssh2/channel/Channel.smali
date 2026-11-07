.class public Lcom/trilead/ssh2/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/Channel$Output;
    }
.end annotation


# static fields
.field private static final CHANNEL_BUFFER_SIZE:I

.field static final STATE_CLOSED:I = 0x4

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field channelBufferSize:I

.field final channelSendLock:Ljava/lang/Object;

.field closeMessageRecv:Z

.field closeMessageSent:Z

.field final cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private eof:Z

.field exit_signal:Ljava/lang/String;

.field exit_status:Ljava/lang/Integer;

.field failedCounter:I

.field hexX11FakeCookie:Ljava/lang/String;

.field localID:I

.field localMaxPacketSize:I

.field localWindow:I

.field final msgWindowAdjust:[B

.field private reasonClosed:Ljava/lang/Throwable;

.field private final reasonClosedLock:Ljava/lang/Object;

.field remoteID:I

.field remoteMaxPacketSize:I

.field remoteWindow:J

.field state:I

.field final stderr:Lcom/trilead/ssh2/channel/Channel$Output;

.field final stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

.field final stdout:Lcom/trilead/ssh2/channel/Channel$Output;

.field successCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-class v0, Lcom/trilead/ssh2/channel/Channel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bufferSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x104000

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/trilead/ssh2/channel/Channel;->CHANNEL_BUFFER_SIZE:I

    .line 452
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/Channel;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;)V
    .locals 7

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget v0, Lcom/trilead/ssh2/channel/Channel;->CHANNEL_BUFFER_SIZE:I

    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    .line 155
    new-instance v0, Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel$Output;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 156
    new-instance v1, Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/channel/Channel$Output;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    iput-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    const/4 v2, -0x1

    .line 167
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 168
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 193
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 194
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    const/16 v4, 0x9

    new-array v4, v4, [B

    .line 201
    iput-object v4, p0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/4 v4, 0x1

    .line 206
    iput v4, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 208
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 213
    iput v3, p0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 214
    iput v3, p0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 216
    iput v3, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    const-wide/16 v5, 0x0

    .line 217
    iput-wide v5, p0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 219
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 220
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 223
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z

    .line 247
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 248
    iput-object v2, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    .line 252
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 254
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 255
    sget p1, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    add-int/lit16 p1, p1, -0x400

    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 257
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelOutputStream;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 258
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v3}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    iput-object p1, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 259
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    invoke-direct {p1, p0, v4}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    iput-object p1, v1, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-void
.end method


# virtual methods
.method declared-synchronized eof()V
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel$Output;->eof()V

    .line 227
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel$Output;->eof()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method freeupWindow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(IZ)V

    return-void
.end method

.method freeupWindow(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p1, :cond_0

    return-void

    .line 363
    :cond_0
    monitor-enter p0

    .line 364
    :try_start_0
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v0, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x4

    div-int/2addr v1, v2

    const/4 v3, 0x0

    if-gt p1, v1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    move-result p1

    sub-int/2addr v0, p1

    .line 370
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_2

    add-int/2addr p1, v0

    .line 372
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 375
    :cond_2
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 376
    iget v1, p0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v0, :cond_6

    .line 388
    sget-object v4, Lcom/trilead/ssh2/channel/Channel;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x50

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/16 v5, 0x5d

    .line 395
    aput-byte v5, v4, v3

    const/4 v3, 0x1

    shr-int/lit8 v5, p1, 0x18

    int-to-byte v5, v5

    .line 396
    aput-byte v5, v4, v3

    const/4 v3, 0x2

    shr-int/lit8 v5, p1, 0x10

    int-to-byte v5, v5

    .line 397
    aput-byte v5, v4, v3

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    const/4 v5, 0x3

    .line 398
    aput-byte v3, v4, v5

    int-to-byte p1, p1

    .line 399
    aput-byte p1, v4, v2

    const/4 p1, 0x5

    shr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    .line 400
    aput-byte v2, v4, p1

    const/4 p1, 0x6

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    .line 401
    aput-byte v2, v4, p1

    const/4 p1, 0x7

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    .line 402
    aput-byte v2, v4, p1

    int-to-byte p1, v0

    const/16 v0, 0x8

    .line 403
    aput-byte p1, v4, v0

    .line 405
    iget-boolean p1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    .line 407
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object p1, p1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    goto :goto_1

    .line 409
    :cond_4
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object p1, p1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 412
    :cond_5
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 378
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 295
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 303
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 306
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReasonClosed()Ljava/lang/String;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 320
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method public getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    return-object v0
.end method

.method public getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-object v0
.end method

.method isEOF()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z

    return v0
.end method

.method public declared-synchronized pipeStderrStream(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel$Output;->pipeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pipeStdoutStream(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel$Output;->pipeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestWindowChange(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 424
    new-instance v0, Lcom/trilead/ssh2/packets/PacketWindowChange;

    iget v3, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    move-object v2, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/trilead/ssh2/packets/PacketWindowChange;-><init>(IIIII)V

    .line 426
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p1

    .line 429
    :try_start_1
    iget-boolean p2, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p2, :cond_0

    .line 431
    iget-object p2, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object p2, p2, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketWindowChange;->getPayload()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 432
    monitor-exit p1

    return-void

    .line 430
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Cannot request window-change on this channel"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/io/IOException;

    throw p2

    :catchall_0
    move-exception p2

    .line 432
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 422
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot request window-change on this channel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :catchall_1
    move-exception p1

    .line 426
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setReasonClosed(Ljava/lang/String;)V
    .locals 1

    .line 333
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setReasonClosed(Ljava/lang/Throwable;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    .line 341
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 3

    monitor-enter p0

    if-lez p1, :cond_0

    .line 266
    :try_start_0
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 265
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public signal(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 442
    new-instance v0, Lcom/trilead/ssh2/packets/PacketSignal;

    iget v1, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/packets/PacketSignal;-><init>(ILjava/lang/String;)V

    .line 443
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 445
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter p1

    .line 446
    :try_start_1
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSignal;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 449
    monitor-exit p1

    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot request window-change on this channel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :catchall_0
    move-exception v0

    .line 449
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 440
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot send signal on this channel"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :catchall_1
    move-exception p1

    .line 443
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
