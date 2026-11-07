.class Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$1;
.super Ljava/lang/Object;
.source "ConfigImportFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->requestPermissionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$1;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$1;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->finish()V

    return-void
.end method
