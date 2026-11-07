.class Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerEntry"
.end annotation


# instance fields
.field high:I

.field low:I

.field mh:Lcom/trilead/ssh2/transport/MessageHandler;

.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
