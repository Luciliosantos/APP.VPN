.class public Lcom/conecta4g/vpn/adapter/CustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field countryNames:[Ljava/lang/String;

.field flags:[I

.field inflter:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->flags:[I

    .line 18
    iput-object p3, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->countryNames:[Ljava/lang/String;

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->inflter:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->flags:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 40
    iget-object p2, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->inflter:Landroid/view/LayoutInflater;

    const p3, 0x7f0c002a

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900a5

    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f090140

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->flags:[I

    aget v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object p3, p0, Lcom/conecta4g/vpn/adapter/CustomAdapter;->countryNames:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
