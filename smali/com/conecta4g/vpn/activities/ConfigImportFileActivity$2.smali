.class Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$2;
.super Ljava/lang/Object;
.source "ConfigImportFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 289
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 292
    iget-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 293
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
