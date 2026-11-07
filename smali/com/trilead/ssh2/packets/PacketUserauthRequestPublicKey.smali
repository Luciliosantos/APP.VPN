.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
.super Ljava/lang/Object;
.source "PacketUserauthRequestPublicKey.java"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field pk:[B

.field pkAlgoName:Ljava/lang/String;

.field serviceName:Ljava/lang/String;

.field sig:[B

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 29
    iput-object p5, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    const/4 v1, 0x0

    .line 35
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 39
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_0

    .line 42
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_USERAUTH_REQUEST! ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 45
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not implemented!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x32

    .line 53
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const-string v1, "publickey"

    .line 56
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 58
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 61
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    return-object v0
.end method
