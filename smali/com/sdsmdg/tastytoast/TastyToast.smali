.class public Lcom/sdsmdg/tastytoast/TastyToast;
.super Ljava/lang/Object;
.source "TastyToast.java"


# static fields
.field public static final CONFUSING:I = 0x6

.field public static final DEFAULT:I = 0x5

.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x4

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field public static final SUCCESS:I = 0x1

.field public static final WARNING:I = 0x2

.field static confusingToastView:Lcom/sdsmdg/tastytoast/ConfusingToastView;

.field static defaultToastView:Lcom/sdsmdg/tastytoast/DefaultToastView;

.field static errorToastView:Lcom/sdsmdg/tastytoast/ErrorToastView;

.field static infoToastView:Lcom/sdsmdg/tastytoast/InfoToastView;

.field static successToastView:Lcom/sdsmdg/tastytoast/SuccessToastView;

.field static warningToastView:Lcom/sdsmdg/tastytoast/WarningToastView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;
    .locals 7

    .line 39
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string v1, "#FFFFFF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 131
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->confusing_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 133
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->confusingView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/ConfusingToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->confusingToastView:Lcom/sdsmdg/tastytoast/ConfusingToastView;

    .line 136
    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/ConfusingToastView;->startAnim()V

    .line 137
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->confusing_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->default_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 121
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 122
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->defaultView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/DefaultToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->defaultToastView:Lcom/sdsmdg/tastytoast/DefaultToastView;

    .line 124
    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/DefaultToastView;->startAnim()V

    .line 125
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->default_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 107
    :pswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->info_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 109
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 110
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->infoView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/InfoToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->infoToastView:Lcom/sdsmdg/tastytoast/InfoToastView;

    .line 112
    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/InfoToastView;->startAnim()V

    .line 113
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->info_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 95
    :pswitch_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->error_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 97
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->errorView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/ErrorToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->errorToastView:Lcom/sdsmdg/tastytoast/ErrorToastView;

    .line 100
    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/ErrorToastView;->startAnim()V

    .line 101
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->error_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 55
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->warning_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 57
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 58
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->warningView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/WarningToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->warningToastView:Lcom/sdsmdg/tastytoast/WarningToastView;

    .line 61
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    .line 63
    invoke-virtual {p1, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 64
    new-instance v2, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 65
    invoke-virtual {p1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 66
    new-instance v2, Lcom/sdsmdg/tastytoast/TastyToast$1;

    invoke-direct {v2}, Lcom/sdsmdg/tastytoast/TastyToast$1;-><init>()V

    invoke-virtual {p1, v2}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 77
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sdsmdg/tastytoast/TastyToast$2;

    invoke-direct {v3, p1}, Lcom/sdsmdg/tastytoast/TastyToast$2;-><init>(Lcom/facebook/rebound/Spring;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 89
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->warning_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 44
    :pswitch_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p3, Lcom/sdsmdg/tastytoast/R$layout;->success_toast_layout:I

    invoke-virtual {p0, p3, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 45
    sget p3, Lcom/sdsmdg/tastytoast/R$id;->toastMessage:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 46
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget p1, Lcom/sdsmdg/tastytoast/R$id;->successView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sdsmdg/tastytoast/SuccessToastView;

    sput-object p1, Lcom/sdsmdg/tastytoast/TastyToast;->successToastView:Lcom/sdsmdg/tastytoast/SuccessToastView;

    .line 48
    invoke-virtual {p1}, Lcom/sdsmdg/tastytoast/SuccessToastView;->startAnim()V

    .line 49
    sget p1, Lcom/sdsmdg/tastytoast/R$drawable;->success_toast:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 143
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
