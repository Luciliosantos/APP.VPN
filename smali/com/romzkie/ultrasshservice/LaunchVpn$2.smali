.class Lcom/romzkie/ultrasshservice/LaunchVpn$2;
.super Ljava/lang/Object;
.source "LaunchVpn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/romzkie/ultrasshservice/LaunchVpn;->askForPW(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

.field final synthetic val$type:I

.field final synthetic val$userpwlayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/LaunchVpn;ILandroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    iput p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$type:I

    iput-object p3, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$userpwlayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 114
    iget p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$type:I

    sget p2, Lcom/romzkie/ultrasshservice/R$string;->password:I

    if-ne p1, p2, :cond_1

    .line 115
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$100(Lcom/romzkie/ultrasshservice/LaunchVpn;)Lcom/romzkie/ultrasshservice/config/Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->edit()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences$Editor;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->username:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sshUser"

    .line 119
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->password:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->val$userpwlayout:Landroid/view/View;

    sget v1, Lcom/romzkie/ultrasshservice/R$id;->save_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "sshPass"

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {v0, p2}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$202(Lcom/romzkie/ultrasshservice/LaunchVpn;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$200(Lcom/romzkie/ultrasshservice/LaunchVpn;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 133
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$200(Lcom/romzkie/ultrasshservice/LaunchVpn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/romzkie/ultrasshservice/config/PasswordCache;->setCachedPassword(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$2;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    const/16 v0, 0x46

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/romzkie/ultrasshservice/LaunchVpn;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
