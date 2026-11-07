.class public Lcom/romzkie/ultrasshservice/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showConfusingToast(Ljava/lang/String;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method

.method public showDefaultToast(Ljava/lang/String;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {v0, p1, v1, v2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method

.method public showErrorToast(Ljava/lang/String;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, p1, v1, v2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method

.method public showInfoToast(Ljava/lang/String;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method

.method public showSuccessToast(Ljava/lang/String;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method

.method public showWarningToast(Ljava/lang/String;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/util/ToastUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    return-void
.end method
