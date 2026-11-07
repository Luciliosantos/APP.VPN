.class public Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SocksHttpMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;->titles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 552
    fill-array-data p1, :array_0

    .line 554
    aget p1, p1, p2

    .line 556
    iget-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$MyAdapter;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {p2, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f090131
        0x7f090132
    .end array-data
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
