.class public Lcom/conecta4g/vpn/ExceptionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExceptionActivity.java"


# instance fields
.field error:Landroid/widget/TextView;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 19
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/ExceptionActivity;->setContentView(Landroid/view/View;)V

    .line 24
    new-instance p1, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/ExceptionActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 25
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/ExceptionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 26
    iget-object p1, p0, Lcom/conecta4g/vpn/ExceptionActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0f0030

    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/ExceptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/conecta4g/vpn/ExceptionActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 28
    iget-object p1, p0, Lcom/conecta4g/vpn/ExceptionActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/conecta4g/vpn/ExceptionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 29
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 32
    iget-object v2, p0, Lcom/conecta4g/vpn/ExceptionActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/conecta4g/vpn/ExceptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
