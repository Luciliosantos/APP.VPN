.class Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.source "ED25519KeyAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;->getCertificateDecoders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm$1;->this$0:Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;

    invoke-direct {p0, p2}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method generateKeyPair(Lcom/trilead/ssh2/packets/TypesReader;)Ljava/security/KeyPair;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Ed25519"

    .line 96
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 101
    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-direct {v2, v1, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 102
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 104
    new-instance p1, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;

    invoke-direct {p1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;-><init>()V

    const-string v0, "EdDSA"

    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 107
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v0, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method
