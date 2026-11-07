.class Lcom/conecta4g/vpn/SocksHttpMainActivity$13;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->showExitDialog()V
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

    .line 1522
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$13;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1526
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$13;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/util/Utils;->exitAll(Landroid/app/Activity;)V

    return-void
.end method
