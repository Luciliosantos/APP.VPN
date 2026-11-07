.class public Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
.super Ljava/lang/Object;
.source "PacketUserauthInfoRequest.java"


# instance fields
.field echo:[Z

.field instruction:Ljava/lang/String;

.field languageTag:Ljava/lang/String;

.field name:Ljava/lang/String;

.field numPrompts:I

.field payload:[B

.field prompt:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->payload:[B

    const/4 v1, 0x0

    .line 27
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x3c

    if-ne p1, p2, :cond_2

    .line 36
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 42
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 43
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 45
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    if-ge v1, p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 48
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p2

    aput-boolean p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_USERAUTH_INFO_REQUEST packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_USERAUTH_INFO_REQUEST! ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getEcho()[Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPrompts()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    return v0
.end method

.method public getPrompt()[Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    return-object v0
.end method
