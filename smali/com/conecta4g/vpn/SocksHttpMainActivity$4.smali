.class Lcom/conecta4g/vpn/SocksHttpMainActivity$4;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Lcom/conecta4g/vpn/util/ConfigUpdate$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateConfig(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field final synthetic val$isOnCreate:Z


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Z)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iput-boolean p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->val$isOnCreate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateListener(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Error on getting data"

    .line 876
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 877
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$300(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$400(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_0
    iget-boolean p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->val$isOnCreate:Z

    if-nez p1, :cond_2

    .line 881
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$500(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->val$isOnCreate:Z

    if-nez v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$4;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0, p1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$600(Lcom/conecta4g/vpn/SocksHttpMainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 888
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
