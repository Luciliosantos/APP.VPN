.class Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;
.super Ljava/lang/Object;
.source "ManagerFilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->onBindViewHolder(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    iput p2, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->access$000(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->access$000(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
