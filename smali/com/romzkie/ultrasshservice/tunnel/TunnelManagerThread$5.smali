.class Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$5;
.super Ljava/lang/Object;
.source "TunnelManagerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->conectar(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$5;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread$5;->this$0:Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;->access$200(Lcom/romzkie/ultrasshservice/tunnel/TunnelManagerThread;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Modo de depura\u00e7\u00e3o ativado"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
