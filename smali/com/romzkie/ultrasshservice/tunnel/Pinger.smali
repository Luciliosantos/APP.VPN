.class public Lcom/romzkie/ultrasshservice/tunnel/Pinger;
.super Ljava/lang/Thread;
.source "Pinger.java"


# instance fields
.field private final a:Lcom/trilead/ssh2/Connection;

.field private final b:Ljava/lang/String;

.field private c:Lcom/trilead/ssh2/LocalPortForwarder;

.field private d:Z

.field private f:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->a:Lcom/trilead/ssh2/Connection;

    .line 20
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .locals 2

    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->d:Z

    .line 29
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "pinger started"

    .line 35
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->a:Lcom/trilead/ssh2/Connection;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b:Ljava/lang/String;

    const/16 v2, 0x50

    const/16 v3, 0x24b3

    invoke-virtual {v0, v3, v1, v2}, Lcom/trilead/ssh2/Connection;->createLocalPortForwarder(ILjava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->c:Lcom/trilead/ssh2/LocalPortForwarder;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->d:Z

    .line 38
    :goto_0
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    .line 40
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    const-string v1, "127.0.0.1"

    invoke-direct {v0, v1, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->f:Ljava/net/Socket;

    const/16 v1, 0x4e20

    .line 41
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 42
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ HTTP/1.1\r\nHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 45
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->f:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<strong>Pinger: <strong></font><font color=\"#228b22\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</strong>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "Pinger: No Data"

    .line 50
    invoke-static {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 53
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 54
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    :try_start_4
    const-string v0, "pinger stopped"

    .line 61
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->c:Lcom/trilead/ssh2/LocalPortForwarder;

    invoke-virtual {v0}, Lcom/trilead/ssh2/LocalPortForwarder;->close()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/Pinger;->c:Lcom/trilead/ssh2/LocalPortForwarder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
