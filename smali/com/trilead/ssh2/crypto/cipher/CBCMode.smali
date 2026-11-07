.class public Lcom/trilead/ssh2/crypto/cipher/CBCMode;
.super Ljava/lang/Object;
.source "CBCMode.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# instance fields
.field blockSize:I

.field cbc_vector:[B

.field doEncrypt:Z

.field tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field tmp_vector:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 26
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    .line 27
    iput-boolean p3, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->doEncrypt:Z

    .line 29
    array-length p3, p2

    if-ne p1, p3, :cond_0

    .line 33
    new-array p3, p1, [B

    iput-object p3, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 34
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    const/4 v0, 0x0

    .line 35
    invoke-static {p2, v0, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IV must be "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long! (currently "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptBlock([BI[BI)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    iget v1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 61
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    if-ge v2, p1, :cond_0

    add-int p1, p4, v2

    .line 62
    aget-byte p2, p3, p1

    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    aget-byte v0, v0, v2

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p3, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 67
    iget-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    .line 68
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tmp_vector:[B

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    aget-byte v3, v2, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->tc:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    iget-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    invoke-interface {p1, p2, v0, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 50
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->cbc_vector:[B

    iget p2, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    invoke-static {p3, p4, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->blockSize:I

    return v0
.end method

.method public init(Z[B)V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->doEncrypt:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->encryptBlock([BI[BI)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;->decryptBlock([BI[BI)V

    :goto_0
    return-void
.end method
