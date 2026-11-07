.class public Lcom/trilead/ssh2/packets/PacketWindowChange;
.super Ljava/lang/Object;
.source "PacketWindowChange.java"


# instance fields
.field public character_height:I

.field public character_width:I

.field payload:[B

.field public pixel_height:I

.field public pixel_width:I

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->recipientChannelID:I

    .line 23
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->character_width:I

    .line 24
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->character_height:I

    .line 25
    iput p4, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->pixel_width:I

    .line 26
    iput p5, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->pixel_height:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->payload:[B

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 34
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 35
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "window-change"

    .line 36
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 38
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->character_width:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 39
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->character_height:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 40
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->pixel_width:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 41
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->pixel_height:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 43
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->payload:[B

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketWindowChange;->payload:[B

    return-object v0
.end method
