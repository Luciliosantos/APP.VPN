.class public Lcom/conecta4g/vpn/preference/SettingsPreference;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/romzkie/ultrasshservice/config/SettingsConstants;
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;


# static fields
.field public static final ADVANCED_SCREEN_PREFERENCE_KEY:Ljava/lang/String; = "screenAdvancedSettings"

.field public static final SSHSERVER_PREFERENCE_KEY:Ljava/lang/String; = "screenSSHSettings"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPref:Landroid/content/SharedPreferences;

.field private settings_disabled_keys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 29
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const-string v0, "dnsForward"

    const-string v1, "dnsResolver"

    const-string v2, "udpResolver2"

    const-string v3, "udpForward"

    const-string v4, "udpResolver"

    const-string v5, "pingerSSH"

    const-string v6, "autoClearLogs"

    const-string v7, "hideLog"

    const-string v8, "modeNight"

    const-string v9, "data_compression"

    const-string v10, "speed_meter"

    const-string v11, "auto_ping"

    const-string v12, "ping_server"

    const-string v13, "tls_version"

    const-string v14, "idioma"

    .line 40
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->settings_disabled_keys:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/preference/SettingsPreference;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->setRunningTunnel(Z)V

    return-void
.end method

.method private onChangeUseVpn(Z)V
    .locals 9

    const-string v0, "udpResolver"

    .line 116
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    const-string v1, "dnsResolver"

    .line 118
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    const-string v2, "udpResolver2"

    .line 120
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/EditTextPreference;

    .line 122
    iget-object v3, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->settings_disabled_keys:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 123
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    .line 124
    invoke-virtual {v7, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "udpForward"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 130
    iget-object v3, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "dnsForward"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 132
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 133
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 134
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setRunningTunnel(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->settings_disabled_keys:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 154
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->onChangeUseVpn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120001

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mPref:Landroid/content/SharedPreferences;

    const-string p1, "udpForward"

    .line 92
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 93
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "dnsForward"

    .line 96
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 97
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "modeNight"

    .line 100
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 101
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->setListPreferenceSummary(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    const-string p1, "idioma"

    .line 106
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 107
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conecta4g/vpn/preference/SettingsAdvancedPreference;->setListPreferenceSummary(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/preference/SettingsPreference;->setRunningTunnel(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    .line 79
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 172
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "modeNight"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "udpForward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "dnsForward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "idioma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x12c

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 174
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "udpResolver"

    .line 177
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    .line 178
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 182
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "dnsResolver"

    .line 185
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    .line 186
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p2, "udpResolver2"

    .line 188
    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    .line 189
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return v1

    .line 230
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .line 232
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getIdioma()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    .line 237
    :cond_4
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/conecta4g/vpn/preference/SettingsPreference$2;

    invoke-direct {v0, p0, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference$2;-><init>(Lcom/conecta4g/vpn/preference/SettingsPreference;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v3

    .line 193
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mPref:Landroid/content/SharedPreferences;

    const-string v0, "off"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/conecta4g/vpn/preference/SettingsPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/conecta4g/vpn/preference/SettingsPreference$1;-><init>(Lcom/conecta4g/vpn/preference/SettingsPreference;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsPreference;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797537cb -> :sswitch_3
        -0x47208f2b -> :sswitch_2
        0x71b355c -> :sswitch_1
        0x3dabdbc4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 71
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsPreference;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/conecta4g/vpn/preference/SettingsPreference$3;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/preference/SettingsPreference$3;-><init>(Lcom/conecta4g/vpn/preference/SettingsPreference;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
