.class public Lcom/conecta4g/vpn/util/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/conecta4g/vpn/util/ConfigUtil;->context:Landroid/content/Context;

    return-void
.end method

.method private getJSONConfig()Lorg/json/JSONObject;
    .locals 3

    .line 160
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conecta4g/vpn/util/ConfigUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "config/config.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x400

    new-array v2, p1, [C

    :goto_0
    const/4 v3, 0x0

    .line 182
    invoke-virtual {v1, v2, v3, p1}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCheckUser()Ljava/lang/Boolean;
    .locals 2

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CheckUser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFeedback()Ljava/lang/String;
    .locals 2

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "EmailFeedback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworksArray()Lorg/json/JSONArray;
    .locals 2

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Networks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServersArray()Lorg/json/JSONArray;
    .locals 2

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Servers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUdpArray()Lorg/json/JSONArray;
    .locals 2

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Udp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlContato()Ljava/lang/String;
    .locals 2

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "UrlContato"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlSms()Ljava/lang/String;
    .locals 2

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Sms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlTermos()Ljava/lang/String;
    .locals 2

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "UrlTermos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlUpdate()Ljava/lang/String;
    .locals 2

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "UrlUpdate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getJSONConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public versionCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 148
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 154
    :cond_2
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
