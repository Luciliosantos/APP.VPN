.class public Lcom/trilead/ssh2/crypto/dh/DhExchange;
.super Ljava/lang/Object;
.source "DhExchange.java"


# static fields
.field static final g:Ljava/math/BigInteger;

.field private static final log:Lcom/trilead/ssh2/log/Logger;

.field static final p1:Ljava/math/BigInteger;

.field static final p14:Ljava/math/BigInteger;


# instance fields
.field e:Ljava/math/BigInteger;

.field f:Ljava/math/BigInteger;

.field private final hashAlgorithm:Ljava/lang/String;

.field k:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    const-class v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    .line 59
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "179769313486231590770839156793787453197860296048756011706444423684197180216158519368947833795864925541502180565485980503646440548199239100050792877003355816639229553136239076508735759914822574862575007425302077447712589550957937778424442426617334727629299387668709205606050270810842907692932019128194467627007"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    .line 60
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    .line 61
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SHA1"

    .line 69
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/dh/DhExchange;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->hashAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateH([B[B[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;

    invoke-virtual {p0}, Lcom/trilead/ssh2/crypto/dh/DhExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/trilead/ssh2/crypto/dh/DhExchange;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x5a

    invoke-virtual {v1, v5, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 146
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 147
    invoke-virtual {v0, p3}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 148
    invoke-virtual {v0, p4}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 149
    invoke-virtual {v0, p5}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    .line 150
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 151
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 152
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBigInt(Ljava/math/BigInteger;)V

    .line 154
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest()[B

    move-result-object p1

    return-object p1
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DhDsaExchange not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/math/BigInteger;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shared secret not yet known, need f first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ILjava/security/SecureRandom;)V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    sget-object p1, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p1:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-ne p1, v1, :cond_1

    .line 84
    sget-object p1, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p14:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    .line 88
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p1, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    .line 90
    sget-object p2, Lcom/trilead/ssh2/crypto/dh/DhExchange;->g:Ljava/math/BigInteger;

    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    return-void

    .line 86
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DH group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->e:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 125
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->f:Ljava/math/BigInteger;

    .line 131
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/DhExchange;->k:Ljava/math/BigInteger;

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid f specified!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DhDsaExchange not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
