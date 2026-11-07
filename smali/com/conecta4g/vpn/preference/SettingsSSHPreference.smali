.class public Lcom/conecta4g/vpn/preference/SettingsSSHPreference;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsSSHPreference.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/config/SettingsConstants;
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsSSHPreference"


# instance fields
.field protected listEdit_keysProteger:[Ljava/lang/String;

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mHandler:Landroid/os/Handler;

.field private mInsecurePrefs:Landroid/content/SharedPreferences;

.field private mSecurePrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const-string v0, "sshServer"

    const-string v1, "sshPort"

    const-string v2, "sshUser"

    const-string v3, "sshPass"

    .line 28
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->listEdit_keysProteger:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 43
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    .line 44
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120003

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    .line 71
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    .line 63
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method

.method public onStart()V
    .locals 8

    .line 87
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->listEdit_keysProteger:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    .line 90
    iget-object v6, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {p0, v5}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/EditTextPreference;

    iget-object v7, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    .line 92
    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    const-string v6, "protegerConfig"

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "sshUser"

    .line 96
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "sshPass"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    const-string v6, "inputPassword"

    .line 97
    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0, v5}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v5, 0x7f0f0038

    .line 104
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "sshPortaLocal"

    .line 109
    iget-object v1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/EditTextPreference;

    iget-object v2, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    .line 111
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 11

    .line 117
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 120
    iget-object v0, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mSecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->listEdit_keysProteger:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const-string v6, " adding encrypted copy to secure prefs"

    const-string v7, "match found for "

    if-ge v4, v3, :cond_1

    aget-object v8, v2, v4

    .line 124
    iget-object v9, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 125
    sget-object v9, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v6, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "sshPortaLocal"

    .line 134
    iget-object v3, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    sget-object v3, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mInsecurePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/conecta4g/vpn/preference/SettingsSSHPreference;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/conecta4g/vpn/preference/SettingsSSHPreference$1;

    invoke-direct {p2, p0}, Lcom/conecta4g/vpn/preference/SettingsSSHPreference$1;-><init>(Lcom/conecta4g/vpn/preference/SettingsSSHPreference;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
