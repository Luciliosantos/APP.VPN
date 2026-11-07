.class public Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;
.super Ljava/lang/Object;
.source "SocksHttpMainActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conecta4g/vpn/SocksHttpMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawerPanelMain"
.end annotation


# instance fields
.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

.field private toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;


# direct methods
.method public constructor <init>(Lcom/conecta4g/vpn/SocksHttpMainActivity;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getToogle()Landroidx/appcompat/app/ActionBarDrawerToggle;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const-string v0, "android.intent.action.MAIN"

    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v1, 0x7f0f009a

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 476
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/conecta4g/vpn/util/ConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUrlTermos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 477
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 445
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/conecta4g/vpn/activities/ConfigGeralActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, ""

    .line 464
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, "Socks Injector - Feedback"

    .line 465
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message/rfc822"

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v1}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/conecta4g/vpn/util/ConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conecta4g/vpn/util/ConfigUtil;->getEmailFeedback()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 423
    :sswitch_3
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/util/Utils;->getAppInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 426
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.settings.RadioInfo"

    .line 428
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 432
    :catch_0
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.RadioInfo"

    .line 434
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 437
    :catch_1
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const v0, 0x7f0f006f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 483
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->this$0:Lcom/conecta4g/vpn/SocksHttpMainActivity;

    invoke-static {v0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->access$100(Lcom/conecta4g/vpn/SocksHttpMainActivity;)Lcom/conecta4g/vpn/util/ConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conecta4g/vpn/util/ConfigUtil;->getUrlContato()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 497
    :sswitch_5
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 498
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 499
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "Battery optimization > All apps > CONECTA4G > Dont\'t optimize"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 505
    :catch_2
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "N\u00e3o disponivel para o seu aparelho"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 489
    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 490
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.settings.APN_SETTINGS"

    .line 491
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090001 -> :sswitch_6
        0x7f090002 -> :sswitch_5
        0x7f09005d -> :sswitch_4
        0x7f0900c6 -> :sswitch_3
        0x7f0900c7 -> :sswitch_2
        0x7f0900c8 -> :sswitch_1
        0x7f090138 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDrawer(Landroidx/appcompat/widget/Toolbar;)V
    .locals 8

    .line 380
    iget-object v0, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    .line 381
    iget-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 384
    new-instance v1, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v6, 0x7f0f0099

    const v7, 0x7f0f003a

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 387
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 389
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->toggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 392
    iget-object p1, p0, Lcom/conecta4g/vpn/SocksHttpMainActivity$DrawerPanelMain;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/conecta4g/vpn/util/Utils;->getAppInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 395
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "v. %s (%d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900d0

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 401
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method
