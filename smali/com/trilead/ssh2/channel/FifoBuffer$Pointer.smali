.class Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;
.super Ljava/lang/Object;
.source "FifoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/FifoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pointer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field off:I

.field p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/FifoBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/trilead/ssh2/channel/FifoBuffer;

    return-void
.end method

.method constructor <init>(Lcom/trilead/ssh2/channel/FifoBuffer;Lcom/trilead/ssh2/channel/FifoBuffer$Page;I)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    .line 45
    iput p3, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    return-void
.end method

.method private chunk()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-static {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->access$000(Lcom/trilead/ssh2/channel/FifoBuffer;)I

    move-result v0

    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-static {v1}, Lcom/trilead/ssh2/channel/FifoBuffer;->access$100(Lcom/trilead/ssh2/channel/FifoBuffer;)Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-result-object v1

    iput-object v1, v0, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->next:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    move-object v0, v1

    .line 60
    :cond_1
    iput-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    .line 62
    iget-object v0, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->this$0:Lcom/trilead/ssh2/channel/FifoBuffer;

    invoke-static {v0}, Lcom/trilead/ssh2/channel/FifoBuffer;->access$000(Lcom/trilead/ssh2/channel/FifoBuffer;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public read([BII)V
    .locals 3

    :goto_0
    if-lez p3, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->chunk()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3

    :goto_0
    if-lez p3, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->chunk()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->p:Lcom/trilead/ssh2/channel/FifoBuffer$Page;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/FifoBuffer$Page;->buf:[B

    iget v2, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/trilead/ssh2/channel/FifoBuffer$Pointer;->off:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
