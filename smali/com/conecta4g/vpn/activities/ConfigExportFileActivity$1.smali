.class Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$1;
.super Ljava/lang/Object;
.source "ConfigExportFileActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->setValidadeDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$1;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 166
    iget-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$1;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$002(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;J)J

    return-void
.end method
