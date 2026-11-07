.class public final Lcom/trilead/ssh2/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelOutputStream.java"


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field isClosed:Z


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 37
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->sendEOF(Lcom/trilead/ssh2/channel/Channel;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 29
    invoke-virtual {p0, v1, v2, v0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_2

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 57
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-ltz v0, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This OutputStream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
