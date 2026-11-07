.class public Lcom/romzkie/ultrasshservice/util/StreamGobbler;
.super Ljava/lang/Thread;
.source "StreamGobbler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;

.field private final reader:Ljava/io/BufferedReader;

.field private writer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 21
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->listener:Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->reader:Ljava/io/BufferedReader;

    .line 16
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->writer:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->writer:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->listener:Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1, v0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
