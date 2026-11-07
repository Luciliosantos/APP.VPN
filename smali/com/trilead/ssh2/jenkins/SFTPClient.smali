.class public Lcom/trilead/ssh2/jenkins/SFTPClient;
.super Lcom/trilead/ssh2/SFTPv3Client;
.source "SFTPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;,
        Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;-><init>(Lcom/trilead/ssh2/Connection;)V

    return-void
.end method


# virtual methods
.method public _stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1
    :try_end_0
    .catch Lcom/trilead/ssh2/SFTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Lcom/trilead/ssh2/SFTPException;->getServerErrorCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/jenkins/SFTPClient;->setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V

    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public mkdirs(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2f

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/jenkins/SFTPClient;->mkdirs(Ljava/lang/String;I)V

    .line 89
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/jenkins/SFTPClient;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 91
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;

    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPInputStream;-><init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-object v0
.end method

.method public writeToFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient;->createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/jenkins/SFTPClient$SFTPOutputStream;-><init>(Lcom/trilead/ssh2/jenkins/SFTPClient;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-object v0
.end method
