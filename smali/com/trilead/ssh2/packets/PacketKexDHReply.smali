.class public Lcom/trilead/ssh2/packets/PacketKexDHReply;
.super Ljava/lang/Object;
.source "PacketKexDHReply.java"


# instance fields
.field f:Ljava/math/BigInteger;

.field hostKey:[B

.field payload:[B

.field signature:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->payload:[B

    const/4 v1, 0x0

    .line 24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 28
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->hostKey:[B

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    .line 36
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->signature:[B

    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PADDING IN SSH_MSG_KEXDH_REPLY!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_KEXDH_REPLY! ("

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
.method public getF()Ljava/math/BigInteger;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHostKey()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->hostKey:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->signature:[B

    return-object v0
.end method
