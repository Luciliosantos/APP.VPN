.class public Lcom/trilead/ssh2/LocalStreamForwarder;
.super Ljava/lang/Object;
.source "LocalStreamForwarder.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 34
    iput-object p2, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->host_to_connect:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->port_to_connect:I

    const-string v0, "127.0.0.1"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v2, "Closed due to user request."

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/trilead/ssh2/LocalStreamForwarder;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method
