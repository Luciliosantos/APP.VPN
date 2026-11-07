.class public Lcom/romzkie/ultrasshservice/config/PasswordCache;
.super Ljava/lang/Object;
.source "PasswordCache.java"


# static fields
.field public static final AUTHPASSWORD:I = 0x3

.field private static mDefaultUuid:Ljava/util/UUID;

.field private static mInstance:Lcom/romzkie/ultrasshservice/config/PasswordCache;


# instance fields
.field private mAuthPassword:Ljava/lang/String;

.field private final mUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mDefaultUuid:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mUuid:Ljava/util/UUID;

    return-void
.end method

.method public static getAuthPassword(Ljava/util/UUID;Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mDefaultUuid:Ljava/util/UUID;

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/romzkie/ultrasshservice/config/PasswordCache;

    move-result-object v0

    iget-object v0, v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mAuthPassword:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 39
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/romzkie/ultrasshservice/config/PasswordCache;

    move-result-object p0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mAuthPassword:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static getInstance(Ljava/util/UUID;)Lcom/romzkie/ultrasshservice/config/PasswordCache;
    .locals 1

    .line 27
    sget-object v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mInstance:Lcom/romzkie/ultrasshservice/config/PasswordCache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mInstance:Lcom/romzkie/ultrasshservice/config/PasswordCache;

    .line 30
    :cond_1
    sget-object p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mInstance:Lcom/romzkie/ultrasshservice/config/PasswordCache;

    return-object p0
.end method

.method public static setCachedPassword(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mDefaultUuid:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/romzkie/ultrasshservice/config/PasswordCache;

    move-result-object p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/config/PasswordCache;->mAuthPassword:Ljava/lang/String;

    :goto_0
    return-void
.end method
