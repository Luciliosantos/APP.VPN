.class public Lcom/trilead/ssh2/crypto/digest/MAC;
.super Ljava/lang/Object;
.source "MAC.java"


# instance fields
.field mac:Lcom/trilead/ssh2/crypto/digest/Digest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field size:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hmac-sha1"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    const/16 v1, 0x14

    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_0
    const-string v0, "hmac-sha1-96"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 91
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_1
    const-string v0, "hmac-md5"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    goto :goto_0

    :cond_2
    const-string v0, "hmac-md5-96"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    :cond_3
    return-void
.end method

.method public static checkMacList([Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 53
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getKeyLen(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmac-sha1"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "hmac-sha1-96"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "hmac-md5"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "hmac-md5-96"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMacList()[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "hmac-sha1-96"

    const-string v1, "hmac-sha1"

    const-string v2, "hmac-md5-96"

    const-string v3, "hmac-md5"

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMac([BI)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([BI)V

    return-void
.end method

.method public initMac(I)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 110
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 111
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 112
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 113
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    return v0
.end method

.method public update([BII)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([BII)V

    return-void
.end method
