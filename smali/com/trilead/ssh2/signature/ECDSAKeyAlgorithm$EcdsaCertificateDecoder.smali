.class Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;
.super Lcom/trilead/ssh2/crypto/CertificateDecoder;
.source "ECDSAKeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcdsaCertificateDecoder"
.end annotation


# instance fields
.field private final ecParameterSpec:Ljava/security/spec/ECParameterSpec;

.field private final oid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/CertificateDecoder;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->oid:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$1;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    return-void
.end method


# virtual methods
.method protected createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/PEMStructure;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 359
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 361
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    if-nez v0, :cond_5

    .line 365
    new-instance v0, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 367
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p1

    .line 368
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_4

    .line 372
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    .line 376
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 377
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructedType()I

    move-result v3

    .line 378
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object v2

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 394
    array-length p1, v2

    sub-int/2addr p1, v4

    new-array v1, p1, [B

    const/4 v3, 0x0

    .line 395
    invoke-static {v2, v4, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object p1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->access$200([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 398
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v0, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 399
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, p1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    :try_start_0
    const-string p1, "EC"

    .line 402
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 404
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 405
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v0, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 407
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not generate EC key pair"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Incorrect OID for current curve"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected version number in EC private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected padding in EC private key"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEndLine()Ljava/lang/String;
    .locals 1

    const-string v0, "-----END EC PRIVATE KEY-----"

    return-object v0
.end method

.method public getStartLine()Ljava/lang/String;
    .locals 1

    const-string v0, "-----BEGIN EC PRIVATE KEY-----"

    return-object v0
.end method
