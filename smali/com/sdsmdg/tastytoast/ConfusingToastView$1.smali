.class Lcom/sdsmdg/tastytoast/ConfusingToastView$1;
.super Ljava/lang/Object;
.source "ConfusingToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/ConfusingToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdsmdg/tastytoast/ConfusingToastView;


# direct methods
.method constructor <init>(Lcom/sdsmdg/tastytoast/ConfusingToastView;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ConfusingToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ConfusingToastView;

    iget v0, p1, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    iput v0, p1, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    .line 121
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView$1;->this$0:Lcom/sdsmdg/tastytoast/ConfusingToastView;

    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->postInvalidate()V

    return-void
.end method
