.class Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;
.super Ljava/lang/Object;
.source "ManagerFilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 123
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    iput p2, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->access$000(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->access$000(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;)Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
