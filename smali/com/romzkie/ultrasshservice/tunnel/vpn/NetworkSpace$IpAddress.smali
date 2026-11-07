.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;
.super Ljava/lang/Object;
.source "NetworkSpace.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private firstAddress:Ljava/math/BigInteger;

.field private included:Z

.field private isV4:Z

.field private lastAddress:Ljava/math/BigInteger;

.field private netAddress:Ljava/math/BigInteger;

.field public networkMask:I


# direct methods
.method public constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 75
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;->getInt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 76
    iget p1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;->len:I

    iput p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;IZZ)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 138
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 139
    iput-boolean p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 140
    iput-boolean p4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;IZ)V
    .locals 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 82
    iput-boolean p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    .line 86
    sget-object p2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 87
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    array-length p2, p1

    const/16 p3, 0x80

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x8

    .line 89
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    return p0
.end method

.method private getMaskedAddress(Z)Ljava/math/BigInteger;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    .line 111
    iget-boolean v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    if-eqz v1, :cond_0

    .line 112
    iget v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    rsub-int/lit8 v1, v1, 0x20

    goto :goto_0

    .line 114
    :cond_0
    iget v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    rsub-int v1, v1, 0x80

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    .line 121
    :cond_1
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    iget p1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    if-le v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->compareTo(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)I

    move-result p1

    return p1
.end method

.method public containsNet(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z
    .locals 4

    .line 194
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object p1

    .line 199
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    check-cast p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    .line 70
    iget v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    iget v1, p1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFirstAddress()Ljava/math/BigInteger;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->firstAddress:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 8

    .line 158
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 159
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x18

    shr-long v4, v0, v4

    const-wide/16 v6, 0x100

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x10

    shr-long v4, v0, v4

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0x8

    shr-long v4, v0, v4

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    rem-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const-string v0, "%d.%d.%d.%d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPv6Address()Ljava/lang/String;
    .locals 10

    .line 164
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->netAddress:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 169
    :goto_0
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v2, :cond_4

    const-wide/32 v5, 0x10000

    .line 171
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    if-nez v3, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    :cond_0
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    const-string v3, ":"

    :cond_1
    const/4 v7, 0x2

    if-eqz v4, :cond_2

    .line 177
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    aput-object v3, v7, v2

    const-string v3, "%x"

    invoke-static {v4, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 179
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    aput-object v3, v7, v2

    const-string v3, "%x:%s"

    invoke-static {v4, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    const/16 v4, 0x10

    .line 182
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const-string v0, "::"

    return-object v0

    :cond_5
    return-object v3
.end method

.method public getLastAddress()Ljava/math/BigInteger;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getMaskedAddress(Z)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->lastAddress:Ljava/math/BigInteger;

    return-object v0
.end method

.method public split()[Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;
    .locals 7

    .line 145
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-boolean v4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    iget-boolean v5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    .line 146
    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    add-int/2addr v4, v3

    iget-boolean v5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->included:Z

    iget-boolean v6, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/math/BigInteger;IZZ)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 130
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->isV4:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "%s/%d"

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getIPv6Address()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
