.class public Lcom/romzkie/ultrasshservice/config/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/config/SettingsConstants;


# static fields
.field private static minimumConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsPrivate:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;

    const-string v1, "fubgf777gf6"

    invoke-direct {v0, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig$Builder;->build()Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    move-result-object v0

    sput-object v0, Lcom/romzkie/ultrasshservice/config/Settings;->minimumConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    .line 28
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/romzkie/ultrasshservice/config/Settings;->minimumConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    const-string v1, "SecureData"

    invoke-static {p1, v1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefsPrivate:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    return-void
.end method

.method public static clearSettings(Landroid/content/Context;)V
    .locals 2

    .line 280
    sget-object v0, Lcom/romzkie/ultrasshservice/config/Settings;->minimumConfig:Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;

    const-string v1, "SecureData"

    invoke-static {p0, v1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/romzkie/ultrasshservice/util/securepreferences/model/SecurityConfig;)Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p0

    .line 281
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 282
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDefaultConfig(Landroid/content/Context;)V
    .locals 3

    .line 250
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 251
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dnsForward"

    const/4 v1, 0x1

    .line 253
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dnsResolver"

    const-string v2, "8.8.8.8"

    .line 254
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "udpResolver2"

    const-string v2, "8.8.4.4"

    .line 255
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "udpForward"

    .line 256
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "udpResolver"

    const-string v2, "127.0.0.1:7300"

    .line 257
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "modeNight"

    const-string v2, "off"

    .line 258
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pingerSSH"

    const-string v2, "3"

    .line 259
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ping_server"

    const-string v2, "clients3.google.com"

    .line 260
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "numberMaxThreadSocks"

    const-string v2, "0th"

    .line 261
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "autoClearLogs"

    .line 262
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "hideLog"

    const/4 v2, 0x1

    .line 263
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "data_compression"

    .line 264
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tls_version"

    .line 265
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wakelock"

    .line 266
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "auto_ping"

    .line 267
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "speed_meter"

    .line 268
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "modeDebug"

    .line 269
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "filterApps"

    .line 270
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "filterBypassMode"

    .line 271
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "filterAppsList"

    .line 272
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "tetherSubnet"

    .line 273
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "disableDelaySSH"

    .line 274
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUdpRandom(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 236
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 237
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "udpResolver"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getAutoClearLog()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autoClearLogs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFilterApps()[Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "filterAppsList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, "\n"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHideLog()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hideLog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIdioma()Ljava/lang/String;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "idioma"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsDisabledDelaySSH()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "disableDelaySSH"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsFilterApps()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "filterApps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsFilterBypassMode()Z
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "filterBypassMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsTetheringSubnet()Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "tetherSubnet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMaximoThreadsSocks()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "numberMaxThreadSocks"

    const-string v2, "0th"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :cond_1
    :goto_0
    const-string v0, "th"

    const-string v1, ""

    .line 103
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMensagemConfigExportar()Ljava/lang/String;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "mensagemConfigExport"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModoDebug()Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "modeDebug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getModoNoturno()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "modeNight"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefsPrivate:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    return-object v0
.end method

.method public getPrivString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "sshPortaLocal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "1080"

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefsPrivate:Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    invoke-virtual {v1, p1, v0}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSSHKeypath()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "keyPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSHPinger()I
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "pingerSSH"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 232
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVpnDnsForward()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "dnsForward"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVpnDnsResolver()Ljava/lang/String;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "dnsResolver"

    const-string v2, "8.8.8.8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnDnsResolver2()Ljava/lang/String;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "udpResolver2"

    const-string v2, "8.8.4.4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnUdpForward()Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "udpForward"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVpnUdpResolver()Ljava/lang/String;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "udpResolver"

    const-string v2, "127.0.0.1:7300"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWakelock()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "wakelock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public network_meter()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "speed_meter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoPing()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_ping"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIdioma(Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "idioma"

    .line 74
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMensagemConfigExportar(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mensagemConfigExport"

    .line 59
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setModoDebug(Z)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modeDebug"

    .line 94
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setModoNoturno(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modeNight"

    .line 84
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setPinger()Ljava/lang/String;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ping_server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setVpnDnsForward(Z)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dnsForward"

    .line 169
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVpnDnsResolver(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "1.1.1.1"

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dnsResolver"

    .line 186
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVpnUdpForward(Z)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "udpForward"

    .line 201
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setVpnUdpResolver(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "127.0.0.1:7300"

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "udpResolver"

    .line 214
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public ssh_compression()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "data_compression"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public tls_version()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/config/Settings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "tls_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
