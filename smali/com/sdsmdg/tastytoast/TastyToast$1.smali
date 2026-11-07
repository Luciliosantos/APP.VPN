.class final Lcom/sdsmdg/tastytoast/TastyToast$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "TastyToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    const v0, 0x3f666666    # 0.9f

    sub-float/2addr v0, p1

    .line 73
    sget-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->warningToastView:Lcom/sdsmdg/tastytoast/WarningToastView;

    invoke-virtual {p1, v0}, Lcom/sdsmdg/tastytoast/WarningToastView;->setScaleX(F)V

    .line 74
    sget-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->warningToastView:Lcom/sdsmdg/tastytoast/WarningToastView;

    invoke-virtual {p1, v0}, Lcom/sdsmdg/tastytoast/WarningToastView;->setScaleY(F)V

    return-void
.end method
