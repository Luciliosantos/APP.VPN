.class Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1$1;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;)V
    .locals 0

    .line 1737
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1$1;->this$2:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;

    iget-object v0, v0, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks$1;->this$1:Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity$OneSocks;->check()V

    return-void
.end method
