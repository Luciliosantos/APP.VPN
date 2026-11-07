.class Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.source "ECDSAKeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenSshEcdsaCertificateDecoder"
.end annotation


# instance fields
.field private final curveName:Ljava/lang/String;

.field private final ecParameterSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;-><init>(Ljava/lang/String;)V

    .line 420
    iput-object p2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->curveName:Ljava/lang/String;

    .line 421
    iput-object p3, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->curveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 431
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    .line 433
    iget-object v1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->access$200([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v0, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 440
    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    iget-object v2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, p1, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    const-string p1, "EC"

    .line 441
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 442
    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 435
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid ECDSA group"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect curve name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
