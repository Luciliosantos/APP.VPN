.class public Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;
.super Ljava/lang/Object;
.source "SecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;
    }
.end annotation


# instance fields
.field private final iPBKDF2_Iterations:I

.field private final iSaltSize:I

.field private final keySize:I

.field private final mAlgorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

.field private final mDigestType:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field private final mPassword:[C


# direct methods
.method public constructor <init>([CIIILcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mPassword:[C

    .line 45
    iput p3, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->iPBKDF2_Iterations:I

    .line 46
    iput-object p5, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mDigestType:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    .line 47
    iput p4, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->iSaltSize:I

    .line 48
    iput-object p6, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mAlgorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    .line 51
    invoke-virtual {p6}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->getKeySizes()[I

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_1

    aget p6, p1, p5

    if-ne p2, p6, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    .line 59
    iput p2, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->keySize:I

    return-void

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key size is invalid for the selected algorithm"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlgorithm()Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mAlgorithm:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-object v0
.end method

.method public getDigestType()Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mDigestType:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->keySize:I

    return v0
.end method

.method public getPBKDF2Iterations()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->iPBKDF2_Iterations:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->mPassword:[C

    return-object v0
.end method

.method public getSaltSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;->iSaltSize:I

    return v0
.end method
