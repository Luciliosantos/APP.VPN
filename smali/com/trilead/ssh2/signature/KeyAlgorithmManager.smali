.class public final Lcom/trilead/ssh2/signature/KeyAlgorithmManager;
.super Ljava/lang/Object;
.source "KeyAlgorithmManager.java"


# static fields
.field private static final supportedAlgorithms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->buildSupportAlgorithmsList()Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->supportedAlgorithms:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSupportAlgorithmsList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ED25519KeyAlgorithm;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v1, "EC"

    .line 33
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 34
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    new-instance v1, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/RSAKeyAlgorithm;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;

    invoke-direct {v1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedAlgorithms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
            "Ljava/security/PublicKey;",
            "Ljava/security/PrivateKey;",
            ">;>;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/trilead/ssh2/signature/KeyAlgorithmManager;->supportedAlgorithms:Ljava/util/Collection;

    return-object v0
.end method
