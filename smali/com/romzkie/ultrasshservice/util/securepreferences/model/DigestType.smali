.class public final enum Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;
.super Ljava/lang/Enum;
.source "DigestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field public static final enum SHA1:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field public static final enum SHA256:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

.field public static final enum SHA512:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    const-string v1, "SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->SHA1:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    new-instance v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    const-string v3, "SHA256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->SHA256:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    new-instance v3, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    const-string v5, "SHA512"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->SHA512:Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->$VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;
    .locals 1

    .line 24
    const-class v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    return-object p0
.end method

.method public static values()[Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;
    .locals 1

    .line 24
    sget-object v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->$VALUES:[Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    invoke-virtual {v0}, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/romzkie/ultrasshservice/util/securepreferences/model/DigestType;

    return-object v0
.end method
