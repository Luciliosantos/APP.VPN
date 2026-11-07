.class public Lcom/sdsmdg/tastytoast/ErrorToastView;
.super Landroid/view/View;
.source "ErrorToastView.java"


# instance fields
.field private endAngle:F

.field private isJustVisible:Z

.field private isSad:Z

.field leftEyeRectF:Landroid/graphics/RectF;

.field mAnimatedValue:F

.field private mEyeWidth:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field rectF:Landroid/graphics/RectF;

.field rightEyeRectF:Landroid/graphics/RectF;

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rectF:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->leftEyeRectF:Landroid/graphics/RectF;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rightEyeRectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    .line 27
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rectF:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->leftEyeRectF:Landroid/graphics/RectF;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rightEyeRectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    .line 27
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rectF:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->leftEyeRectF:Landroid/graphics/RectF;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rightEyeRectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    .line 27
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    .line 29
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sdsmdg/tastytoast/ErrorToastView;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sdsmdg/tastytoast/ErrorToastView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    return p1
.end method

.method private initPaint()V
    .locals 2

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#d9534f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initRect()V
    .locals 8

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    div-float v5, v4, v2

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v4, v4, v6

    div-float/2addr v4, v2

    invoke-direct {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rectF:Landroid/graphics/RectF;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    iget v3, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    add-float v4, v1, v3

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    div-float v7, v5, v6

    sub-float/2addr v7, v3

    add-float/2addr v1, v3

    add-float/2addr v1, v3

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-direct {v0, v4, v7, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->leftEyeRectF:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    iget v3, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    sub-float v4, v1, v3

    iget v5, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v7, v7, v5

    div-float/2addr v7, v2

    sub-float/2addr v4, v7

    div-float v7, v1, v6

    sub-float/2addr v7, v5

    sub-float v3, v1, v3

    div-float v2, v5, v2

    sub-float/2addr v3, v2

    div-float/2addr v1, v6

    add-float/2addr v1, v5

    invoke-direct {v0, v4, v7, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rightEyeRectF:Landroid/graphics/RectF;

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

    .line 109
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 110
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 111
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sdsmdg/tastytoast/ErrorToastView$1;

    invoke-direct {p2, p0}, Lcom/sdsmdg/tastytoast/ErrorToastView$1;-><init>(Lcom/sdsmdg/tastytoast/ErrorToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->getContext()Landroid/content/Context;

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
    .locals 13

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v3, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    iget-object v7, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x43520000    # 210.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    iget v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    add-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    iget v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    iget v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    sub-float v1, v0, v1

    iget v3, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    sub-float/2addr v1, v3

    div-float v2, v3, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v4

    iget-object v2, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->leftEyeRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43200000    # 160.0f

    const/high16 v4, -0x3ca40000    # -220.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    iget-object v8, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->rightEyeRectF:Landroid/graphics/RectF;

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x435c0000    # 220.0f

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 47
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->initPaint()V

    .line 48
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->initRect()V

    .line 49
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mWidth:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 50
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mPadding:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 51
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mEyeWidth:F

    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->stopAnim()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x7d0

    .line 94
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/ErrorToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public stopAnim()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/ErrorToastView;->clearAnimation()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isSad:Z

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->endAngle:F

    .line 102
    iput-boolean v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->isJustVisible:Z

    .line 103
    iput v1, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->mAnimatedValue:F

    .line 104
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/ErrorToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method
