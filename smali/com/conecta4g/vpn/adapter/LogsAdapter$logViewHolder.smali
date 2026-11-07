.class public Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/adapter/LogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "logViewHolder"
.end annotation


# instance fields
.field textLog:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/adapter/LogsAdapter;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;->this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013c

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    return-void
.end method
