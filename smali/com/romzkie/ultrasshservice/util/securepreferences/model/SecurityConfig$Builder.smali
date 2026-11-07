.class public Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
.super Ljava/lang/Object;
.source "SecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_AES_KEY_SIZE:I = 0x80

.field private static final DEFAULT_ALGORITHM:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

.field private static final DEFAULT_DIGEST:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field private static final DEFAULT_ITERATIONS:I = 0x3e8

.field private static final DEFAULT_SALT_SIZE:I = 0x20


# instance fields
.field private aesKeySize:I

.field private algorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

.field private digest:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field private iterations:I

.field private password:[C

.field private saltSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->SHA256:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    sput-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->DEFAULT_DIGEST:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    .line 95
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    sput-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->DEFAULT_ALGORITHM:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    .line 99
    iput v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->iterations:I

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    .line 101
    iput v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->password:[C

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Password cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;
    .locals 9

    .line 160
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->iterations:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    const/16 v5, 0x3e8

    .line 161
    :goto_0
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    if-eq v0, v1, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    const/16 v6, 0x20

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->DEFAULT_DIGEST:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    :goto_2
    move-object v7, v0

    .line 163
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    if-eq v0, v1, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    const/16 v0, 0x80

    const/16 v4, 0x80

    .line 164
    :goto_3
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->algorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->DEFAULT_ALGORITHM:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    :goto_4
    move-object v8, v0

    .line 165
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->password:[C

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;-><init>([CIIILcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;)V

    return-object v0
.end method

.method public setDigestType(Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;)Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->digest:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    return-object p0
.end method

.method public setEncryptionAlgorithm(Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;)Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->algorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-object p0
.end method

.method public setKeySize(I)Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    .locals 0

    .line 146
    iput p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->aesKeySize:I

    return-object p0
.end method

.method public setPbkdf2Iterations(I)Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 119
    iput p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->iterations:I

    return-object p0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Iterations cannot be less than zero!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPbkdf2SaltSize(I)Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 128
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 132
    iput p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->saltSize:I

    return-object p0

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal salt size!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
