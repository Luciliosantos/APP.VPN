.class Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings$1;
.super Ljava/lang/Object;
.source "TunnelVpnSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;
    .locals 1

    .line 77
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    invoke-direct {v0, p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;
    .locals 0

    .line 81
    new-array p1, p1, [Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings$1;->newArray(I)[Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;

    move-result-object p1

    return-object p1
.end method
