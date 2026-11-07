.class Lcom/romzkie/ultrasshservice/SocksHttpService$4;
.super Ljava/lang/Object;
.source "SocksHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService;->endTunnelService()V
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

    .line 244
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$4;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$4;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/SocksHttpService;->stopForeground(Z)V

    .line 249
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$4;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->stopSelf()V

    .line 250
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$4;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V

    return-void
.end method
