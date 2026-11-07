.class public Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ManagerFilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field ivImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

.field tvItemLayout:Landroid/widget/LinearLayout;

.field tvItemName:Landroid/widget/TextView;

.field tvItemNameSecond:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900b0

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090154

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemName:Landroid/widget/TextView;

    const p1, 0x7f0900af

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->ivImage:Landroid/widget/ImageView;

    const p1, 0x7f090155

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemNameSecond:Landroid/widget/TextView;

    return-void
.end method
