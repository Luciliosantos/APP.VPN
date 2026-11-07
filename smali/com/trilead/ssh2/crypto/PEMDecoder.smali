.class public Lcom/trilead/ssh2/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "PEMDecoder.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final PEM_DSA_PRIVATE_KEY:I = 0x2

.field private static final PEM_RSA_PRIVATE_KEY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/trilead/ssh2/crypto/PEMDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/crypto/PEMDecoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object p0

    .line 415
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    goto :goto_0

    .line 418
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM is encrypted, but no password was specified"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :cond_1
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v0, 0x2

    const-string v1, "Wrong version ("

    if-ne p1, v0, :cond_5

    .line 425
    new-instance p1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 427
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 429
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    const-string v2, "Padding in DSA PRIVATE KEY DER stream."

    if-nez v0, :cond_4

    .line 432
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 434
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 436
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_3

    .line 439
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 440
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 441
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v6

    .line 442
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v7

    .line 443
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v8

    .line 445
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result p0

    if-nez p0, :cond_2

    .line 448
    new-instance p0, Lcom/trilead/ssh2/signature/DSAPrivateKey;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/trilead/ssh2/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    .line 446
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") in DSA PRIVATE KEY DER stream."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_5
    iget p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 453
    new-instance p1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 455
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 457
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    move-result v0

    if-nez v0, :cond_8

    .line 460
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 462
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 464
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 465
    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") in RSA PRIVATE KEY DER stream."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 468
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p1

    .line 471
    new-instance v1, Lcom/trilead/ssh2/signature/RSAPrivateKey;

    invoke-direct {v1, p1, v0, p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 458
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Padding in RSA PRIVATE KEY DER stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 474
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM problem: it is of unknown type"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeKeyPair([CLjava/lang/String;)Ljava/security/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->getSupportedAlgorithms()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/signature/KeyAlgorithm;

    .line 482
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getCertificateDecoders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 484
    :try_start_0
    invoke-static {p0, v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([CLcom/trilead/ssh2/crypto/CertificateDecoder;)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object v3

    .line 486
    invoke-static {v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    const-string v4, "ISO-8859-1"

    .line 490
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V

    goto :goto_1

    .line 488
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "PEM is encrypted, but no password was specified"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 493
    :cond_2
    :goto_1
    invoke-virtual {v2, v3, p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 495
    sget-object v4, Lcom/trilead/ssh2/crypto/PEMDecoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not decode PEM Key using current decoder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 500
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM problem: it is of unknown type"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decryptPEM(Lcom/trilead/ssh2/crypto/PEMStructure;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 331
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 334
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 335
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "DES-EDE3-CBC"

    .line 339
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x18

    if-eqz v3, :cond_0

    .line 341
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/DESede;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/DESede;-><init>()V

    .line 342
    invoke-static {p1, v2, v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/DESede;->init(Z[B)V

    .line 343
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_0
    const-string v3, "DES-CBC"

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/DES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    const/16 v3, 0x8

    .line 348
    invoke-static {p1, v2, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 349
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_1
    const-string v3, "AES-128-CBC"

    .line 351
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    const/16 v3, 0x10

    .line 354
    invoke-static {p1, v2, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 355
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_2
    const-string v3, "AES-192-CBC"

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    .line 360
    invoke-static {p1, v2, v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 361
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    goto :goto_0

    :cond_3
    const-string v3, "AES-256-CBC"

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/AES;-><init>()V

    const/16 v3, 0x20

    .line 366
    invoke-static {p1, v2, v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->init(Z[B)V

    .line 367
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, v2, v1}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v0, v0

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 380
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 382
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length v2, v2

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v3

    div-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v3

    mul-int v3, v3, v1

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int v4, v4, v1

    invoke-interface {p1, v2, v3, v0, v4}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 389
    :cond_4
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    invoke-static {v0, p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->removePadding([BI)[B

    move-result-object p1

    .line 391
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 393
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    return-void

    .line 375
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid PEM structure, size of encrypted block is not a multiple of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_6
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot decrypt PEM structure, unknown cipher "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, DEK-Info is incomplete!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken PEM, no mode and salt given, but encryption enabled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 82
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 84
    new-array v2, p2, [B

    .line 85
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;->getDigestLength()I

    move-result v3

    new-array v4, v3, [B

    move v5, p2

    .line 89
    :goto_0
    array-length v6, p0

    const/4 v7, 0x0

    invoke-virtual {v0, p0, v7, v6}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    .line 90
    invoke-virtual {v0, p1, v7, v1}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    if-ge v5, v3, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v3

    .line 96
    :goto_1
    invoke-virtual {v0, v4, v7}, Lcom/trilead/ssh2/crypto/digest/MD5;->digest([BI)V

    sub-int v8, p2, v5

    .line 98
    invoke-static {v4, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v6

    if-nez v5, :cond_1

    return-object v2

    .line 105
    :cond_1
    invoke-virtual {v0, v4, v7, v3}, Lcom/trilead/ssh2/crypto/digest/MD5;->update([BII)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt needs to be at least 8 bytes for key generation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 68
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->hexToInt(C)I

    move-result v3

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 70
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uneven string length in hex encoding."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static hexToInt(C)I
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v1, 0x66

    if-gt p0, v1, :cond_0

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    return p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need hex char"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 404
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-string v0, "ENCRYPTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 405
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Proc-Type field ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unknown Proc-Type field."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 135
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-----BEGIN DSA PRIVATE KEY-----"

    .line 148
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    .line 151
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const-string p0, "-----END DSA PRIVATE KEY-----"

    goto :goto_0

    :cond_1
    const-string v2, "-----BEGIN RSA PRIVATE KEY-----"

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 158
    iput p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    const-string p0, "-----END RSA PRIVATE KEY-----"

    .line 165
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " missing"

    const-string v4, "Invalid PEM structure, "

    if-eqz v2, :cond_9

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3a

    .line 172
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_6

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-eqz v2, :cond_5

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array v1, p0, [C

    .line 220
    invoke-virtual {v5, v7, p0, v1, v7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 222
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 224
    iget-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length p0, p0

    if-eqz p0, :cond_3

    return-object v0

    .line 225
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, no data available"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 207
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 177
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    :goto_2
    array-length v4, v2

    if-ge v7, v4, :cond_7

    .line 183
    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const-string v4, "Proc-Type:"

    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 190
    iput-object v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v4, "DEK-Info:"

    .line 194
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iput-object v2, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, \'-----BEGIN...\' missing"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parsePEM([CLcom/trilead/ssh2/crypto/CertificateDecoder;)Lcom/trilead/ssh2/crypto/PEMStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/trilead/ssh2/crypto/PEMStructure;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/PEMStructure;-><init>()V

    .line 238
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->getStartLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/CertificateDecoder;->getEndLine()Ljava/lang/String;

    move-result-object p0

    .line 261
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v2, " missing"

    const-string v3, "Invalid PEM structure, "

    if-eqz p1, :cond_8

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x3a

    .line 268
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-eqz p1, :cond_4

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array p1, p0, [C

    .line 316
    invoke-virtual {v4, v6, p0, p1, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 318
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->decode([C)[B

    move-result-object p0

    iput-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    .line 320
    iget-object p0, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    array-length p0, p0

    if-eqz p0, :cond_2

    return-object v0

    .line 321
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid PEM structure, no data available"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 303
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 273
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ","

    .line 276
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 278
    :goto_2
    array-length v3, p1

    if-ge v6, v3, :cond_6

    .line 279
    aget-object v3, p1, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "Proc-Type:"

    .line 284
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->procType:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v3, "DEK-Info:"

    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 264
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid PEM structure, \'-----BEGIN...\' missing"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static removePadding([BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const-string v2, "Decrypted PEM has wrong padding, did you specify the correct password?"

    if-lt v0, v1, :cond_2

    if-gt v0, p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    if-gt p1, v0, :cond_1

    .line 120
    array-length v1, p0

    sub-int/2addr v1, p1

    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 125
    array-length v1, p0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 116
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
