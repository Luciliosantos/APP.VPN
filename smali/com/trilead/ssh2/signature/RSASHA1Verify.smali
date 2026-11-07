.class public Lcom/trilead/ssh2/signature/RSASHA1Verify;
.super Ljava/lang/Object;
.source "RSASHA1Verify.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssh-rsa"

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p0

    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/trilead/ssh2/signature/RSAPublicKey;

    invoke-direct {v0, p0, v1}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 40
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in RSA public key!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/IOWarningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key format found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' while expecting ssh-rsa"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeSSHRSASignature([B)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 64
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssh-rsa"

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p0

    .line 76
    array-length v1, p0

    if-eqz v1, :cond_2

    .line 79
    sget-object v1, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x50

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoding ssh-rsa signature string (length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/trilead/ssh2/signature/RSASignature;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 85
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in RSA signature!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Error in RSA signature, S is empty."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-rsa"

    .line 52
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 54
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 56
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const-string v1, "ssh-rsa"

    .line 95
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 106
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-byte v1, p0, v2

    if-nez v1, :cond_0

    .line 107
    array-length v1, p0

    sub-int/2addr v1, v3

    invoke-virtual {v0, p0, v3, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    goto :goto_0

    .line 109
    :cond_0
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 111
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 118
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 119
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    new-array v1, p0, [B

    .line 120
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    const/16 v0, 0xf

    new-array v2, v0, [B

    .line 122
    fill-array-data v2, :array_0

    .line 125
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const/16 v4, 0x8

    div-int/2addr v3, v4

    const/16 v5, 0x11

    add-int/2addr v5, p0

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-lt v3, v4, :cond_1

    add-int v4, v0, p0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 132
    new-array v4, v4, [B

    const/4 v6, 0x0

    .line 134
    aput-byte v5, v4, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    .line 138
    aput-byte v8, v4, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v3, 0x1

    .line 141
    aput-byte v6, v4, v7

    add-int/lit8 v3, v3, 0x2

    .line 143
    invoke-static {v2, v6, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v0

    .line 144
    invoke-static {v1, v6, v4, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 148
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 150
    new-instance p1, Lcom/trilead/ssh2/signature/RSASignature;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 130
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot sign with RSA, message too long"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 157
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 158
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    new-array v1, p0, [B

    .line 159
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 161
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object p2

    .line 163
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    .line 167
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: n.compareTo(s) <= 0"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const/16 v5, 0x8

    div-int/2addr v2, v5

    const/4 v6, 0x1

    if-ge v2, v6, :cond_1

    .line 177
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: rsa_block_len < 1"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 181
    :cond_1
    invoke-virtual {p1, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 185
    array-length p2, p1

    if-lez p2, :cond_2

    aget-byte p2, p1, v4

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 188
    :goto_0
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v2, v6

    if-eq v0, v2, :cond_3

    .line 190
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: (v.length - startpos) != (rsa_block_len - 1)"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 194
    :cond_3
    aget-byte v0, p1, p2

    if-eq v0, v6, :cond_4

    .line 196
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: v[startpos] != 0x01"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_4
    add-int/2addr p2, v6

    move v0, p2

    .line 204
    :goto_1
    array-length v2, p1

    const-string v7, "ssh-rsa signature: pos >= v.length"

    if-lt v0, v2, :cond_5

    .line 206
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p0, v3, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 209
    :cond_5
    aget-byte v2, p1, v0

    if-nez v2, :cond_11

    sub-int p2, v0, p2

    if-ge p2, v5, :cond_6

    .line 223
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: num_pad < 8"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_6
    add-int/2addr v0, v6

    .line 229
    array-length p2, p1

    if-lt v0, p2, :cond_7

    .line 231
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p0, v3, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 235
    :cond_7
    new-instance p2, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-direct {p2, p1, v0, v2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 237
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 239
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: dr.available() != 0"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 245
    :cond_8
    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 249
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 253
    array-length v0, p1

    if-lt v0, v5, :cond_10

    array-length v0, p1

    const/16 v2, 0x9

    if-le v0, v2, :cond_9

    goto :goto_4

    :cond_9
    new-array v0, v2, [B

    .line 259
    fill-array-data v0, :array_0

    const/4 v2, 0x0

    .line 261
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_b

    .line 263
    aget-byte v5, p1, v2

    aget-byte v7, v0, v2

    if-eq v5, v7, :cond_a

    .line 265
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: digestAlgorithm[i] != digestAlgorithm_sha1[i]"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 270
    :cond_b
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object p1

    .line 272
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result p2

    if-eqz p2, :cond_c

    .line 274
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: dr.available() != 0 (II)"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 278
    :cond_c
    array-length p2, p1

    if-eq p2, p0, :cond_d

    .line 280
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: digest.length != sha_message.length"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_d
    const/4 p2, 0x0

    :goto_3
    if-ge p2, p0, :cond_f

    .line 286
    aget-byte v0, v1, p2

    aget-byte v2, p1, p2

    if-eq v0, v2, :cond_e

    .line 288
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: sha_message[i] != digest[i]"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    return v6

    .line 255
    :cond_10
    :goto_4
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: (digestAlgorithm.length < 8) || (digestAlgorithm.length > 9)"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    .line 211
    :cond_11
    aget-byte v2, p1, v0

    const/4 v7, -0x1

    if-eq v2, v7, :cond_12

    .line 213
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    const-string p1, "ssh-rsa signature: v[pos] != (byte) 0xff"

    invoke-virtual {p0, v3, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return v4

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :array_0
    .array-data 1
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data
.end method
