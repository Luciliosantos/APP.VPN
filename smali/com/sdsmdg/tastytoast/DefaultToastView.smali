.class public Lcom/sdsmdg/tastytoast/DefaultToastView;
.super Landroid/view/View;
.source "DefaultToastView.java"


# instance fields
.field mAnimatedValue:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSpikeLength:F

.field private mSpikePaint:Landroid/graphics/Paint;

.field private mWidth:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mAnimatedValue:F

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mAnimatedValue:F

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPadding:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mAnimatedValue:F

    .line 20
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPadding:F

    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#222222"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/DefaultToastView;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikePaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/DefaultToastView;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/DefaultToastView;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikeLength:F

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

    .line 96
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 100
    iget-object p2, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 101
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sdsmdg/tastytoast/DefaultToastView$1;

    invoke-direct {p2, p0}, Lcom/sdsmdg/tastytoast/DefaultToastView$1;-><init>(Lcom/sdsmdg/tastytoast/DefaultToastView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    iget v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float v3, v0, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v0, v4

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x168

    if-ge v0, v2, :cond_0

    .line 69
    iget v2, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mAnimatedValue:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 70
    iget v3, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    div-float/2addr v3, v4

    float-to-double v5, v3

    int-to-double v2, v2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-float v5, v5

    .line 71
    iget v6, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    double-to-float v6, v6

    .line 72
    iget v7, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    div-float/2addr v7, v4

    iget v8, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikeLength:F

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-float v7, v7

    .line 73
    iget v8, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    div-float/2addr v8, v4

    iget v9, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikeLength:F

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    double-to-float v2, v8

    .line 74
    iget v3, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    div-float v8, v3, v1

    sub-float v5, v8, v5

    div-float v8, v3, v1

    sub-float/2addr v8, v6

    div-float v6, v3, v1

    sub-float v9, v6, v7

    div-float/2addr v3, v1

    sub-float v10, v3, v2

    iget-object v11, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mSpikePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x28

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 40
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->initPaint()V

    .line 41
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 42
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/DefaultToastView;->dip2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->mPadding:F

    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->stopAnim()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x7d0

    .line 83
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/DefaultToastView;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->clearAnimation()V

    .line 90
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/DefaultToastView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 91
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/DefaultToastView;->postInvalidate()V

    :cond_0
    return-void
.end method
