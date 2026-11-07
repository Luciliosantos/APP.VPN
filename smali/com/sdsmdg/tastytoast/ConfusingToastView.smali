.class public Lcom/sdsmdg/tastytoast/ConfusingToastView;
.super Landroid/view/View;
.source "ConfusingToastView.java"


# instance fields
.field angle:F

.field eye:Landroid/graphics/Bitmap;

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#FE9D4D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initPath()V
    .locals 11

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 58
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v5

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    div-float/2addr v5, v3

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    div-float/2addr v6, v3

    .line 59
    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    div-float/2addr v7, v3

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v3

    add-float/2addr v7, v3

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    .line 60
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 61
    iget v3, v1, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {p0, v5}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v6

    sub-float/2addr v3, v6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v1, v3, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 63
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v5}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v9

    add-float/2addr v8, v9

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 65
    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v5}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v5

    sub-float/2addr v6, v5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v7

    sub-float/2addr v5, v7

    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v4

    add-float/2addr v8, v4

    invoke-virtual {v1, v6, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 68
    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    .line 69
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    const v3, 0x3fd9999a    # 1.7f

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private startViewAnim(FFJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 111
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 112
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 115
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 116
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sdsmdg/tastytoast/ConfusingToastView$1;

    invoke-direct {p2, p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView$1;-><init>(Lcom/sdsmdg/tastytoast/ConfusingToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public dip2px(F)F
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    iget v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v3, v5

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 80
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    mul-float v3, v3, v4

    div-float/2addr v3, v5

    iget-object v6, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->angle:F

    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    iget v6, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    mul-float v6, v6, v4

    div-float/2addr v6, v5

    invoke-virtual {p1, v0, v1, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 84
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v1, v6

    iget v6, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    mul-float v6, v6, v4

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->eye:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v6, v5

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->dip2px(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    div-float v5, v0, v2

    iget v1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    mul-float v4, v1, v3

    div-float v6, v4, v2

    mul-float v0, v0, v3

    div-float v7, v0, v2

    mul-float v1, v1, v3

    div-float v8, v1, v2

    iget-object v9, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 43
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mWidth:F

    .line 44
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->mHeight:F

    .line 45
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->initPaint()V

    .line 46
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->initPath()V

    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->stopAnim()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x7d0

    .line 98
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->clearAnimation()V

    .line 105
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ConfusingToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 106
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->postInvalidate()V

    :cond_0
    return-void
.end method
