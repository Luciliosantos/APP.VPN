.class public Lcom/conecta4g/vpn/view/PasswordEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "PasswordEditTextPreference.java"


# instance fields
.field private mDefaultSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400cc

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p0}, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p0}, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p0, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->mDefaultSummary:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, "*"

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/view/PasswordEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
