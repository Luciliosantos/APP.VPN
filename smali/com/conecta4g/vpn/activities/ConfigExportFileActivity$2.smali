.class Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;
.super Ljava/lang/Object;
.source "ConfigExportFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/DatePickerDialog;

.field final synthetic val$time_hoje:J


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;Landroid/app/DatePickerDialog;J)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->val$dialog:Landroid/app/DatePickerDialog;

    iput-wide p3, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->val$time_hoje:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 175
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->val$dialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p2

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    invoke-virtual {p2}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/Calendar;->set(III)V

    .line 181
    iget-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$002(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;J)J

    .line 183
    iget-object p2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {p2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$000(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->val$time_hoje:J

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 184
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$002(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;J)J

    .line 186
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0063

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 189
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$100(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$100(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$000(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->val$time_hoje:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    .line 195
    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$200(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$200(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {v2}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$200(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity$2;->this$0:Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;->access$000(Lcom/conecta4g/vpn/activities/ConfigExportFileActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "%s (%s)"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
