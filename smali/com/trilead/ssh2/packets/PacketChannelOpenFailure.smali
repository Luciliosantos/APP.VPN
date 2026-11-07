.class public Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
.super Ljava/lang/Object;
.source "PacketChannelOpenFailure.java"


# instance fields
.field public description:Ljava/lang/String;

.field public languageTag:Ljava/lang/String;

.field payload:[B

.field public reasonCode:I

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->recipientChannelID:I

    .line 24
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->reasonCode:I

    .line 25
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    const/4 v1, 0x0

    .line 32
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 36
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x5c

    if-ne p1, p2, :cond_1

    .line 43
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->recipientChannelID:I

    .line 44
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->reasonCode:I

    .line 45
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Padding in SSH_MSG_CHANNEL_OPEN_FAILURE packet!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This is not a SSH_MSG_CHANNEL_OPEN_FAILURE! ("

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
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x5c

    .line 57
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 58
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 59
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->reasonCode:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    return-object v0
.end method
