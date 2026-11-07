.class public Lcom/trilead/ssh2/signature/RSAPrivateKey;
.super Ljava/lang/Object;
.source "RSAPrivateKey.java"


# instance fields
.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    .line 29
    iput-object p2, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 30
    iput-object p3, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/trilead/ssh2/signature/RSAPublicKey;
    .locals 3

    .line 50
    new-instance v0, Lcom/trilead/ssh2/signature/RSAPublicKey;

    iget-object v1, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toJCEKeyPair()Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "RSA"

    .line 60
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    .line 62
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getE()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    new-instance v3, Ljava/security/spec/RSAPrivateKeySpec;

    .line 63
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method
