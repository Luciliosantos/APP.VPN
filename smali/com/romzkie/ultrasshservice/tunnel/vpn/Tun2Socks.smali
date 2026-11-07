.class public Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;
.super Ljava/lang/Thread;
.source "Tun2Socks.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tun2Socks"

.field private static final TUN2SOCKS_BIN:Ljava/lang/String; = "libtun2socks.so"


# instance fields
.field private fileTun2Socks:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mDnsResolverAddress:Ljava/lang/String;

.field private mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

.field private mSocksServerAddress:Ljava/lang/String;

.field private mUdpgwServerAddress:Ljava/lang/String;

.field private mUdpgwTransparentDNS:Z

.field private mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVpnInterfaceMTU:I

.field private mVpnIpAddress:Ljava/lang/String;

.field private mVpnNetMask:Ljava/lang/String;

.field private tun2SocksProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 57
    iput p3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceMTU:I

    .line 58
    iput-object p4, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnIpAddress:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnNetMask:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mSocksServerAddress:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    .line 63
    iput-boolean p9, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mUdpgwTransparentDNS:Z

    return-void
.end method

.method private sendFd(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Enviando Fd para sock"

    .line 189
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    const/16 v0, 0xa

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 193
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 194
    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/io/FileDescriptor;

    .line 196
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v1

    .line 195
    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 198
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 199
    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 200
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-wide/16 v1, 0x1f4

    .line 203
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized interrupt()V
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 155
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 160
    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/VpnUtils;->killProcess(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 163
    :try_start_2
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 164
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLine(Ljava/lang/String;)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tun2Socks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;->onStart()V

    .line 75
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 76
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6

    .line 88
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "sock_path"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "libtun2socks.so"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --netif-ipaddr "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --netif-netmask "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnNetMask:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --socks-server-addr "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mSocksServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --tunmtu "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceMTU:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --tunfd "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --sock "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --loglevel "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 108
    iget-boolean v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mUdpgwTransparentDNS:Z

    if-eqz v0, :cond_2

    const-string v0, " --udpgw-transparent-dns"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --udpgw-remote-server-addr "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " --dnsgw "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 121
    new-instance v0, Lcom/romzkie/ultrasshservice/util/StreamGobbler;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;)V

    .line 122
    new-instance v1, Lcom/romzkie/ultrasshservice/util/StreamGobbler;

    iget-object v3, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;)V

    .line 124
    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->start()V

    .line 125
    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/util/StreamGobbler;->start()V

    .line 128
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0, v2}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->sendFd(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    goto :goto_0

    .line 129
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Falha ao enviar Fd para sock, talvez isso n\u00e3o seja suportado em seu aparelho. Entre em contato com o desenvolvedor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falha ao criar arquivo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tun2Socks Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Tun2Socks Error"

    .line 136
    invoke-static {v1, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 142
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    if-eqz v0, :cond_7

    .line 143
    invoke-interface {v0}, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;->onStop()V

    :cond_7
    return-void
.end method

.method public setOnTun2SocksListener(Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks;->mListener:Lcom/romzkie/ultrasshservice/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    return-void
.end method
