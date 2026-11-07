.class public Lcom/trilead/ssh2/util/TimeoutService;
.super Ljava/lang/Object;
.source "TimeoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    }
.end annotation


# static fields
.field private static final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$1;

    invoke-direct {v0}, Lcom/trilead/ssh2/util/TimeoutService$1;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const/16 v1, 0x14

    .line 37
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/util/TimeoutService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    .locals 3

    .line 58
    new-instance v0, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    invoke-direct {v0}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;-><init>()V

    .line 59
    invoke-static {v0, p2}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->access$002(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-gez p2, :cond_0

    move-wide p0, v1

    .line 64
    :cond_0
    sget-object p2, Lcom/trilead/ssh2/util/TimeoutService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static final cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-static {p0, v0}, Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;->access$102(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;Z)Z

    return-void
.end method
