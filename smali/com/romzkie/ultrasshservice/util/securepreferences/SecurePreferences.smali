.class public final Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;
.super Ljava/lang/Object;
.source "SecurePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mCryptor:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

.field private mProxyPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p3}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->initWithSecurityConfig(Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    move-result-object p3

    iput-object p3, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mCryptor:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    const/4 p3, 0x0

    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->generateKeyHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->encryptToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decryptFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mCryptor:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    invoke-virtual {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->decryptFromBase64(Ljava/lang/String;)[B

    move-result-object p1

    .line 79
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mCryptor:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->encryptToBase64([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateKeyHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/HashSHA;->hashUsingSHA256([B)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 62
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)V

    return-object v0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->generateKeyHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;
    .locals 1

    .line 142
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;-><init>(Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation Not Supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->generateKeyHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->decryptFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->generateKeyHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->decryptFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->mProxyPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
