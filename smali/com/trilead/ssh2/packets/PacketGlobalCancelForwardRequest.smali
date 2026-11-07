.class public Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
.super Ljava/lang/Object;
.source "PacketGlobalCancelForwardRequest.java"


# instance fields
.field public bindAddress:Ljava/lang/String;

.field public bindPort:I

.field payload:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->wantReply:Z

    .line 22
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->bindAddress:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->bindPort:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->payload:[B

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x50

    .line 31
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "cancel-tcpip-forward"

    .line 33
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 34
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 35
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->bindAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->bindPort:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->payload:[B

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->payload:[B

    return-object v0
.end method
