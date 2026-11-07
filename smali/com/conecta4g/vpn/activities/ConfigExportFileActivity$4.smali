.class Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;
.super Ljava/lang/Object;
.source "ConfigExportFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->setValidadeDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$002(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;J)J

    .line 221
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$100(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$4;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$100(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
