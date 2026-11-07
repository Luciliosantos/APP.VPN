.class Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;
.super Ljava/lang/Object;
.source "ProxyRemoteDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;

    invoke-static {p1, p2}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->access$002(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;Z)Z

    .line 96
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;

    invoke-static {p1, p2}, Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;->access$100(Lcom/conecta4g/vpn/fragments/ProxyRemoteDialogFragment;Z)V

    return-void
.end method
