.class public Lcom/trilead/ssh2/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 31
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 32
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 33
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 42
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/ChannelManager;->openSessionChannel()Lcom/trilead/ssh2/channel/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 43
    iput-object p2, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 567
    monitor-enter p0

    .line 569
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 570
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 574
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 575
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v2, v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v3, "Closed due to user request"

    invoke-virtual {v1, v2, v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    :catch_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 301
    monitor-enter p0

    .line 304
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 307
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 311
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 299
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cmd argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    monitor-enter p0

    .line 384
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V

    return-void

    .line 385
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 386
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pipeStderr(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->pipeStderrStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public pipeStdout(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->pipeStdoutStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public requestDumbPTY()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "dumb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 54
    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    return-void
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p6

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 108
    array-length v3, v0

    if-lez v3, :cond_1

    .line 110
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Illegal terminal modes description, does not end in zero byte"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v0, v3

    :goto_0
    move-object v9, v0

    .line 116
    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_4

    .line 122
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    if-nez v0, :cond_3

    .line 125
    iget-boolean v0, v1, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_2

    .line 129
    iput-boolean v2, v1, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v2, v1, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, v1, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/trilead/ssh2/channel/ChannelManager;->requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V

    return-void

    .line 126
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot request PTY at this stage anymore, a remote execution has already started."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "A PTY was already requested."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "This session is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "TERM cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestWindowChange(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 160
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    if-eqz v0, :cond_0

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/Channel;->requestWindowChange(IIII)V

    return-void

    .line 161
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "A PTY was not requested."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 219
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_6

    .line 225
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    if-nez v0, :cond_5

    .line 228
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    new-instance v0, Lcom/trilead/ssh2/channel/X11ServerData;

    invoke-direct {v0}, Lcom/trilead/ssh2/channel/X11ServerData;-><init>()V

    .line 239
    iput-object p1, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 240
    iput p2, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    .line 241
    iput-object p3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    const/16 p1, 0x10

    new-array p2, p1, [B

    .line 252
    :cond_0
    iget-object p3, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 256
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {p3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 259
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 266
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v1, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 272
    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v5, "MIT-MAGIC-COOKIE-1"

    const/4 v7, 0x0

    move v4, p4

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/trilead/ssh2/channel/ChannelManager;->requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 277
    monitor-enter p0

    .line 279
    :try_start_1
    iget-boolean p1, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez p1, :cond_3

    .line 281
    iput-object p3, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {p1, p3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V

    .line 284
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 229
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot request X11 forwarding at this stage anymore, a remote execution has already started."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "X11 forwarding was already requested."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This session is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 233
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 217
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "hostname argument may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 1

    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->setWindowSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public signal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/trilead/ssh2/packets/PacketSignal;->strsignal(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/Session;->signal(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized signal code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public signal(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    monitor-enter p0

    .line 176
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_0

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->signal(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startShell()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 329
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestShell(Lcom/trilead/ssh2/channel/Channel;)V

    return-void

    .line 330
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 333
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 350
    monitor-enter p0

    .line 353
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_1

    .line 356
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 360
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "A remote execution has already started."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This session is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 360
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 348
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitForCondition(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 524
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result p1

    return p1

    .line 522
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public waitUntilDataAvailable(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 479
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    and-int/lit8 p2, p1, 0xc

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 493
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected condition result ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 477
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must not be negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
