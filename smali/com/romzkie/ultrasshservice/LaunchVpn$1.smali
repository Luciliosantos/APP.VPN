.class Lcom/romzkie/ultrasshservice/LaunchVpn$1;
.super Ljava/lang/Object;
.source "LaunchVpn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$userpwlayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/romzkie/ultrasshservice/LaunchVpn;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    iput-object p2, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->val$userpwlayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$000(Lcom/romzkie/ultrasshservice/LaunchVpn;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$002(Lcom/romzkie/ultrasshservice/LaunchVpn;Z)Z

    .line 96
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    invoke-static {p1}, Lcom/romzkie/ultrasshservice/LaunchVpn;->access$000(Lcom/romzkie/ultrasshservice/LaunchVpn;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 98
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->show_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    sget v1, Lcom/romzkie/ultrasshservice/R$drawable;->ic_visibility_off_black_24dp:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 102
    iget-object p1, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->val$userpwlayout:Landroid/view/View;

    sget v0, Lcom/romzkie/ultrasshservice/R$id;->show_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/romzkie/ultrasshservice/LaunchVpn$1;->this$0:Lcom/romzkie/ultrasshservice/LaunchVpn;

    sget v1, Lcom/romzkie/ultrasshservice/R$drawable;->ic_visibility_black_24dp:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
