.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;
.super Ljava/lang/Object;
.source "NetworkSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;
    }
.end annotation


# instance fields
.field mIpAddresses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    return-void
.end method

.method static assertTrue(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public addIP(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-direct {v1, p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIPSplit(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V
    .locals 3

    .line 230
    new-instance v0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-direct {v0, p1, p2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/CIDRIP;Z)V

    .line 231
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    move-result-object p1

    .line 232
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 233
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addIPv6(Ljava/net/Inet6Address;IZ)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    new-instance v1, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    invoke-direct {v1, p1, p2, p3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Ljava/net/Inet6Address;IZ)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method

.method generateIPList()Ljava/util/TreeSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/SortedSet;)V

    .line 244
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 246
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_9

    .line 252
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    if-eqz v3, :cond_8

    .line 255
    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto/16 :goto_2

    .line 262
    :cond_1
    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getFirstAddress()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    iget v4, v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    iget v7, v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    if-lt v4, v7, :cond_5

    .line 263
    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v4

    invoke-static {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v7

    if-ne v4, v7, :cond_2

    goto :goto_3

    .line 269
    :cond_2
    invoke-virtual {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    move-result-object v3

    .line 275
    aget-object v4, v3, v6

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 276
    aget-object v4, v3, v6

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_3
    aget-object v4, v3, v5

    invoke-virtual {v4}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->getLastAddress()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 283
    :cond_4
    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_5
    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v4

    invoke-static {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v7

    if-ne v4, v7, :cond_6

    goto :goto_0

    .line 302
    :cond_6
    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->split()[Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    move-result-object v2

    .line 305
    aget-object v4, v2, v6

    iget v4, v4, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    iget v7, v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    if-ne v4, v7, :cond_7

    .line 311
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_7
    aget-object v4, v2, v6

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_1
    aget-object v2, v2, v5

    goto/16 :goto_0

    .line 257
    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public getNetworks(Z)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    .line 213
    invoke-static {v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPositiveIPList()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->generateIPList()Ljava/util/TreeSet;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 332
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    .line 333
    invoke-static {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_7

    .line 340
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace;->mIpAddresses:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    .line 341
    invoke-static {v3}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 351
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;

    .line 352
    invoke-static {v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->access$000(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v6}, Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;->containsNet(Lcom/romzkie/ultrasshservice/tunnel/vpn/NetworkSpace$IpAddress;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_1

    .line 361
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v1
.end method
