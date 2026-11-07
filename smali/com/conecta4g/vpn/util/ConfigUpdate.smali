.class public Lcom/conecta4g/vpn/util/ConfigUpdate;
.super Landroid/os/AsyncTask;
.source "ConfigUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private config:Lcom/conecta4g/vpn/util/ConfigUtil;

.field private context:Landroid/content/Context;

.field private isOnCreate:Z

.field private listener:Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;

.field private pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->listener:Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/util/ConfigUpdate;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 46
    :try_start_0
    new-instance p1, Lcom/conecta4g/vpn/util/ConfigUtil;

    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conecta4g/vpn/util/ConfigUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    .line 47
    invoke-virtual {p1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUrlUpdate()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 51
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error on getting data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/util/ConfigUpdate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 83
    iget-boolean v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->isOnCreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismiss()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->listener:Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0, p1}, Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;->onUpdateListener(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 69
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 70
    iget-boolean v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->isOnCreate:Z

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    iget-object v1, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->context:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 72
    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getProgressHelper()Lcn/pedant/SweetAlert/widget/ProgressHelper;

    move-result-object v0

    const-string v1, "#A5DC86"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->setBarColor(I)V

    .line 73
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Aguarde um momento enquanto verificamos"

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 74
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const-string v1, "Carregando..."

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 75
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelable(Z)V

    .line 76
    iget-object v0, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->pDialog:Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/conecta4g/vpn/util/ConfigUpdate;->isOnCreate:Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/util/ConfigUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
