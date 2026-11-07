.class public Lcom/conecta4g/vpn/adapter/LogsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LogsAdapter.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;,
        Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;",
        ">;",
        "Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;",
        "Landroid/os/Handler$Callback;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_STORED_LOG_ENTRIES:I = 0x3e8

.field private static final MESSAGE_CLEARLOG:I = 0x1

.field private static final MESSAGE_NEWLOG:I = 0x0

.field private static final MESSAGE_NEWLOGLEVEL:I = 0x3

.field private static final MESSAGE_NEWTS:I = 0x2

.field public static final TIME_FORMAT_ISO:I = 0x2

.field public static final TIME_FORMAT_NONE:I = 0x0

.field public static final TIME_FORMAT_SHORT:I = 0x1


# instance fields
.field private allEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/romzkie/ultrasshservice/logger/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private currentLevelEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/romzkie/ultrasshservice/logger/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLockAutoScroll:Z

.field private mLogLevel:I

.field private mTimeFormat:I

.field private observers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    const/16 v0, -0x64

    .line 54
    iput v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mTimeFormat:I

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLogLevel:I

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLockAutoScroll:Z

    .line 85
    iput-object p2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 88
    new-instance p1, Lcom/romzkie/ultrasshservice/config/Settings;

    iget-object p2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/romzkie/ultrasshservice/config/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/config/Settings;->getModoDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->setLogLevel(I)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->initLogBuffer()V

    .line 93
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    .line 98
    :cond_1
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->addLogListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/conecta4g/vpn/adapter/LogsAdapter;)Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->itemClickListener:Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;

    return-object p0
.end method

.method private addLogMessage(Lcom/romzkie/ultrasshservice/logger/LogItem;)Z
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 316
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    .line 317
    new-instance v0, Ljava/util/Vector;

    iget-object v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    const/16 v0, 0x32

    .line 318
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/romzkie/ultrasshservice/logger/LogItem;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->initCurrentMessages()V

    return v1

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getLogLevel()Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getInt()I

    move-result v0

    iget v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLogLevel:I

    if-gt v0, v2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getTime(Lcom/romzkie/ultrasshservice/logger/LogItem;I)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_2

    .line 234
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getLogtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 237
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 239
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 243
    :goto_0
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private initCurrentMessages()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 115
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/romzkie/ultrasshservice/logger/LogItem;

    .line 117
    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getLogLevel()Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->getInt()I

    move-result v2

    iget v3, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLogLevel:I

    if-gt v2, v3, :cond_0

    .line 118
    iget-object v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initLogBuffer()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 108
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->allEntries:Ljava/util/Vector;

    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getlogbuffer()[Lcom/romzkie/ultrasshservice/logger/LogItem;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->initCurrentMessages()V

    return-void
.end method


# virtual methods
.method public clearLog()V
    .locals 0

    .line 348
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->clearLog()V

    return-void
.end method

.method public getItem(I)Lcom/romzkie/ultrasshservice/logger/LogItem;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/romzkie/ultrasshservice/logger/LogItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "logmessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/romzkie/ultrasshservice/logger/LogItem;

    .line 264
    invoke-direct {p0, p1}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->addLogMessage(Lcom/romzkie/ultrasshservice/logger/LogItem;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 267
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 269
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    goto :goto_0

    .line 272
    :cond_0
    iget-boolean p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLockAutoScroll:Z

    if-nez p1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->scrollToLastPosition()V

    goto :goto_4

    .line 276
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 278
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 280
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    goto :goto_1

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->initLogBuffer()V

    goto :goto_4

    .line 284
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 286
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    goto :goto_2

    .line 291
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 293
    invoke-direct {p0}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->initCurrentMessages()V

    .line 295
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 297
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    goto :goto_3

    :cond_5
    :goto_4
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newLog(Lcom/romzkie/ultrasshservice/logger/LogItem;)V
    .locals 3

    .line 370
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 373
    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "logmessage"

    .line 376
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 379
    iget-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->onBindViewHolder(Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;I)V
    .locals 6

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->currentLevelEntries:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    .line 143
    iget-object v1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/romzkie/ultrasshservice/logger/LogItem;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget v2, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mTimeFormat:I

    invoke-direct {p0, v0, v2}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->getTime(Lcom/romzkie/ultrasshservice/logger/LogItem;I)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "[%s] "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p1, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v1, p1, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    new-instance v2, Lcom/conecta4g/vpn/adapter/LogsAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/conecta4g/vpn/adapter/LogsAdapter$1;-><init>(Lcom/conecta4g/vpn/adapter/LogsAdapter;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p1, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;->textLog:Landroid/widget/TextView;

    new-instance v1, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/conecta4g/vpn/adapter/LogsAdapter$2;-><init>(Lcom/conecta4g/vpn/adapter/LogsAdapter;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onClear()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/conecta4g/vpn/adapter/LogsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0041

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    new-instance p2, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conecta4g/vpn/adapter/LogsAdapter$logViewHolder;-><init>(Lcom/conecta4g/vpn/adapter/LogsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 179
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollToLastPosition()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 355
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 354
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->mLogLevel:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->itemClickListener:Lcom/conecta4g/vpn/adapter/LogsAdapter$OnItemClickListener;

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 186
    iget-object v0, p0, Lcom/conecta4g/vpn/adapter/LogsAdapter;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
