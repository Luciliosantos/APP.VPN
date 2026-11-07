.class public Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;
.super Ljava/lang/Object;
.source "PacketChannelTrileadPing.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->recipientChannelID:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->payload:[B

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 27
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 28
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "trilead-ping"

    .line 29
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->payload:[B

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->payload:[B

    return-object v0
.end method
