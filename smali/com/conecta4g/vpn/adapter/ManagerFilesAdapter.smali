.class public Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ManagerFilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;,
        Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;,
        Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p2, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->clickListener:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->onBindViewHolder(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;I)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    .line 102
    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirName()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemNameSecond:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getNameSecond()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "..."

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->ivImage:Landroid/widget/ImageView;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_0
    iget-object v0, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;-><init>(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;->tvItemLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;-><init>(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0042

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance p2, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;-><init>(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->clickListener:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    return-void
.end method
