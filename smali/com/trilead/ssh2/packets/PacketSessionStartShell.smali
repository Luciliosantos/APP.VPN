.class public Lcom/trilead/ssh2/packets/PacketSessionStartShell;
.super Ljava/lang/Object;
.source "PacketSessionStartShell.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->recipientChannelID:I

    .line 20
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->wantReply:Z

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->payload:[B

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 28
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 29
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "shell"

    .line 30
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 31
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 32
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->payload:[B

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->payload:[B

    return-object v0
.end method
