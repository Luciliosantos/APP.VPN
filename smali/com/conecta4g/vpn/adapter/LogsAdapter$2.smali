.class Lcom/conecta4g/vpn/adapter/LogsAdapter$2;
.super Ljava/lang/Object;
.source "LogsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/adapter/LogsAdapter;->onBindViewHolder(Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;

.field final synthetic val$position:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/adapter/LogsAdapter;ILjava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    iput p2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->access$000(Lcom/conecta4g/vpn/adapter/LogsAdapter;)Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->this$0:Lcom/conecta4g/vpn/adapter/LogsAdapter;

    invoke-static {v0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->access$000(Lcom/conecta4g/vpn/adapter/LogsAdapter;)Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;->val$text:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
