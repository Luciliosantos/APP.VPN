.class public final enum Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
.super Ljava/lang/Enum;
.source "SkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/logger/SkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field public static final enum DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field public static final enum ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field public static final enum INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field public static final enum VERBOSE:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field public static final enum WARNING:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;


# instance fields
.field protected mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 92
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 93
    new-instance v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v4, "ERROR"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 94
    new-instance v4, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v6, "WARNING"

    invoke-direct {v4, v6, v3, v5}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->WARNING:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 95
    new-instance v6, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v7, "VERBOSE"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v8}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->VERBOSE:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 96
    new-instance v7, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v9, "DEBUG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v3

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    .line 90
    sput-object v9, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->$VALUES:[Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->mValue:I

    return-void
.end method

.method public static getEnumByValue(I)Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0

    .line 117
    :cond_1
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->VERBOSE:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0

    .line 111
    :cond_2
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0

    .line 115
    :cond_3
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->WARNING:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0

    .line 113
    :cond_4
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
    .locals 1

    .line 90
    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
    .locals 1

    .line 90
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->$VALUES:[Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-virtual {v0}, [Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->mValue:I

    return v0
.end method
