.class final enum Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
.super Ljava/lang/Enum;
.source "MessageMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/crypto/digest/MessageMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Hmac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_MD5:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_MD5_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA1:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA1_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA2_256:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA2_512:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private length:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 69
    new-instance v6, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v1, "HMAC_MD5_96"

    const/4 v2, 0x0

    const-string v3, "hmac-md5-96"

    const-string v4, "HmacMD5"

    const/16 v5, 0x10

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 70
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v8, "HMAC_MD5"

    const/4 v9, 0x1

    const-string v10, "hmac-md5"

    const-string v11, "HmacMD5"

    const/16 v12, 0x10

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 71
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v14, "HMAC_SHA1_96"

    const/4 v15, 0x2

    const-string v16, "hmac-sha1-96"

    const-string v17, "HmacSHA1"

    const/16 v18, 0x14

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 72
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v8, "HMAC_SHA1"

    const/4 v9, 0x3

    const-string v10, "hmac-sha1"

    const-string v11, "HmacSHA1"

    const/16 v12, 0x14

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 73
    new-instance v3, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v14, "HMAC_SHA2_256"

    const/4 v15, 0x4

    const-string v16, "hmac-sha2-256"

    const-string v17, "HmacSHA256"

    const/16 v18, 0x20

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_256:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 74
    new-instance v4, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const-string v8, "HMAC_SHA2_512"

    const/4 v9, 0x5

    const-string v10, "hmac-sha2-512"

    const-string v11, "HmacSHA512"

    const/16 v12, 0x40

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_512:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    const/4 v7, 0x0

    aput-object v6, v5, v7

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

    .line 68
    sput-object v5, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->$VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->type:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->algorithm:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->length:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getHmac(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object p0

    return-object p0
.end method

.method private static getHmac(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 5

    .line 99
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 100
    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HMAC type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 1

    .line 68
    const-class v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    return-object p0
.end method

.method public static values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 1

    .line 68
    sget-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->$VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    invoke-virtual {v0}, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->length:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->type:Ljava/lang/String;

    return-object v0
.end method
