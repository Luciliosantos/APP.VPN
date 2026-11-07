.class public final enum Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
.super Ljava/lang/Enum;
.source "GroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/i2p/crypto/eddsa/math/GroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Representation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 50
    new-instance v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v1, "P2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 52
    new-instance v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v3, "P3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 54
    new-instance v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v5, "P3PrecomputedDouble"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 56
    new-instance v5, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v7, "P1P1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 58
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v9, "PRECOMP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 60
    new-instance v9, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v11, "CACHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const/4 v11, 0x6

    new-array v11, v11, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 48
    sput-object v11, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->$VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 48
    const-class v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-object p0
.end method

.method public static values()[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 48
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->$VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0}, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-object v0
.end method
