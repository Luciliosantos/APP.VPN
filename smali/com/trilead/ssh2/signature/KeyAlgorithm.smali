.class public abstract Lcom/trilead/ssh2/signature/KeyAlgorithm;
.super Ljava/lang/Object;
.source "KeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Ljava/security/PublicKey;",
        "R::",
        "Ljava/security/PrivateKey;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyFormat:Ljava/lang/String;

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final provider:Ljava/security/Provider;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/security/Provider;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/security/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/security/Provider;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyFormat:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyType:Ljava/lang/Class;

    .line 33
    iput-object p4, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public abstract decodePublicKey([B)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decodeSignature([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodePublicKey(Ljava/security/PublicKey;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodeSignature([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTR;",
            "Ljava/security/SecureRandom;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 39
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 40
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 41
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Could not generate signature"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract getCertificateDecoders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public getKeyFormat()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyFormat:Ljava/lang/String;

    return-object v0
.end method

.method public supportsKey(Ljava/security/PrivateKey;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->keyType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public verifySignature([B[BLjava/security/PublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BTU;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/signature/KeyAlgorithm;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 50
    :goto_0
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 51
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 52
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Could not verify signature"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
