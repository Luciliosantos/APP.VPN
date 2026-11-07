.class Lcom/conecta4g/vpn/SocksHttpMainActivity$15;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->alertdiasexpirado()V
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

    .line 1574
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$15;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 0

    .line 1577
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation()V

    return-void
.end method
