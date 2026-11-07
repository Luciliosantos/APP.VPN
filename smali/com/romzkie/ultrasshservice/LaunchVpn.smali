.class public Lcom/romzkie/ultrasshservice/LaunchVpn;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LaunchVpn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final CLEARLOG:Ljava/lang/String; = "clearlogconnect"

.field public static final EXTRA_HIDELOG:Ljava/lang/String; = "com.conecta4g.vpn.showNoLogWindow"

.field private static final START_VPN_PROFILE:I = 0x46


# instance fields
.field private isMostrarSenha:Z

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mTransientAuthPW:Ljava/lang/String;

.field private mhideLog:Z

.field private toastutil:Lcom/romzkie/ultrasshservice/util/ToastUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mhideLog:Z

    .line 42
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->isMostrarSenha:Z

    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/LaunchVpn;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->isMostrarSenha:Z

    return p0
.end method

.method static synthetic access$002(Lcom/romzkie/ultrasshservice/LaunchVpn;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->isMostrarSenha:Z

    return p1
.end method

.method static synthetic access$100(Lcom/romzkie/ultrasshservice/LaunchVpn;)Lcom/romzkie/ultrasshservice/config/Settings;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    return-object p0
.end method

.method static synthetic access$200(Lcom/romzkie/ultrasshservice/LaunchVpn;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mTransientAuthPW:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/romzkie/ultrasshservice/LaunchVpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mTransientAuthPW:Ljava/lang/String;

    return-object p1
.end method

.method private askForPW(I)V
    .locals 5

    .line 80
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    sget v1, Lcom/romzkie/ultrasshservice/R$string;->title_auth:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 82
    sget v1, Lcom/romzkie/ultrasshservice/R$string;->auth_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/romzkie/ultrasshservice/R$layout;->userpass:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    sget v2, Lcom/romzkie/ultrasshservice/R$id;->username:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v4, "sshUser"

    invoke-virtual {v3, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    sget v2, Lcom/romzkie/ultrasshservice/R$id;->password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v4, "sshPass"

    invoke-virtual {v3, v4}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget v2, Lcom/romzkie/ultrasshservice/R$id;->save_password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    sget v2, Lcom/romzkie/ultrasshservice/R$id;->show_password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/romzkie/ultrasshservice/LaunchVpn$1;

    invoke-direct {v3, p0, v1}, Lcom/romzkie/ultrasshservice/LaunchVpn$1;-><init>(Lcom/romzkie/ultrasshservice/LaunchVpn;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    new-instance v2, Lcom/romzkie/ultrasshservice/LaunchVpn$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/romzkie/ultrasshservice/LaunchVpn$2;-><init>(Lcom/romzkie/ultrasshservice/LaunchVpn;ILandroid/view/View;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 138
    new-instance p1, Lcom/romzkie/ultrasshservice/LaunchVpn$3;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/LaunchVpn$3;-><init>(Lcom/romzkie/ultrasshservice/LaunchVpn;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private launchVPN()V
    .locals 6

    .line 246
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x46

    if-eqz v0, :cond_0

    .line 249
    sget v2, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_permission:I

    sget-object v3, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_WAITING_FOR_USER_INPUT:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v4, "USER_VPN_PERMISSION"

    const-string v5, ""

    invoke-static {v4, v5, v2, v3}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 253
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->no_vpn_support_image:I

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(I)V

    .line 258
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->showLogWindow()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 261
    invoke-virtual {p0, v1, v0, v2}, Lcom/romzkie/ultrasshservice/LaunchVpn;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showLogWindow()V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conecta4g.vpn:openLogs"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 167
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x46

    if-ne p1, p3, :cond_b

    const/4 p1, -0x1

    const-string p3, ""

    if-ne p2, p1, :cond_9

    .line 171
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    .line 173
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "USER_VPN_PASSWORD_CANCELLED"

    if-nez p2, :cond_0

    .line 174
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 177
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->toastutil:Lcom/romzkie/ultrasshservice/util/ToastUtil;

    const-string p2, "Sem conex\u00e3o com a Internet, ligue os dados moveis."

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/util/ToastUtil;->showConfusingToast(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    goto/16 :goto_2

    :cond_0
    const-string p2, "tunnelType"

    const/4 v1, 0x1

    .line 181
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "proxyRemoto"

    .line 182
    invoke-virtual {p2, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "proxyRemotoPorta"

    invoke-virtual {p2, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 183
    :cond_1
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 186
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->error_proxy_invalid:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    goto/16 :goto_2

    :cond_2
    const-string p2, "usarDefaultPayload"

    .line 191
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "proxyPayload"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 192
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 195
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->error_empty_payload:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    goto/16 :goto_2

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "sshServer"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "sshPort"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 215
    :cond_4
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "sshUser"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string p2, "sshPass"

    invoke-virtual {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mTransientAuthPW:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 223
    :cond_5
    iget-boolean p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mhideLog:Z

    if-nez p1, :cond_6

    .line 224
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->showLogWindow()V

    .line 227
    :cond_6
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerHelper;->startSocksHttp(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    goto :goto_2

    .line 217
    :cond_7
    :goto_0
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_WAITING_FOR_USER_INPUT:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v0, "USER_VPN_PASSWORD"

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 220
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->password:I

    invoke-direct {p0, p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->askForPW(I)V

    goto :goto_2

    .line 201
    :cond_8
    :goto_1
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 204
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->error_empty_settings:I

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 207
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 208
    new-instance p2, Landroid/content/ComponentName;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".activities.ConfigGeralActivity"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "openSSHScreen"

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 210
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    goto :goto_2

    :cond_9
    if-nez p2, :cond_b

    .line 234
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_permission_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v0, "USER_VPN_PERMISSION_CANCELLED"

    invoke-static {v0, p3, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 237
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_a

    .line 238
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->nought_alwayson_warning:I

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(I)V

    .line 240
    :cond_a
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    :cond_b
    :goto_2
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 154
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v1, "USER_VPN_PASSWORD_CANCELLED"

    const-string v2, ""

    invoke-static {v1, v2, p1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 156
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/romzkie/ultrasshservice/R$layout;->launchvpn:I

    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->setContentView(I)V

    .line 51
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 53
    new-instance p1, Lcom/romzkie/ultrasshservice/util/ToastUtil;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/util/ToastUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->toastutil:Lcom/romzkie/ultrasshservice/util/ToastUtil;

    .line 55
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->startVpnFromIntent()V

    return-void
.end method

.method protected startVpnFromIntent()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getAutoClearLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->clearLog()V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "com.conecta4g.vpn.showNoLogWindow"

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn;->mhideLog:Z

    .line 75
    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->launchVPN()V

    :cond_1
    return-void
.end method
