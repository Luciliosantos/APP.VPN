.class public Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;
.super Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.source "ECDSAKeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSASha2Nistp384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 283
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    const-string v1, "SHA384withECDSA"

    const-string v2, "nistp384"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-super {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-super {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 301
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    const-string v3, "1.3.132.0.34"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;

    .line 302
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;->getCurveName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 301
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
