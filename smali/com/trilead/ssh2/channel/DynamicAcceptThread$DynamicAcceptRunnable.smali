.class Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
.super Ljava/lang/Object;
.source "DynamicAcceptThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicAcceptRunnable"
.end annotation


# static fields
.field private static final idleTimeout:I = 0x57e40


# instance fields
.field private auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field private in:Ljava/io/InputStream;

.field private msg:Lnet/sourceforge/jsocks/ProxyMessage;

.field private out:Ljava/io/OutputStream;

.field private sock:Ljava/net/Socket;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 144
    iput-object p3, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    const-string p2, "DynamicAcceptRunnable"

    .line 146
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 185
    iget v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V

    return-void

    .line 190
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1

    .line 183
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    invoke-direct {p1, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1
.end method

.method private onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    const/4 v1, 0x0

    check-cast v1, Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 203
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V

    .line 205
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 206
    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 207
    iget-object v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-static {v1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->access$100(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;

    move-result-object v1

    iget p1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    const-string v3, "127.0.0.1"

    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    .line 233
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/channel/StreamForwarder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    const-string v10, "RemoteToLocal"

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 235
    new-instance v2, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v7, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    iget-object v8, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    iget-object v9, p1, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    const-string v10, "LocalToRemote"

    move-object v4, v2

    move-object v5, p1

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 253
    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 254
    invoke-virtual {v1}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 255
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    return-void

    :catch_0
    move-exception v1

    .line 243
    :try_start_2
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weird error during creation of StreamForwarder ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v2, p1, v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    .line 225
    :catch_2
    :try_start_3
    iget-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Ljava/io/PushbackInputStream;

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 265
    :goto_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 266
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 271
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 273
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    throw p1
.end method

.method private sendErrorMessage(I)V
    .locals 1

    .line 279
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(I)V

    .line 282
    :try_start_0
    iget-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lnet/sourceforge/jsocks/ProxyMessage;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    const v1, 0x57e40

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/16 v0, 0x32

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    invoke-interface {v1, v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 300
    invoke-static {}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->access$200()Lcom/trilead/ssh2/log/Logger;

    move-result-object v1

    const-string v2, "SOCKS auth failed"

    invoke-virtual {v1, v0, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return-void

    .line 304
    :cond_0
    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 305
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 307
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 308
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V

    return-void

    :catch_0
    move-exception v1

    .line 293
    invoke-static {}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->access$200()Lcom/trilead/ssh2/log/Logger;

    move-result-object v2

    const-string v3, "Could not start SOCKS session"

    invoke-virtual {v2, v0, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->startSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v0, :cond_0

    .line 176
    :goto_0
    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->access$000(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 173
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 156
    :try_start_2
    instance-of v1, v0, Lnet/sourceforge/jsocks/SocksException;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 157
    check-cast v0, Lnet/sourceforge/jsocks/SocksException;

    iget v0, v0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    goto :goto_1

    .line 158
    :cond_1
    instance-of v1, v0, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 160
    :cond_2
    instance-of v1, v0, Ljava/net/ConnectException;

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    .line 162
    :cond_3
    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_6

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    .line 170
    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sendErrorMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_3
    return-void

    :goto_4
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    if-eqz v1, :cond_7

    .line 176
    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 177
    :cond_7
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-static {v1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->access$000(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 178
    throw v0
.end method
