.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;
.super Ljava/lang/Object;
.source "VpnUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAddress"
.end annotation


# instance fields
.field public final mIpAddress:Ljava/lang/String;

.field public final mPrefixLength:I

.field public final mRouter:Ljava/lang/String;

.field public final mSubnet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mSubnet:Ljava/lang/String;

    .line 263
    iput p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mPrefixLength:I

    .line 264
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils$PrivateAddress;->mRouter:Ljava/lang/String;

    return-void
.end method
