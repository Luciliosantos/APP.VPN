.class Lcom/sdsmdg/tastytoast/InfoToastView$1;
.super Ljava/lang/Object;
.source "InfoToastView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdsmdg/tastytoast/InfoToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdsmdg/tastytoast/InfoToastView;


# direct methods
.method constructor <init>(Lcom/sdsmdg/tastytoast/InfoToastView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    .line 122
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget p1, p1, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, p1

    const/high16 p1, 0x40800000    # 4.0f

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$100(Lcom/sdsmdg/tastytoast/InfoToastView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iget-object v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v3}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$200(Lcom/sdsmdg/tastytoast/InfoToastView;)F

    move-result v3

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget p1, p1, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    div-float/2addr p1, v2

    mul-float v1, v1, p1

    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$200(Lcom/sdsmdg/tastytoast/InfoToastView;)F

    move-result p1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$002(Lcom/sdsmdg/tastytoast/InfoToastView;F)F

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$100(Lcom/sdsmdg/tastytoast/InfoToastView;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v3}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$200(Lcom/sdsmdg/tastytoast/InfoToastView;)F

    move-result v3

    mul-float v3, v3, v2

    div-float/2addr v3, p1

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$002(Lcom/sdsmdg/tastytoast/InfoToastView;F)F

    .line 128
    :goto_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget p1, p1, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, p1

    const-wide v2, 0x3fc47ae147ae147bL    # 0.16

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmpg-double v5, v0, v2

    if-gez v5, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 130
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {p1, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto/16 :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    cmpg-double v5, v0, v2

    if-gez v5, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 133
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto/16 :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fdeb851eb851eb8L    # 0.48

    cmpg-double v5, v0, v2

    if-gez v5, :cond_3

    .line 135
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 136
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {p1, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fe47ae147ae147bL    # 0.64

    cmpg-double v5, v0, v2

    if-gez v5, :cond_4

    .line 138
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 139
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto :goto_1

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v5, v0, v2

    if-gez v5, :cond_5

    .line 141
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 142
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {p1, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto :goto_1

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    iget v0, v0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    cmpg-double v5, v0, v2

    if-gez v5, :cond_6

    .line 144
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 145
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    goto :goto_1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 148
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {v0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$502(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 149
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-static {p1, v4}, Lcom/sdsmdg/tastytoast/InfoToastView;->access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z

    .line 152
    :goto_1
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView$1;->this$0:Lcom/sdsmdg/tastytoast/InfoToastView;

    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->postInvalidate()V

    return-void
.end method
