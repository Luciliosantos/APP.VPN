.class Lcom/sdsmdg/tastytoast/ErrorToastView$1;
.super Ljava/lang/Object;
.source "ErrorToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/ErrorToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;


# direct methods
.method constructor <init>(Lcom/sdsmdg/tastytoast/ErrorToastView;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    .line 117
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    iget p1, p1, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    float-to-double v0, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, v2}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$002(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    .line 119
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, v2}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$102(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    .line 120
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    const/high16 v1, 0x43700000    # 240.0f

    iget v2, v0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    mul-float v2, v2, v1

    invoke-static {v0, v2}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$202(Lcom/sdsmdg/tastytoast/ErrorToastView;F)F

    .line 121
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$102(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v3, 0x3fe199999999999aL    # 0.55

    const/high16 v5, 0x42f00000    # 120.0f

    cmpl-double v6, v0, v3

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpg-double v6, v0, v3

    if-gez v6, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, v5}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$202(Lcom/sdsmdg/tastytoast/ErrorToastView;F)F

    .line 124
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, v2}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$002(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    .line 125
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$102(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, v5}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$202(Lcom/sdsmdg/tastytoast/ErrorToastView;F)F

    .line 128
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$002(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    .line 129
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-static {p1, v2}, Lcom/sdsmdg/tastytoast/ErrorToastView;->access$102(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ErrorToastView;

    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->postInvalidate()V

    return-void
.end method
