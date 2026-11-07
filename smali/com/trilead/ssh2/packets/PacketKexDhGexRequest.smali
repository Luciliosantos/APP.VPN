.class public Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
.super Ljava/lang/Object;
.source "PacketKexDhGexRequest.java"


# instance fields
.field max:I

.field min:I

.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->min:I

    .line 22
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->n:I

    .line 23
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->max:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x22

    .line 31
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 32
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->min:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 33
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->n:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 34
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->max:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    return-object v0
.end method
