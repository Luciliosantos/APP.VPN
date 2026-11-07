.class public Lcom/sdsmdg/tastytoast/SuccessToastView;
.super Landroid/view/View;
.source "SuccessToastView.java"


# instance fields
.field private endAngle:F

.field private isSmileLeft:Z

.field private isSmileRight:Z

.field mAnimatedValue:F

.field private mEyeWidth:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field rectF:Landroid/graphics/RectF;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->endAngle:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->endAngle:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->endAngle:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    .line 27
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sdsmdg/tastytoast/SuccessToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sdsmdg/tastytoast/SuccessToastView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->endAngle:F

    return p1
.end method

.method private initPaint()V
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#5cb85c"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initRect()V
    .locals 4

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    sub-float v3, v2, v1

    sub-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->rectF:Landroid/graphics/RectF;

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

    .line 99
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 100
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sdsmdg/tastytoast/SuccessToastView$1;

    invoke-direct {p2, p0}, Lcom/sdsmdg/tastytoast/SuccessToastView$1;-><init>(Lcom/sdsmdg/tastytoast/SuccessToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->getContext()Landroid/content/Context;

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
    .locals 8

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v3, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->endAngle:F

    iget-object v7, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    iget v3, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    add-float/2addr v0, v3

    div-float v4, v3, v2

    add-float/2addr v0, v4

    iget v4, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    div-float/2addr v4, v1

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    if-eqz v0, :cond_1

    .line 74
    iget v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    iget v3, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    sub-float/2addr v3, v4

    div-float v2, v4, v2

    sub-float/2addr v3, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 44
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->initPaint()V

    .line 45
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->initRect()V

    .line 46
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 47
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 48
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mEyeWidth:F

    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->stopAnim()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x7d0

    .line 85
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/SuccessToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/SuccessToastView;->clearAnimation()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileLeft:Z

    .line 92
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->isSmileRight:Z

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->mAnimatedValue:F

    .line 94
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/SuccessToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method
