.class public Lcom/trilead/ssh2/SCPClient;
.super Ljava/lang/Object;
.source "SCPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/SCPClient$LenNamePair;
    }
.end annotation


# instance fields
.field conn:Lcom/trilead/ssh2/Connection;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot accept null argument!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private get([Ljava/lang/String;[Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 635
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_6

    .line 638
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "scp -f"

    .line 643
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 645
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    .line 648
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 646
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    .line 659
    invoke-virtual {p1, v1}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 669
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 664
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error during SCP transfer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/io/IOException;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    .line 669
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->close()V

    .line 670
    :cond_5
    throw p2

    .line 636
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of arguments does not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_5

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const-string v2, "Malformed C line sent by remote SCP binary."

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_4

    .line 97
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v3, p1, :cond_1

    .line 113
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    .line 123
    new-instance p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/SCPClient$LenNamePair;-><init>(Lcom/trilead/ssh2/SCPClient;)V

    .line 124
    iput-wide v2, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    .line 125
    iput-object v1, p1, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    return-object p1

    .line 121
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, illegal file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, cannot parse file length."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed C line sent by remote SCP binary, line too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResponse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote scp terminated with error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote scp terminated with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 224
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 225
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 227
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 228
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x0

    .line 230
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_7

    .line 236
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_6

    .line 240
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    const/16 v8, 0x43

    if-ne v5, v8, :cond_4

    .line 254
    invoke-direct {p0, v6}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 261
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 262
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 264
    iget-wide v5, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    int-to-long v7, v0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    const/16 v7, 0x2000

    goto :goto_3

    :cond_1
    long-to-int v7, v5

    .line 274
    :goto_3
    invoke-virtual {v3, v1, p1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_2

    .line 281
    aget-object v8, p2, v4

    invoke-virtual {v8, v1, p1, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_2

    .line 278
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_3
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 288
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 289
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 258
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method private receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 297
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 298
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const v4, 0x9c40

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, 0x0

    .line 300
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 301
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x0

    .line 303
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_8

    .line 309
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_7

    .line 313
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->receiveLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x54

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "Remote SCP error: "

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    const/16 v8, 0x43

    if-ne v5, v8, :cond_5

    .line 327
    invoke-direct {p0, v6}, Lcom/trilead/ssh2/SCPClient;->parseCLine(Ljava/lang/String;)Lcom/trilead/ssh2/SCPClient$LenNamePair;

    move-result-object v5

    .line 334
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 335
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 337
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 342
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    :try_start_1
    iget-wide v5, v5, Lcom/trilead/ssh2/SCPClient$LenNamePair;->length:J

    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v7, v5, v9

    if-lez v7, :cond_3

    int-to-long v9, v0

    cmp-long v7, v5, v9

    if-lez v7, :cond_1

    const/16 v7, 0x2000

    goto :goto_3

    :cond_1
    long-to-int v7, v5

    .line 354
    :goto_3
    invoke-virtual {v3, v1, p1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_2

    .line 361
    invoke-virtual {v8, v1, p1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v7

    sub-long/2addr v5, v9

    goto :goto_2

    .line 358
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated connection unexpectedly"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 372
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 374
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 375
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v7, v8

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v7, :cond_4

    .line 369
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 370
    :cond_4
    throw p1

    .line 331
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p3, v5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Remote scp terminated unexpectedly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method private receiveLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_2

    .line 71
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-char v1, v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 74
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp terminated unexpectedly."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote scp sent a too long line"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p1

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 135
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ISO-8859-1"

    .line 139
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 142
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    .line 144
    array-length p1, p2

    const/4 p4, 0x0

    invoke-virtual {v0, p2, p4, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    invoke-virtual {v0, p4}, Ljava/io/OutputStream;->write(I)V

    .line 146
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 148
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const-string p1, "E\n"

    .line 150
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 151
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const/16 v3, 0x2000

    new-array v4, v3, [B

    .line 158
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v6

    const v7, 0x9c40

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 159
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x200

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 161
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const/4 v8, 0x0

    .line 163
    :goto_0
    array-length v9, v0

    const-string v10, "ISO-8859-1"

    if-ge v8, v9, :cond_5

    .line 165
    new-instance v9, Ljava/io/File;

    aget-object v11, v0, v8

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    if-eqz v2, :cond_0

    .line 170
    array-length v13, v2

    if-le v13, v8, :cond_0

    aget-object v13, v2, v8

    if-eqz v13, :cond_0

    .line 171
    aget-object v13, v2, v8

    goto :goto_1

    .line 173
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 175
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "C"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 178
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 180
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    .line 186
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v7, v11, v13

    if-lez v7, :cond_3

    int-to-long v13, v3

    cmp-long v7, v11, v13

    if-lez v7, :cond_1

    const/16 v7, 0x2000

    goto :goto_3

    :cond_1
    long-to-int v7, v11

    :goto_3
    const/4 v9, 0x0

    .line 196
    :try_start_1
    invoke-virtual {v10, v4, v9, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    if-ne v13, v7, :cond_2

    .line 199
    invoke-virtual {v5, v4, v9, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v13, v7

    sub-long/2addr v11, v13

    goto :goto_2

    .line 197
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read enough from local file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v7, v10

    goto :goto_4

    .line 207
    :cond_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    const/4 v9, 0x0

    .line 210
    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write(I)V

    .line 211
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 213
    invoke-direct {v1, v6}, Lcom/trilead/ssh2/SCPClient;->readResponse(Ljava/io/InputStream;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v7, :cond_4

    .line 207
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 208
    :cond_4
    throw v0

    :cond_5
    const-string v0, "E\n"

    .line 216
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 217
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/io/OutputStream;

    aput-object p2, p1, v2

    .line 625
    invoke-direct {p0, v1, p1}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;[Ljava/io/OutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 608
    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/SCPClient;->get([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 690
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "scp -f"

    .line 695
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 697
    aget-object v2, p1, v0

    if-eqz v2, :cond_2

    .line 700
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept empty filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 698
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    .line 710
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v2}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 711
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/SCPClient;->receiveFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 721
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 716
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string v1, "Error during SCP transfer."

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    .line 721
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 722
    :cond_5
    throw p1

    .line 688
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0600"

    .line 393
    invoke-virtual {p0, v0, p2, p1}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 429
    invoke-virtual {p0, v0, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    .line 451
    invoke-virtual {p0, v1, p1, p3, p4}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "0600"

    .line 471
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/SCPClient;->put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 498
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 501
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 502
    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 506
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "."

    .line 508
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scp -t -d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 513
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendBytes(Lcom/trilead/ssh2/Session;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 523
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 518
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    .line 523
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 524
    :cond_4
    throw p1

    .line 499
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "0600"

    .line 411
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/trilead/ssh2/SCPClient;->put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    .line 558
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Invalid mode."

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 561
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 562
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    return-void

    .line 568
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 569
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "."

    .line 571
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scp -t -d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 573
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 575
    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 576
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null filename."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/SCPClient;->conn:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    .line 582
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, v0, p1, p2, p4}, Lcom/trilead/ssh2/SCPClient;->sendFiles(Lcom/trilead/ssh2/Session;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 592
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 587
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error during SCP transfer."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v0, :cond_7

    .line 592
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 593
    :cond_7
    throw p1

    .line 559
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
