.class Lcom/conecta4g/vpn/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/LauncherActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/conecta4g/vpn/LauncherActivity$1;->this$0:Lcom/conecta4g/vpn/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conecta4g/vpn/LauncherActivity$1;->this$0:Lcom/conecta4g/vpn/LauncherActivity;

    invoke-virtual {v1}, Lcom/conecta4g/vpn/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/conecta4g/vpn/LauncherActivity$1;->this$0:Lcom/conecta4g/vpn/LauncherActivity;

    invoke-virtual {v1, v0}, Lcom/conecta4g/vpn/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lcom/conecta4g/vpn/LauncherActivity$1;->this$0:Lcom/conecta4g/vpn/LauncherActivity;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/LauncherActivity;->finish()V

    return-void
.end method
