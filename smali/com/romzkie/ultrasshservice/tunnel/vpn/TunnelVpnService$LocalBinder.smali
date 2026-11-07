.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;
.super Landroid/os/Binder;
.source "TunnelVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;


# direct methods
.method public constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService$LocalBinder;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnService;

    return-object v0
.end method
