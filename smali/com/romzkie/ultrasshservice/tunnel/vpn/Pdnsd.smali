.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;
.super Ljava/lang/Thread;
.source "Pdnsd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;
    }
.end annotation


# static fields
.field private static final PDNSD_BIN:Ljava/lang/String; = "libpdnsd.so"

.field private static final PDNSD_SERVER:Ljava/lang/String; = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n uptest = none;\n }\n"

.field private static final PDNSD_SERVER_TEST:Ljava/lang/String; = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n reject = ::/0;\n reject_policy = negate;\n reject_recursively = on;\n timeout = 5;\n }\n"

.field private static final TAG:Ljava/lang/String; = "PdnsdThread"


# instance fields
.field private filePdnsd:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDnsHosts:[Ljava/lang/String;

.field private mDnsPort:I

.field private mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;

.field private mPdnsdHost:Ljava/lang/String;

.field private mPdnsdPort:I

.field private mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mDnsHosts:[Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mDnsPort:I

    .line 47
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mPdnsdHost:Ljava/lang/String;

    .line 48
    iput p5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mPdnsdPort:I

    return-void
.end method

.method private makePdnsdConf(Ljava/io/File;[Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    sget v1, Lcom/romzkie/ultrasshservice/R$raw;->pdnsd_local:I

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/util/FileUtils;->readFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    :goto_0
    array-length v4, p2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v4, :cond_0

    .line 127
    aget-object v4, p2, v3

    new-array v5, v5, [Ljava/lang/Object;

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    aput-object v4, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n uptest = none;\n }\n"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v7

    aput-object p4, p2, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v5

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "pdnsd conf:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PdnsdThread"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p3, Ljava/io/File;

    const-string p4, "pdnsd.conf"

    invoke-direct {p3, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 138
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 140
    :cond_1
    invoke-static {p3, p2}, Lcom/romzkie/ultrasshservice/util/FileUtils;->saveTextFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 142
    new-instance p2, Ljava/io/File;

    const-string p4, "pdnsd.cache"

    invoke-direct {p2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 145
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p3
.end method


# virtual methods
.method public declared-synchronized interrupt()V
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 109
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 114
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;->killProcess(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 117
    :try_start_2
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 118
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;->onStart()V

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 60
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mDnsHosts:[Ljava/lang/String;

    iget v5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mDnsPort:I

    iget-object v6, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mPdnsdHost:Ljava/lang/String;

    iget v7, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mPdnsdPort:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->makePdnsdConf(Ljava/io/File;[Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libpdnsd.so"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -v9 -c "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 75
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$1;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$1;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;)V

    .line 82
    new-instance v1, Lcom/romzkie/ultrasshservice/util/StreamGobbler;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;)V

    .line 83
    new-instance v2, Lcom/romzkie/ultrasshservice/util/StreamGobbler;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;)V

    .line 85
    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->start()V

    .line 86
    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->start()V

    .line 88
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pdnsd Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Pdnsd Error"

    .line 91
    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 97
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;->onStop()V

    :cond_1
    return-void
.end method

.method public setOnPdnsdListener(Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$OnPdnsdListener;

    return-void
.end method
