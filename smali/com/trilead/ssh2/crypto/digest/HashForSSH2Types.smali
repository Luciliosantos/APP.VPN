.class public Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;
.super Ljava/lang/Object;
.source "HashForSSH2Types.java"


# instance fields
.field md:Lcom/trilead/ssh2/crypto/digest/Digest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/digest/Digest;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 33
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;-><init>(Ljava/security/MessageDigest;)V

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;)V

    return-void
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not get Message digest instance"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getDigest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([BI)V

    return-void
.end method

.method public getDigest([BI)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([BI)V

    return-void
.end method

.method public getDigest()[B
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 94
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([B)V

    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    return-void
.end method

.method public updateBigInt(Ljava/math/BigInteger;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    return-void
.end method

.method public updateByte(B)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 54
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {p1, v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public updateByteString([B)V
    .locals 1

    .line 72
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    return-void
.end method

.method public updateBytes([B)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([B)V

    return-void
.end method

.method public updateUINT32(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 66
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->messageDigest:Lcom/trilead/ssh2/crypto/digest/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method
