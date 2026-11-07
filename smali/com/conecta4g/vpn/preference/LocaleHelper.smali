.class public Lcom/conecta4g/vpn/preference/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/preference/LocaleHelper$LocaleDef;
    }
.end annotation


# static fields
.field static final DEFAULT:Ljava/lang/String; = "default"

.field static final PORTUGUES_BR:Ljava/lang/String; = "pt-BR"

.field static final SPANISH:Ljava/lang/String; = "es"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguagePref(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 50
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getIdioma()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocale(Landroid/content/res/Resources;)Ljava/util/Locale;
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    return-object p0
.end method

.method private static setLanguagePref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {v0, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/romzkie/ultrasshservice/config/Settings;->setIdioma(Ljava/lang/String;)V

    return-void
.end method

.method public static setLocale(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/conecta4g/vpn/preference/LocaleHelper;->getLanguagePref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/conecta4g/vpn/preference/LocaleHelper;->updateResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static setNewLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/conecta4g/vpn/preference/LocaleHelper;->setLanguagePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1}, Lcom/conecta4g/vpn/preference/LocaleHelper;->updateResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static updateResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "default"

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "_"

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 70
    new-instance p1, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 78
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 80
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 83
    :cond_2
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_1
    return-object p0
.end method
