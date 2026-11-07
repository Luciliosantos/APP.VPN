.class public Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;
.super Ljava/lang/Object;
.source "DhGroupExchange.java"


# instance fields
.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private final hashAlgorithm:Ljava/lang/String;

.field private k:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    .line 48
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    .line 49
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->hashAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SHA1"

    .line 41
    invoke-direct {p0, v0, p1, p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B
    .locals 2

    .line 103
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 106
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 107
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 108
    invoke-virtual {v0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 109
    invoke-virtual {v0, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 110
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    if-lez p1, :cond_0

    .line 111
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 112
    :cond_0
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 113
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    if-lez p1, :cond_1

    .line 114
    invoke-virtual {p6}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 116
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 117
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 118
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 119
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 121
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p1

    return-object p1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    .line 56
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    .line 57
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->g:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 91
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->f:Ljava/math/BigInteger;

    .line 97
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->k:Ljava/math/BigInteger;

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid f specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
