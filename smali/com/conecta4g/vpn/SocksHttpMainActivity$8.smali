.class Lcom/conecta4g/vpn/SocksHttpMainActivity$8;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
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

    .line 1244
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$8;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$8;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1300(Lcom/conecta4g/vpn/SocksHttpMainActivity;Z)V

    .line 1247
    new-instance v0, Lcom/conecta4g/vpn/activities/SMSuPdater;

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$8;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {v0, v1}, Lcom/conecta4g/vpn/activities/SMSuPdater;-><init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    return-void
.end method
