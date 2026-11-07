.class public final Lcom/trilead/ssh2/crypto/digest/MessageMac;
.super Lcom/trilead/ssh2/crypto/digest/MAC;
.source "MessageMac.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    }
.end annotation


# instance fields
.field private final messageMac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->access$000(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    .line 19
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not create Mac"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static checkMacs([Ljava/lang/String;)V
    .locals 3

    .line 35
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 36
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->access$000(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getKeyLength(Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->access$000(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object p0

    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getLength()I

    move-result p0

    return p0
.end method

.method public static getMacs()[Ljava/lang/String;
    .locals 6

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 29
    invoke-virtual {v5}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getMac([BI)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 59
    array-length v1, v0

    sub-int/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final initMac(I)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 47
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 48
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

.method public final update([BII)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac;->messageMac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
