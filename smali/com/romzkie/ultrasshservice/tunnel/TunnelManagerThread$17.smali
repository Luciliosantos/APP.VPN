.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->rec(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

.field final synthetic val$i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Ljava/lang/String;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    iput-object p2, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->val$i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->val$i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<strong><font color=\"red\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/romzkie/ultrasshservice/R$string;->log_conection_lost:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</strong>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logError(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$1102(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;Z)Z

    .line 1038
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$17;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->reconnectSSH()V

    return-void
.end method
