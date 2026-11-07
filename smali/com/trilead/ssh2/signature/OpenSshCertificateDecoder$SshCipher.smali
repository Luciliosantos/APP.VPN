.class abstract enum Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
.super Ljava/lang/Enum;
.source "OpenSshCertificateDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SshCipher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES128_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES192_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES256_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum AES256_CTR:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum DESEDE_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

.field public static final enum DES_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;


# instance fields
.field private final blockSize:I

.field private final keyLength:I

.field private final sshCipherNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 141
    new-instance v7, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const-string v1, "DESEDE_CBC"

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/16 v4, 0x8

    const-string v5, "des-ede3-cbc"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DESEDE_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 147
    new-instance v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;

    new-array v15, v8, [Ljava/lang/String;

    const-string v10, "DES_CBC"

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/16 v13, 0x8

    const-string v14, "des-cbc"

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->DES_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 155
    new-instance v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$3;

    const-string v2, "aes128-cbc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v22

    const-string v17, "AES128_CBC"

    const/16 v18, 0x2

    const/16 v19, 0x10

    const/16 v20, 0x10

    const-string v21, "aes-128-cbc"

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$3;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES128_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 161
    new-instance v2, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$4;

    const-string v3, "aes192-cbc"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "AES192_CBC"

    const/4 v11, 0x3

    const/16 v12, 0x18

    const/16 v13, 0x10

    const-string v14, "aes-192-cbc"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$4;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES192_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 167
    new-instance v3, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$5;

    const-string v4, "aes256-cbc"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const-string v17, "AES256_CBC"

    const/16 v18, 0x4

    const/16 v19, 0x20

    const-string v21, "aes-256-cbc"

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v22}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$5;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CBC:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    .line 173
    new-instance v4, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$6;

    const-string v5, "aes256-ctr"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    const-string v10, "AES256_CTR"

    const/4 v11, 0x5

    const/16 v12, 0x20

    const-string v14, "aes-256-ctr"

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher$6;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->AES256_CTR:Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    aput-object v7, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 139
    sput-object v5, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->$VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    iput p3, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->keyLength:I

    .line 186
    iput p4, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->blockSize:I

    const/4 p1, 0x0

    if-nez p6, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 187
    :cond_0
    array-length p2, p6

    :goto_0
    const/4 p3, 0x1

    add-int/2addr p2, p3

    new-array p2, p2, [Ljava/lang/String;

    .line 188
    aput-object p5, p2, p1

    if-eqz p6, :cond_1

    .line 190
    array-length p4, p6

    invoke-static {p6, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_1
    iput-object p2, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->sshCipherNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$1;)V
    .locals 0

    .line 139
    invoke-direct/range {p0 .. p6}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 9

    .line 206
    invoke-static {}, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 207
    iget-object v5, v4, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->sshCipherNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 208
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Cipher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 1

    .line 139
    const-class v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    return-object p0
.end method

.method public static values()[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;
    .locals 1

    .line 139
    sget-object v0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->$VALUES:[Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    invoke-virtual {v0}, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;

    return-object v0
.end method


# virtual methods
.method abstract createBlockCipher([B[BZ)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;
.end method

.method public getBlockSize()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->blockSize:I

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/trilead/ssh2/signature/OpenSshCertificateDecoder$SshCipher;->keyLength:I

    return v0
.end method
