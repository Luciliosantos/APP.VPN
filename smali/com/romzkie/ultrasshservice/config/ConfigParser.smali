.class public Lcom/romzkie/ultrasshservice/config/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# static fields
.field public static final CONVERTED_PROFILE:Ljava/lang/String; = "converted Profile"

.field public static final FILE_EXTENSAO:Ljava/lang/String; = "sks"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "cinbdf665$4"

.field private static final SETTING_AUTOR_MSG:Ljava/lang/String; = "file.msg"

.field private static final SETTING_PROTEGER:Ljava/lang/String; = "file.proteger"

.field private static final SETTING_VALIDADE:Ljava/lang/String; = "file.validade"

.field private static final SETTING_VERSION:Ljava/lang/String; = "file.appVersionCode"

.field private static final TAG:Ljava/lang/String; = "ConfigParser"

.field private static mCrypto:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 296
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;

    const-string v1, "fubvx788b46v"

    invoke-direct {v0, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->build()Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->initWithSecurityConfig(Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    move-result-object v0

    sput-object v0, Lcom/romzkie/ultrasshservice/config/ConfigParser;->mCrypto:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDataToFile(Ljava/io/OutputStream;Landroid/content/Context;ZZZLjava/lang/String;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "proxyPayload"

    const-string v2, "usarDefaultPayload"

    const-string v3, "proxyRemotoPorta"

    const-string v4, "proxyRemoto"

    const-string v5, "tunnelType"

    const-string v6, "sshPortaLocal"

    const-string v7, "sshPass"

    const-string v8, "sshUser"

    const-string v9, "sshPort"

    const-string v10, "sshServer"

    const-string v11, ""

    .line 211
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 212
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    new-instance v14, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v14, v0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v15

    .line 218
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->getBuildId(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v16, 0x18

    :try_start_1
    const-string v0, "file.appVersionCode"

    move-object/from16 v17, v13

    .line 222
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "file.msg"

    move-object/from16 v13, p5

    .line 224
    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "file.proteger"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v13, "1"

    move-object/from16 p5, v13

    const-string v13, "0"

    move-object/from16 v16, v13

    if-eqz p2, :cond_0

    move-object/from16 v13, p5

    .line 225
    :cond_0
    :try_start_2
    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bloquearRoot"

    if-eqz p4, :cond_1

    move-object/from16 v13, p5

    goto :goto_0

    :cond_1
    move-object/from16 v13, v16

    .line 226
    :goto_0
    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "file.validade"

    .line 228
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "file.pedirLogin"

    if-eqz p3, :cond_2

    move-object/from16 v13, p5

    goto :goto_1

    :cond_2
    move-object/from16 v13, v16

    .line 229
    :goto_1
    invoke-virtual {v12, v0, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    invoke-interface {v15, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-interface {v15, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz p2, :cond_4

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    goto :goto_2

    .line 235
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 238
    :cond_4
    :goto_2
    invoke-virtual {v12, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v12, v9, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    invoke-interface {v15, v8, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v8, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    invoke-interface {v15, v7, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v7, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "1080"

    .line 242
    invoke-interface {v15, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 244
    invoke-interface {v15, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "dnsForward"

    .line 246
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsForward()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v6, p5

    goto :goto_3

    :cond_5
    move-object/from16 v6, v16

    :goto_3
    invoke-virtual {v12, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "dnsResolver"

    .line 247
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnDnsResolver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "udpForward"

    .line 249
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnUdpForward()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v6, p5

    goto :goto_4

    :cond_6
    move-object/from16 v6, v16

    :goto_4
    invoke-virtual {v12, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "udpResolver"

    .line 250
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/config/Settings;->getVpnUdpResolver()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-interface {v15, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-interface {v15, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    invoke-interface {v15, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v13, p5

    goto :goto_5

    :cond_7
    move-object/from16 v13, v16

    .line 256
    :goto_5
    invoke-interface {v15, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_9

    move-object/from16 v3, v16

    .line 258
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    .line 259
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 262
    :cond_9
    :goto_6
    invoke-virtual {v12, v2, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v12, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "Arquivo de Configura\u00e7\u00e3o"

    move-object/from16 v1, v17

    .line 270
    invoke-virtual {v12, v1, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 279
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 280
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 279
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->encodeInput(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    move-object/from16 v1, p0

    .line 282
    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/util/FileUtils;->copiarArquivo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 284
    :catchall_0
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->error_save_settings:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error Unknown"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 273
    :catch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File Not Found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-object/from16 v2, p1

    goto :goto_7

    :catch_3
    move-object v2, v0

    .line 266
    :goto_7
    new-instance v0, Ljava/io/IOException;

    sget v1, Lcom/romzkie/ultrasshservice/R$string;->error_file_settings_invalid:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertInputAndSave(Ljava/io/InputStream;Landroid/content/Context;)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "proxyPayload"

    const-string v2, "usarDefaultPayload"

    const-string v3, "proxyRemotoPorta"

    const-string v4, "proxyRemoto"

    const-string v5, "tunnelType"

    const-string v6, "sshPortaLocal"

    const-string v7, "sshPass"

    const-string v8, "sshUser"

    const-string v9, "sshPort"

    const-string v10, "sshServer"

    const-string v11, "1"

    .line 58
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 60
    new-instance v13, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v13, v1}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v13}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v14

    .line 62
    invoke-virtual {v14}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object v14

    .line 66
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->decodeInput(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-virtual {v12, v15}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v15, "file.appVersionCode"

    .line 77
    invoke-virtual {v12, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v13

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->getBuildId(Landroid/content/Context;)I

    move-result v13

    if-gt v15, v13, :cond_16

    const-string v13, "file.msg"

    .line 84
    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "file.proteger"

    .line 85
    invoke-virtual {v12, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 p0, v13

    :try_start_3
    const-string v13, "file.validade"

    .line 89
    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v19, 0x0

    if-eqz v15, :cond_3

    cmp-long v13, v17, v19

    if-gez v13, :cond_0

    goto :goto_1

    :cond_0
    if-lez v13, :cond_2

    .line 97
    :try_start_4
    invoke-static/range {v17 .. v18}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->isValidadeExpirou(J)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->error_settings_expired:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-wide/from16 v21, v17

    goto :goto_2

    :cond_3
    :goto_1
    move-wide/from16 v21, v19

    :goto_2
    const-string v13, "bloquearRoot"

    .line 103
    invoke-virtual {v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move/from16 v17, v15

    if-eqz v13, :cond_5

    .line 105
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->isDeviceRooted(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4

    goto :goto_3

    .line 108
    :cond_4
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->error_root_detected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    const/4 v13, 0x0

    .line 115
    :cond_6
    :goto_3
    :try_start_5
    invoke-virtual {v12, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v13

    .line 116
    invoke-virtual {v12, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v9

    .line 117
    invoke-virtual {v12, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v8

    .line 118
    invoke-virtual {v12, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual {v12, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v25, v6

    .line 122
    invoke-virtual {v12, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    const/16 v27, 0x1

    if-nez v26, :cond_8

    move-object/from16 v26, v5

    const-string v5, "sshProxy"

    .line 127
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_4

    :cond_7
    const-string v5, "sshDirect"

    .line 130
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_8
    move-object/from16 v26, v5

    :cond_9
    const/4 v5, 0x1

    :goto_4
    if-eqz v15, :cond_14

    .line 139
    invoke-virtual {v12, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {v12, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v29, v5

    const-string v5, ""

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    move-object v6, v5

    .line 141
    :goto_5
    :try_start_6
    invoke-interface {v14, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v28, :cond_b

    move-object/from16 v4, v28

    goto :goto_6

    :cond_b
    move-object v4, v5

    .line 142
    :goto_6
    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-virtual {v12, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    :goto_7
    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    move-object v2, v5

    .line 147
    :goto_8
    invoke-interface {v14, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "mensagemConfig"

    const-string v2, "inputPassword"

    if-eqz v17, :cond_11

    if-eqz p0, :cond_e

    move-object/from16 v5, p0

    .line 150
    :cond_e
    :try_start_7
    invoke-interface {v14, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, v1}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v0, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->setModoDebug(Z)V

    const-string v0, "file.pedirLogin"

    .line 155
    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 157
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    invoke-interface {v14, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 159
    invoke-interface {v14, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    .line 162
    :cond_11
    invoke-interface {v14, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    .line 163
    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    :goto_b
    invoke-interface {v14, v10, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, v20

    .line 167
    invoke-interface {v14, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, v23

    .line 168
    invoke-interface {v14, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v14, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-interface {v14, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, v26

    move/from16 v5, v29

    .line 172
    invoke-interface {v14, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "protegerConfig"

    move/from16 v2, v17

    .line 173
    invoke-interface {v14, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "validadeConfig"

    move-wide/from16 v4, v21

    .line 174
    invoke-interface {v14, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "blockRoot"

    move/from16 v15, v19

    .line 175
    invoke-interface {v14, v0, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dnsForward"

    .line 177
    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "0"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    const/4 v0, 0x1

    :goto_c
    const-string v2, "dnsResolver"

    .line 179
    invoke-virtual {v12, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v4, v16

    .line 180
    :try_start_8
    invoke-virtual {v4, v0}, Lcom/romzkie/ultrasshservice/config/Settings;->setVpnDnsForward(Z)V

    .line 181
    invoke-virtual {v4, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->setVpnDnsResolver(Ljava/lang/String;)V

    const-string v0, "udpForward"

    .line 183
    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 184
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v15, 0x1

    goto :goto_d

    :cond_13
    const/4 v15, 0x0

    :goto_d
    const-string v0, "udpResolver"

    .line 185
    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v4, v15}, Lcom/romzkie/ultrasshservice/config/Settings;->setVpnUdpForward(Z)V

    .line 187
    invoke-virtual {v4, v0}, Lcom/romzkie/ultrasshservice/config/Settings;->setVpnUdpResolver(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 196
    :try_start_9
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return v0

    :cond_14
    move-object/from16 v4, v16

    .line 136
    :try_start_a
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v4, v16

    .line 190
    :goto_e
    :try_start_b
    invoke-virtual {v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getModoDebug()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "Error Settings"

    .line 191
    invoke-static {v2, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 193
    :cond_15
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->error_file_settings_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catch_2
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->alert_update_app:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_16
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->alert_update_app:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 73
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Error Unknown"

    invoke-direct {v0, v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :catch_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File Not Found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 203
    :catchall_0
    new-instance v0, Ljava/io/IOException;

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->error_file_invalid:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 201
    new-instance v2, Ljava/io/IOException;

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->error_file_invalid:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    .line 199
    throw v0
.end method

.method private static decodeInput(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 314
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->getBytesArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 317
    :try_start_0
    sget-object v0, Lcom/romzkie/ultrasshservice/config/ConfigParser;->mCrypto:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->decryptFromBase64(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "cinbdf665$4"

    invoke-static {p0, v1, v0}, Lcom/romzkie/ultrasshservice/util/Cripto;->decrypt(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 325
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static encodeInput(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/romzkie/ultrasshservice/config/ConfigParser;->mCrypto:Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;

    invoke-static {p0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->getBytesArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 303
    invoke-virtual {v0, p0}, Lcom/romzkie/ultrasshservice/util/securepreferences/crypto/Cryptor;->encryptToBase64([B)Ljava/lang/String;

    move-result-object p0

    .line 308
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static getBuildId(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 366
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 368
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Build ID not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBytesArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 333
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 334
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    return-object v0
.end method

.method public static isDeviceRooted(Landroid/content/Context;)Z
    .locals 1

    .line 391
    new-instance v0, Lcom/kimchangyoun/rootbeerFresh/RootBeer;

    invoke-direct {v0, p0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->detectRootManagementApps()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->detectPotentiallyDangerousApps()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "su"

    invoke-virtual {v0, p0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkForBinary(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 394
    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkForDangerousProps()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkForRWPaths()Z

    move-result p0

    if-nez p0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->detectTestKeys()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkSuExists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkForRootNative()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/kimchangyoun/rootbeerFresh/RootBeer;->checkForMagiskBinary()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidadeExpirou(J)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    .line 353
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-ltz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
