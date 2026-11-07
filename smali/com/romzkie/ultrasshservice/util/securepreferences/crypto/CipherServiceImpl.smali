.class public final Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;
.super Ljava/lang/Object;
.source "CipherServiceImpl.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;


# instance fields
.field private final ivSize:I

.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mLogger:Ljava/util/logging/Logger;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mEncryptionAlgorithm:Ljava/lang/String;

    .line 64
    iput p4, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->ivSize:I

    .line 65
    const-class p4, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p4

    iput-object p4, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    :try_start_0
    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Encryption-Mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 72
    :goto_0
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string p4, "method: constructor()"

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to initialize cipher, mode might not be supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 113
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method private generateSecretKeySpec([B)Ljavax/crypto/SecretKey;
    .locals 2

    .line 109
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mEncryptionAlgorithm:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;)Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherService;
    .locals 4

    .line 45
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl$1;->$SwitchMap$com$romzkie$ultrasshservice$util$securepreferences$model$EncryptionAlgorithm:[I

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 52
    new-instance p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;

    const/16 v0, 0x8

    const-string v1, "DESede"

    const-string v2, "CBC"

    const-string v3, "PKCS5Padding"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    new-instance p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;

    const/16 v0, 0xc

    const-string v1, "AES"

    const-string v2, "GCM"

    const-string v3, "NoPadding"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    monitor-enter v0

    const/4 v1, 0x2

    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->generateSecretKeySpec([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    invoke-virtual {v2, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 100
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 102
    :goto_0
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "method: decrypt()"

    invoke-virtual {p2, p3, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "%s: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 105
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public encrypt([B[B[B)[B
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    monitor-enter v0

    const/4 v1, 0x1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->generateSecretKeySpec([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->generateIvParameterSpec([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p2

    invoke-virtual {v2, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 87
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 89
    :goto_0
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->mLogger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "method: encrypt()"

    invoke-virtual {p2, p3, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 92
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getIVSize()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;->ivSize:I

    return v0
.end method
