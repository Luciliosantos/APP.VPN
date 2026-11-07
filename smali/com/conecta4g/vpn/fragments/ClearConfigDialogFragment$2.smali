.class Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$2;
.super Ljava/lang/Object;
.source "ClearConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$2;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$2;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;->dismiss()V

    return-void
.end method
