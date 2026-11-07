.class synthetic Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl$1;
.super Ljava/lang/Object;
.source "CipherServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$romzkie$ultrasshservice$util$securepreferences$model$EncryptionAlgorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->values()[Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl$1;->$SwitchMap$com$romzkie$ultrasshservice$util$securepreferences$model$EncryptionAlgorithm:[I

    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->AES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/CipherServiceImpl$1;->$SwitchMap$com$romzkie$ultrasshservice$util$securepreferences$model$EncryptionAlgorithm:[I

    sget-object v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->TripleDES:Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/EncryptionAlgorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
