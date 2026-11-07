.class final Lcom/sdsmdg/tastytoast/TastyToast$2;
.super Ljava/lang/Object;
.source "TastyToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$spring:Lcom/facebook/rebound/Spring;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/Spring;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/TastyToast$2;->val$spring:Lcom/facebook/rebound/Spring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 81
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/TastyToast$2;->val$spring:Lcom/facebook/rebound/Spring;

    const-wide v1, 0x3fd99999a0000000L    # 0.4000000059604645

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    return-void
.end method
