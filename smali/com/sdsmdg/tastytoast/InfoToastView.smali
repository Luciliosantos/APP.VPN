.class public Lcom/sdsmdg/tastytoast/InfoToastView;
.super Landroid/view/View;
.source "InfoToastView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private endPoint:F

.field private isEyeLeft:Z

.field private isEyeMiddle:Z

.field private isEyeRight:Z

.field mAnimatedValue:F

.field private mEyeWidth:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field rectF:Landroid/graphics/RectF;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    const-string v0, "com.sdsmdg.tastytoast"

    .line 21
    iput-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->TAG:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    const-string p2, "com.sdsmdg.tastytoast"

    .line 21
    iput-object p2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->TAG:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    const-string p2, "com.sdsmdg.tastytoast"

    .line 21
    iput-object p2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->TAG:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sdsmdg/tastytoast/InfoToastView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    return p1
.end method

.method static synthetic access$100(Lcom/sdsmdg/tastytoast/InfoToastView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    return p0
.end method

.method static synthetic access$200(Lcom/sdsmdg/tastytoast/InfoToastView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    return p0
.end method

.method static synthetic access$302(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sdsmdg/tastytoast/InfoToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    return p1
.end method

.method private initPaint()V
    .locals 2

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#337ab7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/InfoToastView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initRect()V
    .locals 4

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    sub-float v3, v2, v1

    sub-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->rectF:Landroid/graphics/RectF;

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

    .line 112
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sdsmdg/tastytoast/InfoToastView$1;

    invoke-direct {p2, p0}, Lcom/sdsmdg/tastytoast/InfoToastView$1;-><init>(Lcom/sdsmdg/tastytoast/InfoToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v3, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    sub-float v4, v0, v2

    iget v5, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    mul-float v2, v3, v1

    div-float/2addr v2, v8

    sub-float v6, v0, v2

    iget-object v7, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    add-float/2addr v0, v2

    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    mul-float v4, v3, v8

    sub-float/2addr v2, v4

    div-float/2addr v0, v1

    iget-object v4, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    mul-float v3, v2, v1

    div-float/2addr v3, v8

    add-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    sub-float v2, v0, v2

    const/high16 v3, 0x40a00000    # 5.0f

    iget v4, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    mul-float v3, v3, v4

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    div-float/2addr v0, v1

    iget-object v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    if-eqz v0, :cond_2

    .line 84
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    mul-float v8, v8, v2

    add-float/2addr v0, v8

    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 47
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->initPaint()V

    .line 48
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->initRect()V

    .line 49
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 50
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 51
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mEyeWidth:F

    .line 52
    iget p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iput p1, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->stopAnim()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x7d0

    .line 96
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/InfoToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/InfoToastView;->clearAnimation()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeLeft:Z

    .line 103
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeMiddle:Z

    .line 104
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->isEyeRight:Z

    .line 105
    iget v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mPadding:F

    iput v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->endPoint:F

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->mAnimatedValue:F

    .line 107
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/InfoToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method
