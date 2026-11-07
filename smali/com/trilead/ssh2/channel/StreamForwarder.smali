.class public Lcom/trilead/ssh2/channel/StreamForwarder;
.super Ljava/lang/Thread;
.source "StreamForwarder.java"


# instance fields
.field buffer:[B

.field c:Lcom/trilead/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field mode:Ljava/lang/String;

.field os:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;

.field sibling:Lcom/trilead/ssh2/channel/StreamForwarder;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object p4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 31
    iput-object p5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 32
    iput-object p6, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 34
    iput-object p2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 35
    iput-object p3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 38
    iput-object p1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ") is cleaning up the connection"

    const-string v1, "StreamForwarder ("

    :goto_0
    const/4 v2, 0x1

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_1

    .line 69
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 82
    :goto_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v3, :cond_5

    .line 84
    :goto_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    nop

    goto :goto_2

    .line 97
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    :catch_3
    :try_start_5
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v0, :cond_5

    .line 106
    :goto_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    goto/16 :goto_a

    .line 50
    :cond_1
    :try_start_6
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_4
    move-exception v3

    .line 58
    :try_start_7
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v4, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closed due to exception in StreamForwarder ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v4, v5, v3, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 69
    :goto_4
    :try_start_8
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 76
    :catch_5
    :try_start_9
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    nop

    .line 82
    :goto_5
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v4, :cond_3

    .line 84
    :goto_6
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    :try_start_a
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catch_7
    nop

    goto :goto_6

    .line 97
    :cond_2
    :try_start_b
    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v4, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 105
    :catch_8
    :try_start_c
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 112
    :catch_9
    :cond_3
    throw v3

    .line 69
    :catch_a
    :goto_7
    :try_start_d
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 76
    :catch_b
    :try_start_e
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_8

    :catch_c
    nop

    .line 82
    :goto_8
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v3, :cond_5

    .line 84
    :goto_9
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    :try_start_f
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_9

    :catch_d
    nop

    goto :goto_9

    .line 97
    :cond_4
    :try_start_10
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 105
    :catch_e
    :try_start_11
    iget-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :catch_f
    :cond_5
    :goto_a
    return-void
.end method
