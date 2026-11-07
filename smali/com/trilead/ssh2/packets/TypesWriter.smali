.class public Lcom/trilead/ssh2/packets/TypesWriter;
.super Ljava/lang/Object;
.source "TypesWriter.java"


# instance fields
.field arr:[B

.field pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 20
    iput-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method private resize(I)V
    .locals 3

    .line 26
    new-array p1, p1, [B

    .line 27
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iput-object p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    return-void
.end method


# virtual methods
.method public getBytes([B)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getBytes()[B
    .locals 4

    .line 38
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    new-array v1, v0, [B

    .line 39
    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public length()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return v0
.end method

.method public writeBoolean(Z)V
    .locals 3

    .line 82
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 83
    array-length v0, v1

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 98
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(II)V

    .line 99
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeByte(II)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 90
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 91
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    int-to-byte p1, p1

    aput-byte p1, v0, p2

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    .line 114
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeBytes([BII)V
    .locals 3

    .line 119
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 120
    array-length v0, v1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeMPInt(Ljava/math/BigInteger;)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    goto :goto_0

    .line 109
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    :goto_0
    return-void
.end method

.method public writeNameList([Ljava/lang/String;)V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 161
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 146
    :goto_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 v0, 0x0

    .line 147
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 154
    :goto_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    const/4 p2, 0x0

    .line 155
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeString([BII)V
    .locals 0

    .line 128
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    return-void
.end method

.method public writeUINT32(I)V
    .locals 1

    .line 61
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(II)V

    .line 62
    iget p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    return-void
.end method

.method public writeUINT32(II)V
    .locals 3

    add-int/lit8 v0, p2, 0x4

    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x20

    .line 51
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    .line 54
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    .line 55
    aput-byte v2, v0, p2

    int-to-byte p1, p1

    .line 56
    aput-byte p1, v0, v1

    return-void
.end method

.method public writeUINT64(J)V
    .locals 7

    .line 67
    iget v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    array-length v3, v2

    const/16 v4, 0x20

    if-le v0, v3, :cond_0

    .line 68
    array-length v0, v2

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->resize(I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/TypesWriter;->arr:[B

    iget v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v5, 0x38

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 71
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 72
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 73
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 74
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 75
    iput v2, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x1

    .line 76
    iput v3, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    shr-long v4, p1, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    .line 77
    iput v1, p0, Lcom/trilead/ssh2/packets/TypesWriter;->pos:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v3

    return-void
.end method
