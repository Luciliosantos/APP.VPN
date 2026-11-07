.class public Lcom/trilead/ssh2/packets/PacketIgnore;
.super Ljava/lang/Object;
.source "PacketIgnore.java"


# instance fields
.field data:[B

.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    const/4 v1, 0x0

    .line 31
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_IGNORE packet! ("

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
.method public getPayload()[B
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/4 v1, 0x2

    .line 48
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->data:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 51
    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 53
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->data:[B

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    return-void
.end method
