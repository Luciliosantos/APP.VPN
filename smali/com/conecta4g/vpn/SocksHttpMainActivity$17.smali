.class Lcom/conecta4g/vpn/SocksHttpMainActivity$17;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->checkUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field final synthetic val$URLServer:Ljava/lang/String;

.field final synthetic val$current_user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1775
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->val$URLServer:Ljava/lang/String;

    iput-object p3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->val$current_user:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, ""

    .line 1779
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->val$URLServer:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1780
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    .line 1781
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json;charset=UTF-8"

    .line 1782
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 1783
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1784
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1785
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1787
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "user"

    .line 1788
    iget-object v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->val$current_user:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "JSON"

    .line 1790
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1794
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1796
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1798
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 1799
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1803
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "username"

    .line 1804
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "count_connection"

    .line 1805
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "expiration_date"

    .line 1806
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "expiration_days"

    .line 1807
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "limiter_user"

    .line 1808
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1809
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    new-instance v3, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/conecta4g/vpn/SocksHttpMainActivity$17$1;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$17;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1857
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 1799
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 1859
    :cond_1
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "<strong><font color=\"red\">Ocorreu um erro ao obter as informa\u00e7\u00f5es do login!</strong>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1861
    iget-object v2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$17;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$2000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
