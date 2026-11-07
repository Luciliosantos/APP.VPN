.class public final Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;
.super Ljava/lang/Object;
.source "Cryptor.java"


# static fields
.field private static final INDEX_CIPHER_TEXT:I = 0x2

.field private static final INDEX_IV:I = 0x1

.field private static final INDEX_SALT:I = 0x0

.field private static final SPLITTER:Ljava/lang/String; = "\\."


# instance fields
.field private final mCipherService:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

.field private final mPassword:[B

.field private final mSalt:[B

.field private final mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;


# direct methods
.method private constructor <init>(Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    .line 58
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getAlgorithm()Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->getInstance(Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;)Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mCipherService:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    .line 61
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getSaltSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSalt:[B

    .line 62
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 65
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->pbkdf2([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mPassword:[B

    return-void
.end method

.method private fromBase64(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    .line 144
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public static initWithSecurityConfig(Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;
    .locals 1

    .line 53
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;-><init>(Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)V

    return-object v0
.end method

.method private pbkdf2([B)[B
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .line 112
    sget-object v1, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor$1;->$SwitchMap$com$romzkie$ultrasshservice$util$securepreferences$model$DigestType:[I

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getDigestType()Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 125
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Digest!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getPBKDF2Iterations()I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    .line 136
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSecurityConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->getKeySize()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    return-object p1
.end method

.method private toBase64([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 140
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decryptFromBase64(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "\\."

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 92
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 96
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 97
    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 98
    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->fromBase64(Ljava/lang/String;)[B

    move-result-object p1

    .line 100
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mCipherService:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->pbkdf2([B)[B

    move-result-object v0

    invoke-interface {v2, v0, v1, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;->decrypt([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed data string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptToBase64([B)Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mCipherService:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    invoke-interface {v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;->getIVSize()I

    move-result v1

    new-array v1, v1, [B

    .line 78
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 80
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mCipherService:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mPassword:[B

    invoke-interface {v0, v2, v1, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;->encrypt([B[B[B)[B

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->mSalt:[B

    invoke-direct {p0, v2}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->toBase64([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-direct {p0, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->toBase64([B)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s.%s.%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
