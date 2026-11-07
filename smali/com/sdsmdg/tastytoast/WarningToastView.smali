.class public Lcom/sdsmdg/tastytoast/WarningToastView;
.super Landroid/view/View;
.source "WarningToastView.java"


# instance fields
.field private endAngle:F

.field private mHeight:F

.field private mPadding:F

.field private mPaddingBottom:F

.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F

.field private mWidth:F

.field rectFOne:Landroid/graphics/RectF;

.field rectFThree:Landroid/graphics/RectF;

.field rectFTwo:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFOne:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFTwo:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFThree:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaddingBottom:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->endAngle:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFOne:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFTwo:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFThree:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaddingBottom:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->endAngle:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFOne:Landroid/graphics/RectF;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFTwo:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFThree:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 22
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 23
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    .line 24
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    .line 25
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaddingBottom:F

    .line 26
    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->endAngle:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#f0ad4e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initRect()V
    .locals 9

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    sub-float v3, v2, v1

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaddingBottom:F

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFOne:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p0, v2}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    add-float/2addr v3, v4

    iget v5, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    const/high16 v5, 0x41100000    # 9.0f

    .line 64
    invoke-virtual {p0, v5}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v7

    add-float/2addr v4, v7

    invoke-virtual {p0, v2}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v2

    iget v7, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    add-float/2addr v2, v7

    iget v7, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v2, v7

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFTwo:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    invoke-virtual {p0, v5}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v6}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v2

    iget v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    const/high16 v4, 0x41900000    # 18.0f

    .line 66
    invoke-virtual {p0, v4}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v6}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    iget v5, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFThree:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public convertDpToPixel(F)F
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/WarningToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFOne:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x432a0000    # 170.0f

    const/high16 v5, -0x3cf00000    # -144.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float v4, v0, v2

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    iget v2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    add-float v5, v0, v2

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 75
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float v6, v0, v2

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 76
    invoke-virtual {p0, v2}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v3, v7

    sub-float v7, v0, v3

    iget-object v8, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 74
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    sub-float v6, v0, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    float-to-double v4, v0

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    float-to-double v7, v0

    const-wide/high16 v9, 0x4021000000000000L    # 8.5

    div-double/2addr v7, v9

    add-double/2addr v4, v7

    double-to-float v7, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 79
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v4

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float v8, v0, v3

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 80
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    float-to-double v9, v0

    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    div-double/2addr v9, v11

    sub-double/2addr v3, v9

    double-to-float v9, v3

    iget-object v10, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 78
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    sub-float v6, v0, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v4, v13

    add-float v7, v0, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 83
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v4

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float v8, v0, v3

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 84
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    float-to-double v9, v0

    div-double/2addr v9, v11

    sub-double/2addr v3, v9

    double-to-float v9, v3

    iget-object v10, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v4

    sub-float v6, v0, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    iget v4, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    div-float/2addr v4, v13

    add-float v7, v0, v4

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    .line 87
    invoke-virtual {p0, v1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v3}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v1

    sub-float v8, v0, v1

    iget v0, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 88
    invoke-virtual {p0, v2}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    float-to-double v2, v2

    div-double/2addr v2, v11

    sub-double/2addr v0, v2

    double-to-float v9, v0

    iget-object v10, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFTwo:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x432a0000    # 170.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 91
    iget-object v7, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->rectFThree:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x432f0000    # 175.0f

    const/high16 v9, -0x3cea0000    # -150.0f

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 44
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/WarningToastView;->initPaint()V

    .line 45
    invoke-direct {p0}, Lcom/sdsmdg/tastytoast/WarningToastView;->initRect()V

    .line 46
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/WarningToastView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mHeight:F

    .line 47
    invoke-virtual {p0}, Lcom/sdsmdg/tastytoast/WarningToastView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mWidth:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result p2

    iput p2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPadding:F

    mul-float p2, p2, p1

    .line 49
    iput p2, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mPaddingBottom:F

    .line 50
    invoke-virtual {p0, p1}, Lcom/sdsmdg/tastytoast/WarningToastView;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/sdsmdg/tastytoast/WarningToastView;->mStrokeWidth:F

    return-void
.end method
