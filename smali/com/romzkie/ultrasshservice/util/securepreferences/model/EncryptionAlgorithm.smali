.class public final enum Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;
.super Ljava/lang/Enum;
.source "EncryptionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

.field public static final enum AES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

.field public static final enum TripleDES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;


# instance fields
.field private keySizesInBits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-string v2, "AES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    new-instance v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    const-string v5, "TripleDES"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;-><init>(Ljava/lang/String;I[I)V

    sput-object v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->TripleDES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    new-array v2, v2, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    aput-object v0, v2, v3

    aput-object v1, v2, v6

    .line 7
    sput-object v2, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->$VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0xc4
        0x100
    .end array-data

    :array_1
    .array-data 4
        0x80
        0xc0
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->keySizesInBits:[I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 7
    const-class v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;
    .locals 1

    .line 7
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->$VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    invoke-virtual {v0}, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getKeySizes()[I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->keySizesInBits:[I

    return-object v0
.end method
