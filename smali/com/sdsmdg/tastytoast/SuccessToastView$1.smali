.class Lcom/sdsmdg/tastytoast/SuccessToastView$1;
.super Ljava/lang/Object;
.source "SuccessToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/SuccessToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;


# direct methods
.method constructor <init>(Lcom/sdsmdg/tastytoast/SuccessToastView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    .line 107
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    iget p1, p1, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    float-to-double v0, p1

    const/4 p1, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$002(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    .line 109
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$102(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    .line 110
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    const/high16 v0, -0x3c4c0000    # -360.0f

    iget v1, p1, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    mul-float v1, v1, v0

    invoke-static {p1, v1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$202(Lcom/sdsmdg/tastytoast/SuccessToastView;F)F

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fe199999999999aL    # 0.55

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x1

    cmpl-double v6, v0, v2

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {v0, v4}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$202(Lcom/sdsmdg/tastytoast/SuccessToastView;F)F

    .line 113
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {v0, v5}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$002(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    .line 114
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$102(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {p1, v4}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$202(Lcom/sdsmdg/tastytoast/SuccessToastView;F)F

    .line 117
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {p1, v5}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$002(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    .line 118
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-static {p1, v5}, Lcom/sdsmdg/tastytoast/SuccessToastView;->access$102(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView$1;->this$0:Lcom/sdsmdg/tastytoast/SuccessToastView;

    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->postInvalidate()V

    return-void
.end method
