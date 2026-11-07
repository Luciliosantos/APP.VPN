.class public Lcom/conecta4g/vpn/util/GoogleFeedbackUtils;
.super Ljava/lang/Object;
.source "GoogleFeedbackUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleFeedbackUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/conecta4g/vpn/util/GoogleFeedbackUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bindFeedback(Landroid/content/Context;)V
    .locals 4

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.feedback.LegacyBugReportService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    new-instance v1, Lcom/conecta4g/vpn/util/GoogleFeedbackUtils$1;

    invoke-direct {v1}, Lcom/conecta4g/vpn/util/GoogleFeedbackUtils$1;-><init>()V

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
