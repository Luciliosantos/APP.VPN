.class Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$1;
.super Ljava/lang/Object;
.source "Pdnsd.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/util/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd$1;->this$0:Lcom/romzkie/ultrasshservice/tunnel/vpn/Pdnsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pdnsd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logDebug(Ljava/lang/String;)V

    return-void
.end method
