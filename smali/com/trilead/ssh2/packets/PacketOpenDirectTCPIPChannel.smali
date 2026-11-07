.class public Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;
.super Ljava/lang/Object;
.source "PacketOpenDirectTCPIPChannel.java"


# instance fields
.field channelID:I

.field host_to_connect:Ljava/lang/String;

.field initialWindowSize:I

.field maxPacketSize:I

.field originator_IP_address:Ljava/lang/String;

.field originator_port:I

.field payload:[B

.field port_to_connect:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    .line 28
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    .line 29
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    .line 30
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    .line 32
    iput-object p6, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    .line 33
    iput p7, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x5a

    .line 42
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "direct-tcpip"

    .line 43
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 45
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 46
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 47
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 48
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 49
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 50
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 52
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    return-object v0
.end method
