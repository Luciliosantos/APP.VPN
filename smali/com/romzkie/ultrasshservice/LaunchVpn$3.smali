.class Lcom/romzkie/ultrasshservice/LaunchVpn$3;
.super Ljava/lang/Object;
.source "LaunchVpn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/LaunchVpn;->askForPW(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/LaunchVpn;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$3;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 142
    sget p1, Lcom/romzkie/ultrasshservice/R$string;->state_user_vpn_password_cancelled:I

    sget-object p2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v0, "USER_VPN_PASSWORD_CANCELLED"

    const-string v1, ""

    invoke-static {v0, v1, p1, p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    .line 144
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$3;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->finish()V

    return-void
.end method
