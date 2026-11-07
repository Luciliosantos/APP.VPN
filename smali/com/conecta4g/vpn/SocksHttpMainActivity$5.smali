.class Lcom/conecta4g/vpn/SocksHttpMainActivity$5;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->newUpdateDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 2

    .line 918
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation()V

    .line 920
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "Config.json"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 922
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;->val$result:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 923
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 924
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 925
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$5;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 927
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
