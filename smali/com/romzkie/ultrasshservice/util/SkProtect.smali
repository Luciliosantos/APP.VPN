.class public Lcom/romzkie/ultrasshservice/util/SkProtect;
.super Ljava/lang/Object;
.source "SkProtect.java"


# static fields
.field private static final APP_BASE:Ljava/lang/String;

.field private static final APP_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SkProtect"

.field private static mInstance:Lcom/romzkie/ultrasshservice/util/SkProtect;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->APP_BASE:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->APP_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x72t
        0x6ft
        0x6dt
        0x7at
        0x6bt
        0x69t
        0x65t
        0x2et
        0x74t
        0x75t
        0x6et
        0x6et
        0x65t
        0x6ct
        0x70t
        0x72t
        0x6ft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x6ft
        0x6dt
        0x7at
        0x20t
        0x76t
        0x70t
        0x6et
        0x20t
        0x70t
        0x72t
        0x6ft
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static CharlieProtect()V
    .locals 1

    .line 63
    sget-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mInstance:Lcom/romzkie/ultrasshservice/util/SkProtect;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/util/SkProtect;->simpleProtect()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mInstance:Lcom/romzkie/ultrasshservice/util/SkProtect;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/romzkie/ultrasshservice/util/SkProtect;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/util/SkProtect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mInstance:Lcom/romzkie/ultrasshservice/util/SkProtect;

    :cond_0
    return-void
.end method


# virtual methods
.method public simpleProtect()V
    .locals 2

    .line 56
    sget-object v0, Lcom/romzkie/ultrasshservice/util/SkProtect;->APP_BASE:Ljava/lang/String;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/SkProtect;->mContext:Landroid/content/Context;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->app_name:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/romzkie/ultrasshservice/util/SkProtect;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
