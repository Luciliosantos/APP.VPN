.class final Lcom/trilead/ssh2/Connection$PumpThread;
.super Ljava/lang/Thread;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PumpThread"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "pump thread"

    .line 1596
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1597
    iput-object p1, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    .line 1598
    iput-object p2, p0, Lcom/trilead/ssh2/Connection$PumpThread;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1605
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/trilead/ssh2/Connection$PumpThread;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 1610
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/Connection$PumpThread;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1613
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
