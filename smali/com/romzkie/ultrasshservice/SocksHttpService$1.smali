.class Lcom/romzkie/ultrasshservice/SocksHttpService$1;
.super Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;
.source "SocksHttpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/SocksHttpService;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$1;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {p0}, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stopVPN()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$1;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->stopTunnel()V

    return-void
.end method
