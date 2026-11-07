.class Lcom/trilead/ssh2/channel/Channel$Output;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Output"
.end annotation


# instance fields
.field buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

.field sink:Ljava/io/OutputStream;

.field stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/Channel;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 3

    .line 85
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/trilead/ssh2/channel/FifoBuffer;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    const/16 v2, 0x800

    invoke-direct {v0, p1, v2, v1}, Lcom/trilead/ssh2/channel/FifoBuffer;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output is being piped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eof()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->close()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/trilead/ssh2/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public pipeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    .line 146
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/channel/FifoBuffer;->writeTo(Ljava/io/OutputStream;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(I)V

    :cond_0
    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    .line 151
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/FifoBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public readable()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->readable()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->buffer:Lcom/trilead/ssh2/channel/FifoBuffer;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/channel/FifoBuffer;->write([BII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel$Output;->sink:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel$Output;->this$0:Lcom/trilead/ssh2/channel/Channel;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(IZ)V

    :goto_0
    return-void
.end method
