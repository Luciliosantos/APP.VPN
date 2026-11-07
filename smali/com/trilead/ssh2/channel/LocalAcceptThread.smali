.class public Lcom/trilead/ssh2/channel/LocalAcceptThread;
.super Ljava/lang/Thread;
.source "LocalAcceptThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field port_to_connect:I

.field final ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 27
    iput-object p3, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 30
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 37
    iput-object p3, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 40
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 41
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 62
    :catch_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 78
    :try_start_2
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    iget v2, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v5

    .line 78
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v13, 0x1

    .line 99
    :try_start_3
    new-instance v14, Lcom/trilead/ssh2/channel/StreamForwarder;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "RemoteToLocal"

    move-object v6, v14

    move-object v7, v0

    invoke-direct/range {v6 .. v12}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 100
    new-instance v8, Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, v0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    const-string v7, "LocalToRemote"

    move-object v1, v8

    move-object v2, v0

    move-object v3, v14

    invoke-direct/range {v1 .. v7}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    invoke-virtual {v14, v13}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 118
    invoke-virtual {v8, v13}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 119
    invoke-virtual {v14}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 120
    invoke-virtual {v8}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 107
    :try_start_4
    iget-object v2, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weird error during creation of StreamForwarder ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v13}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    goto :goto_0

    .line 88
    :catch_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 66
    :catch_3
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    return-void

    .line 52
    :catch_4
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    return-void
.end method

.method public stopWorking()V
    .locals 1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
