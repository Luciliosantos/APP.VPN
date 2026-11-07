.class public Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsAdvancedPreference.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/config/SettingsConstants;
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private enableFilterLayout(Z)V
    .locals 3

    const-string v0, "filterBypassMode"

    const-string v1, "filterAppsList"

    .line 129
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 134
    aget-object v2, v0, v1

    .line 135
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setListPreferenceSummary(Landroidx/preference/ListPreference;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const/high16 p1, 0x7f120000

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    .line 33
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->mPref:Landroid/content/SharedPreferences;

    .line 35
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    const-string p2, "modeDebug"

    .line 41
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 42
    invoke-virtual {v0, p0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 46
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v0

    const-string v2, "protegerConfig"

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 54
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v2, "filterApps"

    if-ge p2, v0, :cond_1

    const/4 p1, 0x3

    const-string p2, "filterBypassMode"

    const-string v0, "filterAppsList"

    .line 55
    filled-new-array {v2, p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 60
    aget-object v2, p2, v0

    .line 61
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    .line 66
    invoke-virtual {p2, p0}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getIsFilterApps()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->enableFilterLayout(Z)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 85
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "modeDebug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "filterApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 121
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->enableFilterLayout(Z)V

    goto :goto_0

    .line 110
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Desative ap\u00f3s terminar os testes"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 77
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference$1;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference$1;-><init>(Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
