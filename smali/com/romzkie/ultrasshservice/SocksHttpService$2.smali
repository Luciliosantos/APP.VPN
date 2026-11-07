.class Lcom/romzkie/ultrasshservice/SocksHttpService$2;
.super Ljava/lang/Object;
.source "SocksHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/SocksHttpService;->onStartCommand(Landroid/content/Intent;II)I
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

    .line 94
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$2;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/SocksHttpService$2;->this$0:Lcom/romzkie/ultrasshservice/SocksHttpService;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/SocksHttpService;->startTunnel()V

    return-void
.end method
