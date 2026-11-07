.class public Lcom/trilead/ssh2/DynamicPortForwarder;
.super Ljava/lang/Object;
.source "DynamicPortForwarder.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 52
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 53
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 54
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->start()V

    return-void
.end method

.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 44
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 p1, 0x1

    .line 45
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 46
    iget-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    return-void
.end method
