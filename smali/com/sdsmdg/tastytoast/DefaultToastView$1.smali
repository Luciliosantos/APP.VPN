.class Lcom/sdsmdg/tastytoast/DefaultToastView$1;
.super Ljava/lang/Object;
.source "DefaultToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/DefaultToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdsmdg/tastytoast/DefaultToastView;


# direct methods
.method constructor <init>(Lcom/sdsmdg/tastytoast/DefaultToastView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView$1;->this$0:Lcom/sdsmdg/tastytoast/DefaultToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView$1;->this$0:Lcom/sdsmdg/tastytoast/DefaultToastView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mAnimatedValue:F

    .line 106
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView$1;->this$0:Lcom/sdsmdg/tastytoast/DefaultToastView;

    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/DefaultToastView;->postInvalidate()V

    return-void
.end method
