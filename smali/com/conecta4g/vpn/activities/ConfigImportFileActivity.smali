.class public Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;
.super Lcom/conecta4g/vpn/activities/BaseActivity;
.source "ConfigImportFileActivity.java"

# interfaces
.implements Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;


# static fields
.field private static final BACK_DIR:Ljava/lang/String; = "../"

.field private static final HOME_PATH:Ljava/lang/String;

.field private static final PERMISSION_REQUEST_CODE:I = 0x1

.field private static final RESTORE_CURRENT_PATH:Ljava/lang/String; = "restoreCurrentPath"

.field private static final TAG:Ljava/lang/String; = "ConfigImportFileActivity"


# instance fields
.field private adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

.field private backDir:Ljava/io/File;

.field private currentPath:Ljava/lang/String;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private pathAbertoPeloInicio:Ljava/lang/String;

.field private rvManagerList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->HOME_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileManager(Ljava/lang/String;)V

    return-void
.end method

.method private canGoBackFolder()Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private fileManager(Ljava/lang/String;)V
    .locals 9

    const-string v0, "../"

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->canGoBackFolder()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 202
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    .line 213
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 214
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->pathAbertoPeloInicio:Ljava/lang/String;

    .line 217
    :cond_2
    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_3

    .line 220
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 223
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->pathAbertoPeloInicio:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 225
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    .line 228
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 229
    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 230
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 231
    iget-object v5, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    new-instance v6, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f0f005c

    invoke-virtual {p0, v8}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v4, v8}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {p0, v4}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "sks"

    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 236
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 237
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%s %s"

    .line 235
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 239
    iget-object v6, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    new-instance v7, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v8, v4, v5}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 245
    :cond_7
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 246
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 247
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->canGoBackFolder()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->pathAbertoPeloInicio:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 251
    :cond_8
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    new-instance v1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    const-string v3, "..."

    const-string v4, "Pasta"

    invoke-direct {v1, v3, v0, v4}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 254
    :cond_9
    new-instance p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    .line 255
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->rvManagerList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 256
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-virtual {p1, p0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->setOnItemClickListener(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;)V

    .line 257
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->rvManagerList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 204
    :cond_a
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->startMainListManager()V

    return-void
.end method

.method private permissionGranted()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 325
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private requestPermissionInfo()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 278
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0106

    .line 281
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f008a

    .line 282
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 283
    new-instance v1, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$1;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$1;-><init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0098

    .line 289
    new-instance v2, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$2;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$2;-><init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f003a

    .line 296
    new-instance v2, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$3;

    invoke-direct {v2, p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$3;-><init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 305
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setToolbar()V
    .locals 2

    const v0, 0x7f09014b

    .line 383
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 384
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 385
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private showApagarPrompt(Ljava/io/File;)V
    .locals 3

    .line 389
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0f00f9

    .line 392
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0f002b

    .line 393
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0116

    .line 395
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$4;-><init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;Ljava/io/File;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f0f0093

    .line 407
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$5;

    invoke-direct {v1, p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity$5;-><init>(Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 412
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startMainListManager()V
    .locals 8

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->pathAbertoPeloInicio:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    const v2, 0x7f0f00b1

    .line 164
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(I)V

    .line 167
    :cond_0
    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->backDir:Ljava/io/File;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 169
    sget-object v2, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->HOME_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SocksHttp"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_3

    .line 175
    aget-object v2, v1, v3

    .line 176
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 182
    sget-object v6, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->HOME_PATH:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0f005b

    .line 183
    invoke-virtual {p0, v2}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    new-instance v6, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0f005c

    invoke-virtual {p0, v7}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v4, v7}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    new-instance v0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    .line 194
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->rvManagerList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 195
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-virtual {v0, p0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;->setOnItemClickListener(Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$OnItemClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->rvManagerList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->adapter:Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public importarConfigInputFile(Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x0

    .line 345
    :try_start_0
    invoke-static {p1, p0}, Lcom/romzkie/ultrasshservice/config/ConfigParser;->convertInputAndSave(Ljava/io/InputStream;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 349
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    invoke-direct {p1, p0}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getPrefsPrivate()Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;

    move-result-object p1

    const-string v1, "validadeConfig"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/romzkie/ultrasshservice/util/securepreferences/SecurePreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    const p1, 0x7f0f0089

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 354
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 353
    invoke-static {p1, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    :cond_0
    const p1, 0x7f0f00df

    .line 357
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 361
    invoke-static {p0}, Lcom/conecta4g/vpn/SocksHttpMainActivity;->updateMainViews(Landroid/content/Context;)V

    goto :goto_0

    .line 346
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const v1, 0x7f0f0074

    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 364
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 368
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conecta4g/vpn/LauncherActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 262
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->canGoBackFolder()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->pathAbertoPeloInicio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/conecta4g/vpn/activities/BaseActivity;->onBackPressed()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "../"

    .line 263
    invoke-direct {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileManager(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->isTunnelActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0078

    .line 57
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->finish()V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "file"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const p1, 0x7f0c0040

    .line 70
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->setContentView(I)V

    .line 72
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f0069

    if-eqz v0, :cond_2

    const-string v3, "sks"

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->importarConfigInputFile(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->finish()V

    return-void

    :cond_3
    const v0, 0x7f0c001f

    .line 98
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->setFinishOnTouchOutside(Z)V

    const v0, 0x7f0900f4

    .line 100
    invoke-virtual {p0, v0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->rvManagerList:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->setToolbar()V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->permissionGranted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->requestPermissionInfo()V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "restoreCurrentPath"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileManager(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_5
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->startMainListManager()V

    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 131
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {v0}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {p1}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->fileManager(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "sks"

    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 139
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->importarConfigInputFile(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f0f006b

    const/4 p2, 0x0

    .line 141
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 1

    .line 151
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->folderList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;

    invoke-virtual {p2}, Lcom/conecta4g/vpn/adapter/ManagerFilesAdapter$ManagerItem;->getDirPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->showApagarPrompt(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->startMainListManager()V

    goto :goto_0

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->requestPermissionInfo()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/conecta4g/vpn/activities/ConfigImportFileActivity;->currentPath:Ljava/lang/String;

    const-string v1, "restoreCurrentPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lcom/conecta4g/vpn/activities/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
