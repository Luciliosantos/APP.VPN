.class public Lcom/trilead/ssh2/packets/PacketSessionX11Request;
.super Ljava/lang/Object;
.source "PacketSessionX11Request.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public singleConnection:Z

.field public wantReply:Z

.field x11AuthenticationCookie:Ljava/lang/String;

.field x11AuthenticationProtocol:Ljava/lang/String;

.field x11ScreenNumber:I


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

    .line 26
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    .line 28
    iput-boolean p3, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    .line 29
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    .line 31
    iput p6, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x62

    .line 39
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 40
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const-string v1, "x11-req"

    .line 41
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 42
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 44
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 45
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 49
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

    return-object v0
.end method
