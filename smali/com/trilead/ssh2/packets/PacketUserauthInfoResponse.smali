.class public Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;
.super Ljava/lang/Object;
.source "PacketUserauthInfoResponse.java"


# instance fields
.field payload:[B

.field responses:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x3d

    .line 26
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 27
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->responses:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 29
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->payload:[B

    return-object v0
.end method
