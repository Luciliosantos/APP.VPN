.class public Lcom/trilead/ssh2/SFTPv3Client;
.super Ljava/lang/Object;
.source "SFTPv3Client.java"


# instance fields
.field charsetName:Ljava/lang/String;

.field final conn:Lcom/trilead/ssh2/Connection;

.field final debug:Ljava/io/PrintStream;

.field flag_closed:Z

.field is:Ljava/io/InputStream;

.field next_request_id:I

.field os:Ljava/io/OutputStream;

.field protocol_version:I

.field server_extensions:Ljava/util/HashMap;

.field final sess:Lcom/trilead/ssh2/Session;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;-><init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/Connection;Ljava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->flag_closed:Z

    .line 71
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    .line 74
    iput v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 93
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->conn:Lcom/trilead/ssh2/Connection;

    .line 94
    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_0

    const-string v0, "Opening session and starting SFTP subsystem."

    .line 97
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    const-string p2, "sftp"

    .line 100
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/Session;->startSubSystem(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    .line 103
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0x800

    invoke-direct {p2, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    .line 105
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->init()V

    return-void

    .line 106
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "There is a problem with the streams of the underlying channel."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot accept null argument!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->client:Lcom/trilead/ssh2/SFTPv3Client;

    if-ne v0, p0, :cond_1

    .line 177
    iget-boolean p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The file handle was created with another SFTPv3FileHandle instance."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final closeHandle([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 266
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 267
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 269
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 271
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method private createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B
    .locals 3

    .line 1111
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1117
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0

    .line 1121
    :cond_0
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1124
    :cond_1
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 1127
    :cond_2
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    .line 1130
    :cond_3
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x8

    .line 1133
    :cond_4
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1135
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1136
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1138
    :cond_5
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1140
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1141
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1144
    :cond_6
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1145
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1147
    :cond_7
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 1149
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1150
    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1154
    :cond_8
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private final expandString([BII)Ljava/lang/String;
    .locals 5

    .line 827
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    .line 831
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    int-to-char v2, v2

    .line 835
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 839
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private expectStatusOKMessage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x84d0

    .line 531
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_0

    const-string v2, "Got REPLY."

    .line 535
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 539
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 541
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 543
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, p1, :cond_3

    const/16 p1, 0x65

    if-ne v0, p1, :cond_2

    .line 550
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 555
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 548
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 545
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final generateNextRequestID()I
    .locals 2

    .line 256
    monitor-enter p0

    .line 258
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->next_request_id:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const-string v1, "Sending SSH_FXP_INIT (3)..."

    .line 853
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 855
    :cond_0
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x3

    .line 856
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v2, 0x1

    .line 857
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 861
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    const-string v2, "Waiting for SSH_FXP_VERSION..."

    .line 862
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    const v2, 0x84d0

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 866
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 873
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    .line 875
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    .line 876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSH_FXP_VERSION: protocol_version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    :cond_2
    iget v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    if-ne v2, v1, :cond_5

    .line 883
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-eqz v1, :cond_4

    .line 885
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 887
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->server_extensions:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_3

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSH_FXP_VERSION: extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-direct {p0, v2, v3, v1}, Lcom/trilead/ssh2/SFTPv3Client;->expandString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    .line 879
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is currently not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The server did not send a SSH_FXP_VERSION packet (got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final openDirectory(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 783
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 784
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_OPENDIR..."

    .line 788
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 789
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0xb

    .line 792
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 794
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 796
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 798
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 800
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 806
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string v0, "Got SSH_FXP_HANDLE."

    .line 808
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 812
    :cond_1
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 817
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 820
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 822
    new-instance v1, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {v1, v0, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 802
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1161
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1162
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1164
    invoke-direct {p0, p3}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 1166
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_OPEN..."

    .line 1168
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1169
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/4 p1, 0x3

    .line 1172
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 1174
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 1176
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1178
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 1180
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_4

    const/16 p3, 0x66

    if-ne p1, p3, :cond_2

    .line 1186
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string p3, "Got SSH_FXP_HANDLE."

    .line 1188
    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1189
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 1192
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/SFTPv3FileHandle;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/trilead/ssh2/SFTPv3FileHandle;-><init>(Lcom/trilead/ssh2/SFTPv3Client;[B)V

    return-object p1

    :cond_2
    const/16 p3, 0x65

    if-eq p1, p3, :cond_3

    .line 1196
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1198
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 1199
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1201
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 1182
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_0

    const-string v3, "SSH_FILEXFER_ATTR_SIZE"

    .line 298
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT64()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->size:Ljava/lang/Long;

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_2

    const-string v3, "SSH_FILEXFER_ATTR_V3_UIDGID"

    .line 305
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->uid:Ljava/lang/Integer;

    .line 307
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->gid:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_5

    .line 312
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_4

    const-string v3, "SSH_FILEXFER_ATTR_PERMISSIONS"

    .line 313
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    :cond_5
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_7

    .line 319
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_6

    const-string v3, "SSH_FILEXFER_ATTR_V3_ACMODTIME"

    .line 320
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_6
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->atime:Ljava/lang/Long;

    .line 322
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->mtime:Ljava/lang/Long;

    :cond_7
    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 328
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 330
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_8

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSH_FILEXFER_ATTR_EXTENDED ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-lez v1, :cond_9

    .line 337
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 338
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    return-object v0
.end method

.method private final readBytes([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2

    .line 215
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    if-gt v0, p3, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Underlying stream implementation is bogus!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected end of sftp stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private final receiveMessage(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 240
    invoke-direct {p0, v1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    .line 242
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    if-lez v0, :cond_0

    .line 247
    new-array p1, v0, [B

    .line 249
    invoke-direct {p0, p1, v2, v0}, Lcom/trilead/ssh2/SFTPv3Client;->readBytes([BII)V

    return-object p1

    .line 245
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sftp packet len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final scanDirectory([B)Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 713
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v3, 0x0

    .line 714
    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 716
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_1

    const-string v4, "Sending SSH_FXP_READDIR..."

    .line 718
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    :cond_1
    const/16 v3, 0xc

    .line 722
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const/high16 v2, 0x10000

    .line 727
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v2

    .line 729
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_2

    const-string v4, "Got REPLY."

    .line 731
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 735
    :cond_2
    new-instance v3, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v3, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 737
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v2

    .line 739
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    if-ne v4, v1, :cond_8

    const/16 v1, 0x68

    if-ne v2, v1, :cond_5

    .line 745
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 747
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v2, :cond_3

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name entries..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-lez v1, :cond_0

    .line 752
    new-instance v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;

    invoke-direct {v2}, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;-><init>()V

    .line 754
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    .line 755
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->longEntry:Ljava/lang/String;

    .line 757
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object v4

    iput-object v4, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->attributes:Lcom/trilead/ssh2/SFTPv3FileAttributes;

    .line 758
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 760
    iget-object v4, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v4, :cond_4

    .line 761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/trilead/ssh2/SFTPv3DirectoryEntry;->filename:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    const/16 p1, 0x65

    if-ne v2, p1, :cond_7

    .line 770
    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    return-object v0

    .line 775
    :cond_6
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v3}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 768
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final sendMessage(II[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[BII)V

    return-void
.end method

.method private final sendMessage(II[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x18

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 189
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x10

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 190
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-eq p1, v1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 203
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->os:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 403
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 404
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_STAT/SSH_FXP_LSTAT..."

    .line 408
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 412
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 414
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 416
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p2, :cond_1

    const-string v1, "Got REPLY."

    .line 418
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    .line 422
    :cond_1
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 424
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 426
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    if-ne v1, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 432
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 436
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 438
    :cond_3
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 440
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 428
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public _stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1
    :try_end_0
    .catch Lcom/trilead/ssh2/SFTPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1410
    invoke-virtual {p1}, Lcom/trilead/ssh2/SFTPException;->getServerErrorCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 660
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 661
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_REALPATH..."

    .line 665
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x10

    .line 669
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 671
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 673
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 675
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 679
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 681
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 683
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 689
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 694
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 692
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 698
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_4
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 702
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 685
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chmod(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1512
    new-instance v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;

    invoke-direct {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;-><init>()V

    .line 1513
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/trilead/ssh2/SFTPv3FileAttributes;->permissions:Ljava/lang/Integer;

    .line 1514
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->sess:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    return-void
.end method

.method public closeFile(Lcom/trilead/ssh2/SFTPv3FileHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1377
    :try_start_0
    iget-boolean v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :cond_0
    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->isClosed:Z

    .line 1385
    throw v1

    .line 1373
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the handle argument may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1074
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1087
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createFileTruncate(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 1106
    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 632
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 633
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object p2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_SYMLINK..."

    .line 638
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x14

    .line 642
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 644
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fsetstat(Lcom/trilead/ssh2/SFTPv3FileHandle;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 599
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 601
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 602
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 603
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 605
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_FSETSTAT..."

    .line 607
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 608
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0xa

    .line 611
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 613
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public fstat(Lcom/trilead/ssh2/SFTPv3FileHandle;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    .line 357
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 359
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 360
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 362
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_FSTAT..."

    .line 364
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x8

    .line 368
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 370
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 372
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 374
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 378
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 380
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 382
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_4

    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    .line 388
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->readAttrs(Lcom/trilead/ssh2/packets/TypesReader;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 392
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 396
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 384
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 903
    iget v0, p0, Lcom/trilead/ssh2/SFTPv3Client;->protocol_version:I

    return v0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openDirectory(Ljava/lang/String;)[B

    move-result-object p1

    .line 930
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->scanDirectory([B)Ljava/util/Vector;

    move-result-object v0

    .line 931
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->closeHandle([B)V

    return-object v0
.end method

.method public lstat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 470
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 948
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 949
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 950
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 951
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 953
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0xe

    invoke-direct {p0, p2, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 955
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public mkdirs(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->_stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/trilead/ssh2/SFTPv3FileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 1430
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 1432
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->mkdirs(Ljava/lang/String;I)V

    .line 1435
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/SFTPv3Client;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1437
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1005
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1006
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 p2, 0x12

    invoke-direct {p0, p2, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 1011
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFileRW(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1035
    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->openFile(Ljava/lang/String;ILcom/trilead/ssh2/SFTPv3FileAttributes;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    const v0, 0x8000

    if-gt p6, v0, :cond_8

    if-lez p6, :cond_8

    .line 1234
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 1236
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1237
    iget-object v2, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length p1, p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1238
    invoke-virtual {v1, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1239
    invoke-virtual {v1, p6}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 1241
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_READ..."

    .line 1243
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1244
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/4 p1, 0x5

    .line 1247
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 1249
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 1251
    new-instance p2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1253
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 1255
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p3

    if-ne p3, v0, :cond_7

    const/16 p3, 0x67

    if-ne p1, p3, :cond_3

    .line 1261
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_1

    const-string p3, "Got SSH_FXP_DATA..."

    .line 1263
    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1264
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 1267
    :cond_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    if-ltz p1, :cond_2

    if-gt p1, p6, :cond_2

    .line 1272
    invoke-virtual {p2, p4, p5, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes([BII)V

    return p1

    .line 1270
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid length field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 p3, 0x65

    if-ne p1, p3, :cond_6

    .line 1280
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    .line 1284
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_4

    const-string p2, "Got SSH_FX_EOF."

    .line 1286
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1287
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_4
    const/4 p1, -0x1

    return p1

    .line 1293
    :cond_5
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1295
    new-instance p3, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p3, p2, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p3

    .line 1278
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1257
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1232
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid len argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->openFileRO(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    .line 1476
    new-instance v0, Lcom/trilead/ssh2/SFTPv3Client$2;

    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/SFTPv3Client$2;-><init>(Lcom/trilead/ssh2/SFTPv3Client;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-object v0
.end method

.method public readLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 484
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 485
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string v2, "Sending SSH_FXP_READLINK..."

    .line 489
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x13

    .line 493
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    const p1, 0x84d0

    .line 495
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object p1

    .line 497
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v1, :cond_1

    const-string v2, "Got REPLY."

    .line 499
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 503
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 505
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    .line 507
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v0, 0x68

    if-ne p1, v0, :cond_3

    .line 513
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 518
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 516
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid SSH_FXP_NAME packet."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x65

    if-eq p1, v0, :cond_4

    .line 522
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_4
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    .line 526
    new-instance v0, Lcom/trilead/ssh2/SFTPException;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 509
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The server sent an invalid id field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rm(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 968
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 969
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 973
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 986
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 987
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 991
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    .line 151
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This charset is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public setstat(Ljava/lang/String;Lcom/trilead/ssh2/SFTPv3FileAttributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v0

    .line 571
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 572
    iget-object v2, p0, Lcom/trilead/ssh2/SFTPv3Client;->charsetName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->createAttrs(Lcom/trilead/ssh2/SFTPv3FileAttributes;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 575
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz p1, :cond_0

    const-string p2, "Sending SSH_FXP_SETSTAT..."

    .line 577
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    :cond_0
    const/16 p1, 0x9

    .line 581
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    .line 583
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->expectStatusOKMessage(I)V

    return-void
.end method

.method public stat(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/SFTPv3Client;->statBoth(Ljava/lang/String;I)Lcom/trilead/ssh2/SFTPv3FileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/trilead/ssh2/SFTPv3FileHandle;J[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1311
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->checkHandleValidAndOpen(Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    :goto_0
    if-lez p6, :cond_5

    const v0, 0x8000

    if-le p6, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p6

    .line 1320
    :goto_1
    invoke-direct {p0}, Lcom/trilead/ssh2/SFTPv3Client;->generateNextRequestID()I

    move-result v1

    .line 1322
    new-instance v2, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v2}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 1323
    iget-object v3, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/trilead/ssh2/SFTPv3FileHandle;->fileHandle:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1324
    invoke-virtual {v2, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT64(J)V

    .line 1325
    invoke-virtual {v2, p4, p5, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 1327
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    if-eqz v3, :cond_1

    const-string v4, "Sending SSH_FXP_WRITE..."

    .line 1329
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1330
    iget-object v3, p0, Lcom/trilead/ssh2/SFTPv3Client;->debug:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    :cond_1
    const/4 v3, 0x6

    .line 1333
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/trilead/ssh2/SFTPv3Client;->sendMessage(II[B)V

    int-to-long v2, v0

    add-long/2addr p2, v2

    add-int/2addr p5, v0

    sub-int/2addr p6, v0

    const v0, 0x84d0

    .line 1340
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/SFTPv3Client;->receiveMessage(I)[B

    move-result-object v0

    .line 1342
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, v0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 1344
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 1346
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    if-ne v3, v1, :cond_4

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 1353
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1358
    :cond_2
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1360
    new-instance p2, Lcom/trilead/ssh2/SFTPException;

    invoke-direct {p2, p1, v0}, Lcom/trilead/ssh2/SFTPException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1351
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The SFTP server sent an unexpected packet type ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1348
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server sent an invalid id field."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1449
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/SFTPv3Client;->createFile(Ljava/lang/String;)Lcom/trilead/ssh2/SFTPv3FileHandle;

    move-result-object p1

    .line 1450
    new-instance v0, Lcom/trilead/ssh2/SFTPv3Client$1;

    invoke-direct {v0, p0, p1}, Lcom/trilead/ssh2/SFTPv3Client$1;-><init>(Lcom/trilead/ssh2/SFTPv3Client;Lcom/trilead/ssh2/SFTPv3FileHandle;)V

    return-object v0
.end method
