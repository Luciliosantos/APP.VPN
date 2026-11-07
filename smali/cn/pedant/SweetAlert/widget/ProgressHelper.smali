.class public Lcn/pedant/SweetAlert/widget/ProgressHelper;
.super Ljava/lang/Object;
.source "ProgressHelper.java"


# instance fields
.field private mBarColor:I

.field private mBarWidth:I

.field private mCircleRadius:I

.field private mIsInstantProgress:Z

.field private mProgressVal:F

.field private mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

.field private mRimColor:I

.field private mRimWidth:I

.field private mSpinSpeed:F

.field private mToSpin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    const/high16 v1, 0x3f400000    # 0.75f

    .line 22
    iput v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mSpinSpeed:F

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarWidth:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarColor:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimWidth:I

    .line 26
    iput v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimColor:I

    .line 27
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mIsInstantProgress:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    iput v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mCircleRadius:I

    return-void
.end method

.method private updatePropsIfNeed()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz v0, :cond_9

    .line 43
    iget-boolean v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->stopSpinning()V

    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isSpinning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->spin()V

    .line 48
    :cond_1
    :goto_0
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mSpinSpeed:F

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getSpinSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mSpinSpeed:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setSpinSpeed(F)V

    .line 51
    :cond_2
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarWidth:I

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getBarWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 52
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarWidth:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarWidth(I)V

    .line 54
    :cond_3
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarColor:I

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getBarColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 55
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarColor:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarColor(I)V

    .line 57
    :cond_4
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimWidth:I

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getRimWidth()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 58
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimWidth:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimWidth(I)V

    .line 60
    :cond_5
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimColor:I

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getRimColor()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 61
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimColor:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setRimColor(I)V

    .line 63
    :cond_6
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getProgress()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 64
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mIsInstantProgress:Z

    if-eqz v0, :cond_7

    .line 65
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setInstantProgress(F)V

    goto :goto_1

    .line 67
    :cond_7
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setProgress(F)V

    .line 70
    :cond_8
    :goto_1
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mCircleRadius:I

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getCircleRadius()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 71
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    iget v1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mCircleRadius:I

    invoke-virtual {v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setCircleRadius(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .line 134
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 125
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 113
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mCircleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 97
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    return v0
.end method

.method public getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    return-object v0
.end method

.method public getRimColor()I
    .locals 1

    .line 152
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 143
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 1

    .line 161
    iget v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mSpinSpeed:F

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    return v0
.end method

.method public resetCount()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->resetCount()V

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarColor:I

    .line 139
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mBarWidth:I

    .line 130
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mCircleRadius:I

    .line 121
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setInstantProgress(F)V
    .locals 0

    .line 107
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mIsInstantProgress:Z

    .line 109
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mIsInstantProgress:Z

    .line 102
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressVal:F

    .line 103
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setProgressWheel(Lcom/pnikosis/materialishprogress/ProgressWheel;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mProgressWheel:Lcom/pnikosis/materialishprogress/ProgressWheel;

    .line 38
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimColor:I

    .line 157
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mRimWidth:I

    .line 148
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 0

    .line 165
    iput p1, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mSpinSpeed:F

    .line 166
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public spin()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    .line 88
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method

.method public stopSpinning()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcn/pedant/SweetAlert/widget/ProgressHelper;->mToSpin:Z

    .line 93
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->updatePropsIfNeed()V

    return-void
.end method
