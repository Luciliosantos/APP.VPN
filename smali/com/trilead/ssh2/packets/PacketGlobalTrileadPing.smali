.class public Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;
.super Ljava/lang/Object;
.source "PacketGlobalTrileadPing.java"


# instance fields
.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->payload:[B

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x50

    .line 23
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const-string v1, "trilead-ping"

    .line 25
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 28
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->payload:[B

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->payload:[B

    return-object v0
.end method
