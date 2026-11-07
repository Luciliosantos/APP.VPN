.class public Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;
.super Ljava/lang/Object;
.source "PacketSessionPtyRequest.java"


# instance fields
.field public character_height:I

.field public character_width:I

.field payload:[B

.field public pixel_height:I

.field public pixel_width:I

.field public recipientChannelID:I

.field public term:Ljava/lang/String;

.field public terminal_modes:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;IIII[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

    .line 28
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    .line 29
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    .line 31
    iput p5, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    .line 32
    iput p6, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    .line 33
    iput p7, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    .line 34
    iput-object p8, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 42
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 43
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "pty-req"

    .line 44
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 46
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 48
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 49
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 50
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 51
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 53
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    return-object v0
.end method
