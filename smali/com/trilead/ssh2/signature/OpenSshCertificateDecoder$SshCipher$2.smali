.class final enum Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;
.super Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.source "OpenSshCertificateDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 147
    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$1;)V

    return-void
.end method


# virtual methods
.method createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
    .locals 1

    .line 150
    new-instance v0, Lcom/trilead/ssh2/crypto/cipher/DES;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/cipher/DES;-><init>()V

    .line 151
    invoke-virtual {v0, p3, p1}, Lcom/trilead/ssh2/crypto/cipher/DES;->init(Z[B)V

    .line 152
    new-instance p1, Lcom/trilead/ssh2/crypto/cipher/CBCMode;

    invoke-direct {p1, v0, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CBCMode;-><init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;[BZ)V

    return-object p1
.end method
