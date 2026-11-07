.class public Lcom/trilead/ssh2/SFTPException;
.super Ljava/io/IOException;
.source "SFTPException.java"


# static fields
.field private static final serialVersionUID:J = 0x807cb554481eb33L


# instance fields
.field private final sftpErrorCode:I

.field private final sftpErrorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 36
    invoke-static {p1, p2}, Lcom/trilead/ssh2/SFTPException;->constructMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    return-void
.end method

.method private static constructMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {p1}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (UNKNOW SFTP ERROR CODE)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getServerErrorCode()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    return v0
.end method

.method public getServerErrorCodeSymbol()Ljava/lang/String;
    .locals 2

    .line 69
    iget v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v0}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOW SFTP ERROR CODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 74
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServerErrorCodeVerbose()Ljava/lang/String;
    .locals 2

    .line 84
    iget v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-static {v0}, Lcom/trilead/ssh2/sftp/ErrorCodes;->getDescription(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is unknown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 89
    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServerErrorMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/SFTPException;->sftpErrorMessage:Ljava/lang/String;

    return-object v0
.end method
