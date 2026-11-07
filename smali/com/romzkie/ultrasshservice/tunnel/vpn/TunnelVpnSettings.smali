.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;
.super Ljava/lang/Object;
.source "TunnelVpnSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDnsForward:Z

.field public mDnsResolver:[Ljava/lang/String;

.field public mDnsResolver2:[Ljava/lang/String;

.field public mEnableFilterApps:Z

.field public mExcludeIps:[Ljava/lang/String;

.field public mFilterApps:[Ljava/lang/String;

.field public mFilterBypassMode:Z

.field public mSocksServer:Ljava/lang/String;

.field public mTetheringSubnet:Z

.field public mUdpDnsRelay:Z

.field public mUdpResolver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings$1;

    invoke-direct {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings$1;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 30
    iput-boolean p4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 31
    iput-object p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 35
    iput-boolean p7, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 36
    iput-boolean p8, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 37
    iput-object p9, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 39
    iput-boolean p10, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 55
    iget-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 57
    iget-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
