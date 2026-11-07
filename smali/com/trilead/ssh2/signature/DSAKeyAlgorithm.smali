.class public Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;
.super Lcom/trilead/ssh2/signature/KeyAlgorithm;
.source "DSAKeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
        "Ljava/security/interfaces/DSAPublicKey;",
        "Ljava/security/interfaces/DSAPrivateKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    const-class v0, Ljava/security/interfaces/DSAPrivateKey;

    const-string v1, "SHA1WithDSA"

    const-string v2, "ssh-dss"

    invoke-direct {p0, v1, v2, v0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/DSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Ljava/security/interfaces/DSAPublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 158
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    .line 164
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 168
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "DSA"

    .line 173
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 174
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, v3, p1, v1, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not generate DSA Key"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 169
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Padding in DSA public key!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/IOWarningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key format found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' while expecting "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeSignature([B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    array-length v0, p1

    const-string v1, "Peer sent corrupt signature"

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 80
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 85
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 87
    array-length v3, p1

    if-ne v3, v2, :cond_6

    .line 90
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const/4 v0, 0x0

    .line 98
    aget-byte v3, p1, v0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v3, :cond_1

    aget-byte v3, p1, v7

    if-nez v3, :cond_1

    aget-byte v3, p1, v5

    if-nez v3, :cond_1

    .line 99
    aget-byte v3, p1, v0

    shl-int/lit8 v3, v3, 0x18

    const/high16 v8, -0x1000000

    and-int/2addr v3, v8

    aget-byte v9, p1, v7

    shl-int/lit8 v9, v9, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    or-int/2addr v3, v9

    aget-byte v9, p1, v5

    shl-int/lit8 v9, v9, 0x8

    const v11, 0xff00

    and-int/2addr v9, v11

    or-int/2addr v3, v9

    aget-byte v9, p1, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    add-int/2addr v3, v4

    add-int/lit8 v9, v3, 0x1

    .line 102
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    and-int/2addr v3, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x10

    and-int/2addr v9, v10

    or-int/2addr v3, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v11

    or-int/2addr v3, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 104
    new-array v9, v3, [B

    .line 105
    invoke-static {p1, v8, v9, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v9

    .line 109
    :cond_1
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v8, 0x14

    .line 110
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 111
    :goto_2
    array-length v10, p1

    add-int/lit8 v10, v10, 0x6

    add-int/2addr v10, v3

    add-int/2addr v10, v9

    .line 112
    new-array v10, v10, [B

    const/16 v11, 0x30

    .line 114
    aput-byte v11, v10, v0

    .line 116
    array-length v11, p1

    if-ne v11, v2, :cond_4

    const/16 v1, 0x2c

    .line 120
    aput-byte v1, v10, v7

    .line 121
    aget-byte v1, v10, v7

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v10, v7

    .line 122
    aget-byte v1, v10, v7

    add-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v10, v7

    .line 124
    aput-byte v5, v10, v5

    .line 125
    aput-byte v8, v10, v6

    .line 126
    aget-byte v1, v10, v6

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v10, v6

    add-int/2addr v3, v4

    .line 128
    invoke-static {p1, v0, v10, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    aget-byte v0, v10, v6

    add-int/2addr v0, v4

    aput-byte v5, v10, v0

    .line 131
    aget-byte v0, v10, v6

    add-int/lit8 v0, v0, 0x5

    aput-byte v8, v10, v0

    .line 132
    aget-byte v0, v10, v6

    add-int/lit8 v0, v0, 0x5

    aget-byte v1, v10, v0

    add-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 134
    aget-byte v0, v10, v6

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v9

    invoke-static {p1, v8, v10, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v10

    .line 117
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Padding in DSA signature!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 147
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 148
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 149
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 151
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public encodeSignature([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 41
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 42
    new-array v2, v1, [B

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 43
    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v3, v5

    add-int/lit8 v5, v3, 0x1

    .line 46
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 47
    new-array v6, v3, [B

    .line 48
    invoke-static {p1, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x28

    new-array v5, p1, [B

    const/16 v7, 0x14

    if-ge v1, v7, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    const/16 v8, 0x14

    :goto_0
    if-ge v3, v7, :cond_1

    move v7, v3

    :cond_1
    sub-int/2addr v1, v8

    rsub-int/lit8 v9, v8, 0x14

    .line 58
    invoke-static {v2, v1, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v7

    rsub-int/lit8 v1, v7, 0x28

    .line 59
    invoke-static {v6, v3, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-virtual {v0, v5, v4, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 182
    new-instance v1, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;-><init>(Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;-><init>(Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
