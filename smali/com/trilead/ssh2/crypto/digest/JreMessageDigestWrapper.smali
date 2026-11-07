.class public Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;
.super Ljava/lang/Object;
.source "JreMessageDigestWrapper.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/Digest;


# instance fields
.field private final digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public digest([B)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 39
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public digest([BI)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 44
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getDigestLength()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update([B)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/JreMessageDigestWrapper;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
