.class abstract Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.super Lcom/trilead/ssh2/crypto/CertificateDecoder;
.source "OpenSshCertificateDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    }
.end annotation


# instance fields
.field private final keyAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/CertificateDecoder;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->keyAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private static decryptData([B[BLcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;)[B
    .locals 5

    .line 116
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getKeyLength()I

    move-result v0

    new-array v1, v0, [B

    .line 117
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getBlockSize()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 119
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {p1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-virtual {p2, v1, v3, v4}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object p1

    .line 124
    array-length p2, p0

    new-array p2, p2, [B

    .line 125
    :goto_0
    array-length v0, p0

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v1

    div-int/2addr v0, v1

    if-ge v4, v0, :cond_0

    .line 126
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int v0, v0, v4

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int v1, v1, v4

    invoke-interface {p1, p0, v0, p2, v1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private static generateKayAndIvPbkdf2([B[BIII)[B
    .locals 0

    add-int/2addr p3, p4

    .line 134
    new-array p3, p3, [B

    .line 135
    new-instance p4, Lorg/mindrot/jbcrypt/BCrypt;

    invoke-direct {p4}, Lorg/mindrot/jbcrypt/BCrypt;-><init>()V

    invoke-virtual {p4, p0, p1, p2, p3}, Lorg/mindrot/jbcrypt/BCrypt;->pbkdf([B[BI[B)V

    return-object p3
.end method


# virtual methods
.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/PEMStructure;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    const/16 p1, 0xf

    .line 50
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p1

    .line 51
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "openssh-key-v1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 55
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 66
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 67
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v3

    const-string v4, "bcrypt"

    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    .line 74
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 75
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 77
    invoke-static {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    move-result-object p1

    .line 78
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getKeyLength()I

    move-result v4

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->getBlockSize()I

    move-result v5

    invoke-static {p2, v2, v1, v4, v5}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->generateKayAndIvPbkdf2([B[BIII)[B

    move-result-object p2

    invoke-static {v3, p2, p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->decryptData([B[BLcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;)[B

    move-result-object v3

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PEM is encrypted but password has not been specified"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "none"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 83
    :goto_0
    new-instance p1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {p1, v3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 84
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p2

    .line 85
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 91
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 92
    iget-object v1, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;->generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;

    move-result-object p2

    .line 99
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    const/4 p1, 0x0

    .line 101
    :goto_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-ge p1, v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 102
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect padding on private keys"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p2

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Could not create key pair"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 93
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Check integers didn\'t match"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected encryption method for key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Only single OpenSSH keys are supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find openssh header in key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getEndLine()Ljava/lang/String;
    .locals 1

    const-string v0, "-----END OPENSSH PRIVATE KEY-----"

    return-object v0
.end method

.method public getStartLine()Ljava/lang/String;
    .locals 1

    const-string v0, "-----BEGIN OPENSSH PRIVATE KEY-----"

    return-object v0
.end method
