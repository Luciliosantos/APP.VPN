.class public Lcom/trilead/ssh2/packets/PacketUserauthFailure;
.super Ljava/lang/Object;
.source "PacketUserauthFailure.java"


# instance fields
.field authThatCanContinue:[Ljava/lang/String;

.field partialSuccess:Z

.field payload:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->payload:[B

    const/4 v1, 0x0

    .line 28
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 32
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x33

    if-ne p1, p2, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

    .line 40
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_USERAUTH_FAILURE packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_USERAUTH_FAILURE! ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

    return-void
.end method


# virtual methods
.method public getAuthThatCanContinue()[Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    return-object v0
.end method

.method public isPartialSuccess()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

    return v0
.end method
