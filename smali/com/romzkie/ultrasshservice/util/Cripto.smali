.class public Lcom/romzkie/ultrasshservice/util/Cripto;
.super Ljava/lang/Object;
.source "Cripto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 20
    invoke-static {p0, v0, p1, p2}, Lcom/romzkie/ultrasshservice/util/Cripto;->encryptOrDecrypt(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static doCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 48
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 16
    invoke-static {p0, v0, p1, p2}, Lcom/romzkie/ultrasshservice/util/Cripto;->encryptOrDecrypt(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static encryptOrDecrypt(Ljava/lang/String;ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p0, "DES"

    .line 26
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 28
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 31
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, p2, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 33
    invoke-static {p1, p3}, Lcom/romzkie/ultrasshservice/util/Cripto;->doCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 35
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p3, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 37
    invoke-static {p2, p1}, Lcom/romzkie/ultrasshservice/util/Cripto;->doCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_1
    :goto_0
    return-void
.end method
