.class public Lcom/trilead/ssh2/packets/PacketSessionExecCommand;
.super Ljava/lang/Object;
.source "PacketSessionExecCommand.java"


# instance fields
.field public command:Ljava/lang/String;

.field payload:[B

.field public recipientChannelID:I

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->recipientChannelID:I

    .line 21
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->wantReply:Z

    .line 22
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->command:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->payload:[B

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 30
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 31
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "exec"

    .line 32
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 34
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->payload:[B

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->payload:[B

    return-object v0
.end method
