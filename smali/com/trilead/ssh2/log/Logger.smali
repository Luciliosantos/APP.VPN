.class public Lcom/trilead/ssh2/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static enabled:Z

.field public static logger:Lcom/trilead/ssh2/DebugLogger;


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/log/Logger;->className:Ljava/lang/String;

    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .line 31
    new-instance v0, Lcom/trilead/ssh2/log/Logger;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/log/Logger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/trilead/ssh2/log/Logger;->enabled:Z

    return v0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 2

    .line 51
    sget-boolean v0, Lcom/trilead/ssh2/log/Logger;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;

    if-nez v0, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/log/Logger;->className:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Lcom/trilead/ssh2/DebugLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    return-void
.end method
