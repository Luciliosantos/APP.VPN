.class Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "<strong><font color=\"red\">Usu\u00e1rio n\u00e3o encontrado no banco de dados!</strong>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
