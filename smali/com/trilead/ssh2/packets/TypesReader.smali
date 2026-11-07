.class public Lcom/trilead/ssh2/packets/TypesReader;
.super Ljava/lang/Object;
.source "TypesReader.java"


# instance fields
.field arr:[B

.field max:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 24
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 25
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 26
    array-length p1, p1

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 31
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 32
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 33
    array-length v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_0

    .line 35
    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    .line 20
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    .line 41
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    .line 42
    iput p2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p3, p2

    .line 43
    iput p3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ltz p2, :cond_1

    .line 45
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_0

    .line 48
    array-length p1, p1

    if-gt p3, p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal offset."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 85
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByteString()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 131
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 134
    new-array v2, v0, [B

    .line 135
    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 132
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH byte string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Packet too short."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 65
    new-array v1, p1, [B

    .line 67
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v1

    .line 63
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Packet too short."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readMPINT()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 119
    array-length v1, v0

    if-nez v1, :cond_0

    .line 120
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public readNameList()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 157
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_0

    .line 160
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 162
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object v2

    .line 158
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed SSH string."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v2, v3, :cond_1

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {p1, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    invoke-direct {v2, v3, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, v2

    .line 148
    :goto_0
    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    return-object p1

    .line 145
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Malformed SSH string."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUINT32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUINT64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    add-int/lit8 v1, v0, 0x8

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    if-gt v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->arr:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    .line 107
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v4, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 102
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Packet too short."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remain()I
    .locals 2

    .line 174
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesReader;->max:I

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method
