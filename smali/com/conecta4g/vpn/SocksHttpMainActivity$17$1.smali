.class Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

.field final synthetic val$cont_online:I

.field final synthetic val$data_exp:Ljava/lang/String;

.field final synthetic val$dias_exp:Ljava/lang/String;

.field final synthetic val$limite_user:I

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$17;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1809
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$user:Ljava/lang/String;

    iput p3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$cont_online:I

    iput p4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$limite_user:I

    iput-object p5, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$data_exp:Ljava/lang/String;

    iput-object p6, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$dias_exp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$user:Ljava/lang/String;

    const-string v1, "not exist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    new-instance v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;)V

    invoke-virtual {v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1823
    :cond_0
    iget v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$cont_online:I

    iget v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$limite_user:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " | "

    const-string v3, "</strong>"

    if-le v0, v1, :cond_1

    .line 1824
    :try_start_1
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iget v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$cont_online:I

    iget v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$limite_user:I

    invoke-static {v0, v1, v4}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2100(Lcom/conecta4g/vpn/SocksHttpMainActivity;II)V

    .line 1825
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 1826
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->startOrStopTunnel(Landroid/app/Activity;)V

    .line 1827
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<strong><font color=\"#ffffff\">Limite: </strong><strong><font color=\"red\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$cont_online:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$limite_user:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<strong><font color=\"#ffffff\">Limite: </strong><strong><font color=\"green\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$cont_online:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$limite_user:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    :goto_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<strong><font color=\"#ffffff\">Vencimento: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$data_exp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1833
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->val$dias_exp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    .line 1835
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<strong><font color=\"#ffffff\">Dias restantes: </strong><strong><font color=\"green\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_2
    const-string v1, "<strong><font color=\"#ffffff\">Dias restantes: </strong><strong><font color=\"red\">"

    if-nez v0, :cond_3

    .line 1837
    :try_start_2
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v2, v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2300(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 1839
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2400(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    goto :goto_1

    .line 1841
    :cond_3
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v2, v2, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1843
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const-string v2, " dia"

    invoke-static {v1, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2500(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V

    .line 1844
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const-string v2, " DIA"

    invoke-static {v1, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2600(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 1846
    :cond_4
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const-string v2, " dias"

    invoke-static {v1, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2500(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V

    .line 1847
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$17;

    iget-object v1, v1, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const-string v2, " DIAS"

    invoke-static {v1, v0, v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2600(Lcom/conecta4g/vpn/SocksHttpMainActivity;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1852
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
