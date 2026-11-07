.class public Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ProxyRemoteDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private autenticacaoLayout:Landroid/widget/LinearLayout;

.field private autenticacaoSenha:Lcom/google/android/material/textfield/TextInputEditText;

.field private autenticacaoUsuario:Lcom/google/android/material/textfield/TextInputEditText;

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private proxyRemotoIpEdit:Lcom/google/android/material/textfield/TextInputEditText;

.field private proxyRemotoPortaEdit:Lcom/google/android/material/textfield/TextInputEditText;

.field private usarPayloadPadrao:Z

.field private usarProxyAutenticacao:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarProxyAutenticacao:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->setProxyAutenticacaoView(Z)V

    return-void
.end method

.method private setProxyAutenticacaoView(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09008e

    if-eq p1, v0, :cond_3

    const v0, 0x7f090091

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoIpEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoPortaEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object v1

    .line 146
    iget-boolean v2, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarProxyAutenticacao:Z

    const-string v3, "usarProxyAutenticacao"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "proxyRemoto"

    .line 148
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "proxyRemotoPorta"

    .line 149
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateMainViews(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->dismiss()V

    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Proxy inv\u00e1lido"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->dismiss()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 45
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    const-string v0, "usarDefaultPayload"

    const/4 v1, 0x1

    .line 47
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarPayloadPadrao:Z

    const-string v0, "usarProxyAutenticacao"

    const/4 v1, 0x0

    .line 48
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarProxyAutenticacao:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c003d

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09008f

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoIpEdit:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f090090

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoPortaEdit:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f090092

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    const v0, 0x7f09008b

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09008d

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoUsuario:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09008c

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoSenha:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09008e

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090091

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-boolean v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarPayloadPadrao:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->autenticacaoLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoIpEdit:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v3, "proxyRemoto"

    invoke-virtual {v2, v3}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    const-string v2, "proxyRemotoPorta"

    invoke-virtual {v0, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyRemotoPortaEdit:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v3, v2}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrivString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v2, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;-><init>(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-boolean v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->usarProxyAutenticacao:Z

    if-nez v0, :cond_2

    .line 101
    invoke-direct {p0, v0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->setProxyAutenticacaoView(Z)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->proxyAutenticacaoCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 109
    :goto_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Configura\u00e7\u00f5es de Proxy"

    .line 110
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
