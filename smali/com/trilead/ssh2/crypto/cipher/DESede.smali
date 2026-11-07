.class public Lcom/trilead/ssh2/crypto/cipher/DESede;
.super Lcom/trilead/ssh2/crypto/cipher/DES;
.source "DESede.java"


# instance fields
.field private encrypt:Z

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    .line 40
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    .line 41
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 2

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    xor-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    .line 65
    invoke-virtual {p0, v0, p2, v1}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    const/16 v0, 0x10

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DESede;->generateWorkingKey(Z[BI)[I

    move-result-object p2

    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    .line 68
    iput-boolean p1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6

    .line 83
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    if-eqz v1, :cond_1

    .line 88
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->encrypt:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 91
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 92
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 97
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    .line 98
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DESede;->key1:[I

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DESede;->desFunc([I[BI[BI)V

    :goto_0
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
