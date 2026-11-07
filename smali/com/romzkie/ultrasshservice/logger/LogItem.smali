.class public Lcom/romzkie/ultrasshservice/logger/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/romzkie/ultrasshservice/logger/LogItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private logtime:J

.field private mArgs:[Ljava/lang/Object;

.field mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

.field private mMessage:Ljava/lang/String;

.field private mResourceId:I

.field private mVerbosityLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem$1;

    invoke-direct {v0}, Lcom/romzkie/ultrasshservice/logger/LogItem$1;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/LogItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 42
    iput p1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    .line 43
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 90
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getEnumByValue(I)Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    return-void
.end method

.method public constructor <init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 65
    iput p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    .line 66
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-void
.end method

.method public constructor <init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;ILjava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 47
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 48
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    return-void
.end method

.method public varargs constructor <init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I[Ljava/lang/Object;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 53
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 54
    iput p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    .line 55
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    .line 59
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    .line 60
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private getAppInfoString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const-string v0, "error getting package signature"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    const-string v5, "X.509"

    .line 165
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 166
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const-string v5, "SHA-1"

    .line 167
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 168
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .line 169
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 170
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 182
    sget-object v5, Lcom/romzkie/ultrasshservice/logger/SkStatus;->oficialkey:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/romzkie/ultrasshservice/logger/SkStatus;->oficialdebugkey:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "- Official version"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    const-string v5, "%s Build %d"

    new-array v6, v2, [Ljava/lang/Object;

    .line 188
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v6, v3

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "error getting version"

    .line 198
    :goto_1
    sget v5, Lcom/romzkie/ultrasshservice/R$string;->app_mobile_info:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLogLevel()Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    return-object v0
.end method

.method public getLogtime()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 126
    iget v1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->app_mobile_info:I

    if-ne v1, v2, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getAppInfoString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 129
    iget v1, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_2
    iget v2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :cond_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Log (no context) resid %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/romzkie/ultrasshservice/logger/LogItem;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/FormatFlagsConversionMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v1

    :catch_0
    move-exception v1

    if-eqz p1, :cond_5

    .line 147
    new-instance p1, Ljava/util/FormatFlagsConversionMismatchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/FormatFlagsConversionMismatchException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/FormatFlagsConversionMismatchException;->getConversion()C

    move-result v1

    invoke-direct {p1, v0, v1}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw p1

    .line 149
    :cond_5
    throw v1

    :catch_1
    move-exception v1

    if-eqz p1, :cond_6

    .line 142
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/UnknownFormatConversionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_6
    throw v1
.end method

.method public getVerbosityLevel()I
    .locals 2

    .line 218
    iget v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mVerbosityLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getInt()I

    move-result v0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 81
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 82
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->mLevel:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-virtual {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/romzkie/ultrasshservice/logger/LogItem;->logtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
