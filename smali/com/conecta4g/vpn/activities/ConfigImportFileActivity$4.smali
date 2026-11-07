.class Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;
.super Ljava/lang/Object;
.source "ConfigImportFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->showApagarPrompt(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;Ljava/io/File;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->access$000(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->access$100(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0064

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 403
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
