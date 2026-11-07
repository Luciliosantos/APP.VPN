.class public Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "ConfigExportFileActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigExportFileActivity"


# instance fields
.field private idsProtegerChecksView:[I

.field private idsProtegerViews:[I

.field private mBloquearRoot:Z

.field private mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

.field private mIsProteger:Z

.field private mMensagem:Ljava/lang/String;

.field private mPedirSenha:Z

.field private mValidade:J

.field private mensagemEdit:Landroid/widget/EditText;

.field private nomeEdit:Landroid/widget/EditText;

.field private validadeCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private validadeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    const-string v1, ""

    .line 68
    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mMensagem:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mPedirSenha:Z

    .line 70
    iput-boolean v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mBloquearRoot:Z

    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 239
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->idsProtegerViews:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 248
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->idsProtegerChecksView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090025
        0x7f090026
        0x7f090021
        0x7f09001f
        0x7f09001d
        0x7f090024
    .end array-data

    :array_1
    .array-data 4
        0x7f090025
        0x7f09001d
        0x7f090024
    .end array-data
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeText:Landroid/widget/TextView;

    return-object p0
.end method

.method private doLayout()V
    .locals 6

    const v0, 0x7f0c001e

    .line 73
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->setContentView(I)V

    const v0, 0x7f09014b

    .line 75
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 76
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 77
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f090020

    .line 80
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f090022

    .line 83
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->nomeEdit:Landroid/widget/EditText;

    const v0, 0x7f090023

    .line 84
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f090025

    .line 85
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    const v1, 0x7f090026

    .line 86
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeText:Landroid/widget/TextView;

    const v1, 0x7f090021

    .line 87
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mensagemEdit:Landroid/widget/EditText;

    const v1, 0x7f09001e

    .line 88
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090024

    .line 89
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatCheckBox;

    const v3, 0x7f09001d

    .line 90
    invoke-virtual {p0, v3}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v4, 0x0

    .line 92
    invoke-direct {p0, v4}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->showSegurancaLayout(Z)V

    .line 93
    iget-object v4, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mensagemEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-virtual {v5}, Lcom/romzkie/ultrasshservice/config/Settings;->getMensagemConfigExportar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeCheck:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v4, p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-virtual {v3, p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private exportConfiguracao(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/romzkie/ultrasshservice/util/FileUtils;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "SocksHttp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 115
    :cond_0
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    const-string v3, "sks"

    aput-object v3, v2, p1

    const-string p1, "%s.%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mMensagem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/romzkie/ultrasshservice/config/Settings;->setMensagemConfigExportar(Ljava/lang/String;)V

    .line 130
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-boolean v4, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    iget-boolean v5, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mPedirSenha:Z

    iget-boolean v6, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mBloquearRoot:Z

    iget-object v7, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mMensagem:Ljava/lang/String;

    iget-wide v8, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->convertDataToFile(Ljava/io/OutputStream;Landroid/content/Context;ZZZLjava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    throw p1

    .line 106
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private requestPermissions()V
    .locals 0

    .line 231
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/util/FileUtils;->requestForPermissionExternalStorage(Landroid/app/Activity;)V

    return-void
.end method

.method private setValidadeDate()V
    .locals 10

    .line 148
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v3, v1

    .line 151
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    .line 153
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x2

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v3, 0x5

    .line 155
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 157
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    .line 159
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v6, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$1;

    invoke-direct {v6, p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$1;-><init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)V

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const v3, 0x7f0f0098

    .line 171
    invoke-virtual {p0, v3}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;-><init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;Landroid/app/DatePickerDialog;J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f0f003a

    .line 204
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$3;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$3;-><init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 217
    new-instance v1, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;-><init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private showSegurancaLayout(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0f0029

    const/4 v2, 0x1

    .line 256
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->idsProtegerChecksView:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 261
    invoke-virtual {p0, v4}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->idsProtegerViews:[I

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget v3, v1, v0

    .line 266
    invoke-virtual {p0, v3}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 274
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f09001d

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->setValidadeDate()V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 280
    iput-wide p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    .line 281
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->validadeText:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :pswitch_1
    iput-boolean p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mPedirSenha:Z

    goto :goto_0

    .line 289
    :pswitch_2
    iput-boolean p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    .line 290
    invoke-direct {p0, p2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->showSegurancaLayout(Z)V

    goto :goto_0

    .line 298
    :cond_1
    iput-boolean p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mBloquearRoot:Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090023
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09001e

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->nomeEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    iget-boolean v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mensagemEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mMensagem:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const p1, 0x7f0f0065

    .line 312
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 317
    :cond_2
    iget-boolean v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mIsProteger:Z

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_4

    .line 318
    :cond_3
    iput-wide v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mValidade:J

    .line 322
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->exportConfiguracao(Ljava/lang/String;)V

    const p1, 0x7f0f00de

    .line 324
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const v0, 0x7f0f0068

    .line 327
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_1
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->onBackPressed()V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->mConfig:Lcom/romzkie/ultrasshservice/config/Settings;

    .line 45
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->doLayout()V

    .line 48
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->requestPermissions()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
