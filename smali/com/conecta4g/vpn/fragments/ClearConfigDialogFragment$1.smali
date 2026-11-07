.class Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$1;
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

    .line 26
    iput-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->clearSettings(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->clearLog()V

    .line 34
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateMainViews(Landroid/content/Context;)V

    .line 36
    iget-object p1, p0, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment$1;->this$0:Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/fragments/ClearConfigDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f00dd

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
