.class public Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
.super Landroid/app/Dialog;
.source "SweetAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;
    }
.end annotation


# static fields
.field public static final CUSTOM_IMAGE_TYPE:I = 0x4

.field public static final ERROR_TYPE:I = 0x1

.field public static final NORMAL_TYPE:I = 0x0

.field public static final PROGRESS_TYPE:I = 0x5

.field public static final SUCCESS_TYPE:I = 0x2

.field public static final WARNING_TYPE:I = 0x3


# instance fields
.field private mAlertType:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

.field private mCancelText:Ljava/lang/String;

.field private mCloseFromCancel:Z

.field private mConfirmButton:Landroid/widget/Button;

.field private mConfirmClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

.field private mConfirmText:Ljava/lang/String;

.field private mContentText:Ljava/lang/String;

.field private mContentTextView:Landroid/widget/TextView;

.field private mCustomImage:Landroid/widget/ImageView;

.field private mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

.field private mDialogView:Landroid/view/View;

.field private mErrorFrame:Landroid/widget/FrameLayout;

.field private mErrorInAnim:Landroid/view/animation/Animation;

.field private mErrorX:Landroid/widget/ImageView;

.field private mErrorXInAnim:Landroid/view/animation/AnimationSet;

.field private mModalInAnim:Landroid/view/animation/AnimationSet;

.field private mModalOutAnim:Landroid/view/animation/AnimationSet;

.field private mOverlayOutAnim:Landroid/view/animation/Animation;

.field private mProgressFrame:Landroid/widget/FrameLayout;

.field private mProgressHelper:Lcn/pedant/SweetAlert/widget/ProgressHelper;

.field private mShowCancel:Z

.field private mShowContent:Z

.field private mSuccessBowAnim:Landroid/view/animation/Animation;

.field private mSuccessFrame:Landroid/widget/FrameLayout;

.field private mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

.field private mSuccessLeftMask:Landroid/view/View;

.field private mSuccessRightMask:Landroid/view/View;

.field private mSuccessTick:Lcn/pedant/SweetAlert/widget/SuccessTickView;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWarningFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const v0, 0x7f100219

    .line 68
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    new-instance v1, Lcn/pedant/SweetAlert/widget/ProgressHelper;

    invoke-direct {v1, p1}, Lcn/pedant/SweetAlert/widget/ProgressHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/widget/ProgressHelper;

    .line 72
    iput p2, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    .line 73
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010010

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    .line 74
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010011

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    .line 77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xa

    if-gt p1, p2, :cond_2

    .line 78
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p1

    .line 80
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Landroid/view/animation/AlphaAnimation;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010015

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    .line 90
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010016

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    .line 91
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010012

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    .line 92
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010013

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/widget/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    .line 93
    new-instance p2, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$1;

    invoke-direct {p2, p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$1;-><init>(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    new-instance p1, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$2;

    invoke-direct {p1, p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$2;-><init>(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x78

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic access$000(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCloseFromCancel:Z

    return p0
.end method

.method static synthetic access$201(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 0

    .line 17
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method static synthetic access$301(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V
    .locals 0

    .line 17
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private changeAlertType(IZ)V
    .locals 3

    .line 188
    iput p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    .line 190
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mDialogView:Landroid/view/View;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    .line 193
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->restore()V

    .line 195
    :cond_0
    iget p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const v0, 0x7f0800d7

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 207
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_4
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    iget-object v2, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 197
    :cond_5
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_6

    .line 218
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->playAnimation()V

    :cond_6
    return-void
.end method

.method private dismissWithAnimation(Z)V
    .locals 1

    .line 350
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCloseFromCancel:Z

    .line 351
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 352
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private playAnimation()V
    .locals 2

    .line 178
    iget v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/widget/SuccessTickView;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SuccessTickView;->startTickAnim()V

    .line 183
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restore()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 171
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 172
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/widget/SuccessTickView;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/widget/SuccessTickView;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 174
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public changeAlertType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method public dismissWithAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public getAlerType()I
    .locals 1

    .line 224
    iget v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    return v0
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressHelper()Lcn/pedant/SweetAlert/widget/ProgressHelper;
    .locals 1

    .line 373
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/widget/ProgressHelper;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCancelButton()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mShowCancel:Z

    return v0
.end method

.method public isShowContentText()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mShowContent:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090050

    if-ne v0, v1, :cond_1

    .line 358
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_0

    .line 359
    invoke-interface {p1, p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;->onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09005b

    if-ne p1, v0, :cond_3

    .line 364
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_2

    .line 365
    invoke-interface {p1, p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;->onClick(Lcn/pedant/SweetAlert/widget/SweetAlertDialog;)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->dismissWithAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 133
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentView(I)V

    .line 135
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mDialogView:Landroid/view/View;

    const p1, 0x7f090149

    .line 136
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f090061

    .line 137
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    const p1, 0x7f09007d

    .line 138
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f09007e

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    const p1, 0x7f09012e

    .line 140
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const p1, 0x7f0900e6

    .line 141
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    .line 142
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f09012f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/pedant/SweetAlert/widget/SuccessTickView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/widget/SuccessTickView;

    .line 143
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0900bf

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    .line 144
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0900c0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    const p1, 0x7f090065

    .line 145
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    const p1, 0x7f090160

    .line 146
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    const p1, 0x7f09005b

    .line 147
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const p1, 0x7f090050

    .line 148
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    .line 149
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/widget/ProgressHelper;

    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/widget/ProgressHelper;->setProgressWheel(Lcom/pnikosis/materialishprogress/ProgressWheel;)V

    .line 150
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 154
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 155
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 156
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 157
    iget p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    invoke-direct {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->playAnimation()V

    return-void
.end method

.method public setCancelClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 320
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 299
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 301
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 302
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setConfirmClickListener(Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 0

    .line 325
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmClickListener:Lcn/pedant/SweetAlert/widget/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 312
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 262
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentText:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->showContentText(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    .line 265
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setCustomImage(I)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 245
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 237
    iput-object p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public showCancelButton(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 275
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mShowCancel:Z

    .line 276
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 277
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public showContentText(Z)Lcn/pedant/SweetAlert/widget/SweetAlertDialog;
    .locals 1

    .line 287
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mShowContent:Z

    .line 288
    iget-object v0, p0, Lcn/pedant/SweetAlert/widget/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 289
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-object p0
.end method
