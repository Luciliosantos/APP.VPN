.class Lcom/conecta4g/vpn/SocksHttpMainActivity$10;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$10;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 1

    .line 1384
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 1385
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1386
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1387
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$10;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {v0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
