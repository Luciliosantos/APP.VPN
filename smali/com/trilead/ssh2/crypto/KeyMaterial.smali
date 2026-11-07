.class public Lcom/trilead/ssh2/crypto/KeyMaterial;
.super Ljava/lang/Object;
.source "KeyMaterial.java"


# instance fields
.field public enc_key_client_to_server:[B

.field public enc_key_server_to_client:[B

.field public initial_iv_client_to_server:[B

.field public initial_iv_server_to_client:[B

.field public integrity_key_client_to_server:[B

.field public integrity_key_server_to_client:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B
    .locals 7

    .line 27
    new-array v0, p5, [B

    .line 29
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigestLength()I

    move-result v1

    add-int v2, p5, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 30
    div-int/2addr v2, v1

    .line 32
    new-array v4, v2, [[B

    .line 34
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->reset()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 37
    invoke-virtual {p0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByte(B)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    .line 40
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v4, p4

    .line 43
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 45
    aget-object v5, v4, p4

    invoke-static {v5, p4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p5, p3

    add-int/2addr p3, p4

    :goto_0
    if-ge v3, v2, :cond_1

    .line 52
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    .line 56
    aget-object v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 60
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 61
    aget-object v6, v4, v3

    invoke-static {v6, p4, v0, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p5, v5

    add-int/2addr p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/trilead/ssh2/crypto/KeyMaterial;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/KeyMaterial;-><init>()V

    .line 75
    new-instance v7, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    move-object v1, p0

    invoke-direct {v7, p0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x41

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    const/16 v4, 0x42

    move-object v1, v7

    move/from16 v6, p8

    .line 79
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    const/16 v4, 0x43

    move-object v1, v7

    move v6, p4

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    const/16 v4, 0x44

    move-object v1, v7

    move v6, p7

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    const/16 v4, 0x45

    move-object v1, v7

    move v6, p6

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    const/16 v4, 0x46

    move-object v1, v7

    move/from16 v6, p9

    .line 87
    invoke-static/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/KeyMaterial;->calculateKey(Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;Ljava/math/BigInteger;[BB[BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    return-object v0
.end method
