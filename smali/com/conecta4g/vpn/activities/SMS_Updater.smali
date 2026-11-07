.class public Lcom/conecta4g/vpn/activities/SMS_Updater;
.super Landroid/os/AsyncTask;
.source "SMS_Updater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "NetGuard.Download"


# instance fields
.field private buffer:Ljava/io/BufferedReader;

.field private config:Lcom/conecta4g/vpn/util/ConfigUtil;

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private is:Ljava/io/InputStream;

.field private listener:Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;

.field private sms_pref:Landroid/content/SharedPreferences;

.field private uRLConnection:Ljava/net/HttpURLConnection;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->listener:Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;

    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->sms_pref:Landroid/content/SharedPreferences;

    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/SMS_Updater;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance p1, Lcom/conecta4g/vpn/util/ConfigUtil;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/conecta4g/vpn/util/ConfigUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->config:Lcom/conecta4g/vpn/util/ConfigUtil;

    .line 54
    invoke-virtual {p1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUrlSms()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "http"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->uRLConnection:Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    .line 62
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->uRLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->is:Ljava/io/InputStream;

    .line 64
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->buffer:Ljava/io/BufferedReader;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->buffer:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->buffer:Ljava/io/BufferedReader;

    if-eqz v0, :cond_2

    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 80
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 82
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 87
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->uRLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    :try_start_3
    const-string p1, "error"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->buffer:Ljava/io/BufferedReader;

    if-eqz v0, :cond_5

    .line 76
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    nop

    .line 80
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 82
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    nop

    .line 87
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->uRLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-object p1

    .line 74
    :goto_5
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->buffer:Ljava/io/BufferedReader;

    if-eqz v0, :cond_8

    .line 76
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    nop

    .line 80
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 82
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    nop

    .line 87
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->uRLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_a
    throw p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 96
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->listener:Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;

    invoke-interface {v0}, Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/SMS_Updater;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->listener:Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;

    invoke-interface {v0, p1}, Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;->onException(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/SMS_Updater;->listener:Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;

    invoke-interface {v0, p1}, Lcom/conecta4g/vpn/activities/SMS_Updater$Listener;->onCompleted(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
