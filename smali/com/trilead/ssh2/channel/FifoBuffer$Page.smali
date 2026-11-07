.class final Lcom/trilead/ssh2/channel/FifoBuffer$Page;
.super Ljava/lang/Object;
.source "FifoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/FifoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Page"
.end annotation


# instance fields
.field final buf:[B

.field next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    return-void
.end method
