.class public Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
.super Ljava/lang/Object;
.source "TimeoutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/util/TimeoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeoutToken"
.end annotation


# instance fields
.field private cancelled:Z

.field private handler:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->cancelled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->cancelled:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->cancelled:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->handler:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
