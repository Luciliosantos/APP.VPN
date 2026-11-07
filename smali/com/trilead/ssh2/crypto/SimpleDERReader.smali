.class public Lcom/trilead/ssh2/crypto/SimpleDERReader;
.super Ljava/lang/Object;
.source "SimpleDERReader.java"


# instance fields
.field buffer:[B

.field count:I

.field pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 45
    iput v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 44
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER byte array: out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    if-gt p1, v0, :cond_0

    .line 54
    new-array v0, p1, [B

    .line 56
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 59
    iget v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-object v0

    .line 52
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DER byte array: out of data"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_2

    shl-int/lit8 v2, v2, 0x8

    .line 86
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return v0
.end method

.method public ignoreNextObject()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 100
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v1

    if-ltz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 105
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    return v0

    .line 103
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal len in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 194
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    invoke-direct {v1, v2, v3, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 196
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 197
    iget v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-object v1

    .line 191
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal length in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readConstructedType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 206
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected constructed type, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readInt()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 122
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    .line 124
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 120
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal len in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected DER Integer, but found type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readOctetString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected DER Octetstring, but found type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 224
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal len in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readOid()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 157
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 162
    aget-byte v5, v2, v4

    div-int/lit8 v5, v5, 0x28

    if-eqz v5, :cond_1

    if-eq v5, v1, :cond_0

    const/16 v1, 0x32

    .line 171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    aget-byte v1, v2, v4

    add-int/lit8 v1, v1, -0x50

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    aget-byte v1, v2, v4

    add-int/lit8 v1, v1, -0x28

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_1
    if-ge v4, v0, :cond_3

    const/4 v1, 0x7

    shl-long/2addr v7, v1

    .line 177
    aget-byte v1, v2, v4

    and-int/lit8 v1, v1, 0x7f

    int-to-long v9, v1

    add-long/2addr v7, v9

    .line 178
    aget-byte v1, v2, v4

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    const/16 v1, 0x2e

    .line 179
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide v7, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal len in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected DER OID, but found type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readSequenceAsByteArray()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readLength()I

    move-result v0

    if-ltz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 141
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readBytes(I)[B

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal len in DER object ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected DER Sequence, but found type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetInput([B)V
    .locals 2

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([BII)V

    return-void
.end method

.method public resetInput([BII)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->buffer:[B

    .line 37
    iput p2, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->pos:I

    .line 38
    iput p3, p0, Lcom/trilead/ssh2/crypto/SimpleDERReader;->count:I

    return-void
.end method
