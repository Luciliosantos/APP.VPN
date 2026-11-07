.class Lcom/conecta4g/vpn/SocksHttpMainActivity$6;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field final synthetic val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;


# direct methods
.method constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1198
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$700(Lcom/conecta4g/vpn/SocksHttpMainActivity;)V

    .line 1199
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v0

    if-eqz v0, :cond_6
    # Start the Beerus scene animation on the screen root while the VPN tunnel is active.
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;
    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_scene_started
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :cond_scene_started
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;
    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_anim_started
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :cond_anim_started

    .line 1201
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$800(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1204
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$900(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1205
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1000(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1206
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1207
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f00b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_SERVER_REPLIED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_NO_SERVER_REPLY_YET:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    :cond_3
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_AUTH_FAILED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1219
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    :cond_4
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->UNKNOWN_LEVEL:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1222
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    :cond_5
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->val$level:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NONETWORK:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1225
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "VPN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    # Stop the scene animation when disconnected; frame zero remains as the idle character background.
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;
    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    check-cast v0, Landroid/view/View;
    move-object v2, v0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_scene_stopped
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :cond_scene_stopped
    # Recreate the scene drawable so idle always returns to frame zero (orb at Beerus's palm).
    const v0, 0x7f0800ef
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$6;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;
    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$1200(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Landroid/widget/TextView;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    move-result-object v0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v1, :cond_anim_stopped
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V
    :cond_anim_stopped
    return-void
.end method
