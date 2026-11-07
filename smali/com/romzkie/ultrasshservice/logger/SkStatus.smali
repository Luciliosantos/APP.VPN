.class public Lcom/romzkie/ultrasshservice/logger/SkStatus;
.super Ljava/lang/Object;
.source "SkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;,
        Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;,
        Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;
    }
.end annotation


# static fields
.field static final MAXLOGENTRIES:I = 0x3e8

.field public static final SSH_AGUARDANDO_REDE:Ljava/lang/String; = "AGUARDANDO"

.field public static final SSH_AUTENTICADO:Ljava/lang/String; = "AUTENTICADO"

.field public static final SSH_AUTENTICANDO:Ljava/lang/String; = "AUTENTICANDO"

.field public static final SSH_CONECTADO:Ljava/lang/String; = "CONECTADO"

.field public static final SSH_CONECTANDO:Ljava/lang/String; = "CONECTANDO"

.field public static final SSH_DESCONECTADO:Ljava/lang/String; = "DESCONECTADO"

.field public static final SSH_INICIANDO:Ljava/lang/String; = "INICIANDO"

.field public static final SSH_PARANDO:Ljava/lang/String; = "PARANDO"

.field public static final SSH_RECONECTANDO:Ljava/lang/String; = "RECONECTANDO"

.field private static logListener:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logbuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/romzkie/ultrasshservice/logger/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastIntent:Landroid/content/Intent;

.field private static mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field private static mLastStateresid:I

.field private static mLaststate:Ljava/lang/String;

.field private static mLaststatemsg:Ljava/lang/String;

.field static final oficialdebugkey:[B

.field static final oficialkey:[B

.field private static stateListener:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v0, ""

    .line 28
    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    const-string v0, "NOPROCESS"

    .line 29
    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststate:Ljava/lang/String;

    .line 30
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->state_noprocess:I

    sput v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastIntent:Landroid/content/Intent;

    const/16 v0, 0x14

    new-array v1, v0, [B

    .line 129
    fill-array-data v1, :array_0

    sput-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->oficialkey:[B

    new-array v0, v0, [B

    .line 131
    fill-array-data v0, :array_1

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->oficialdebugkey:[B

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    .line 135
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    .line 138
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInformation()V

    return-void

    :array_0
    .array-data 1
        0x5dt
        -0x48t
        0x58t
        0x67t
        -0x80t
        0x73t
        -0x1t
        -0x2ft
        0x78t
        0x71t
        0x62t
        -0x38t
        0xct
        -0x38t
        0x34t
        -0x3et
        0x5ft
        -0x2t
        -0x72t
        0x5ft
    .end array-data

    :array_1
    .array-data 1
        -0x29t
        0x49t
        0x3at
        0x66t
        -0x51t
        -0x1bt
        -0x78t
        0x2dt
        -0x38t
        -0x3t
        0x35t
        -0x31t
        0x77t
        -0x61t
        -0x14t
        -0x50t
        0x41t
        0x44t
        -0x48t
        -0x16t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addLogListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;)V
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V
    .locals 8

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v3, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststate:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 194
    sget-object v4, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    sget v5, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    sget-object v6, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v7, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastIntent:Landroid/content/Intent;

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clearLog()V
    .locals 3

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 144
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInformation()V

    .line 146
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;

    .line 147
    invoke-interface {v2}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;->onClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLastCleanLogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 45
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    .line 46
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$1;->$SwitchMap$com$romzkie$ultrasshservice$logger$ConnectionStatus:[I

    sget-object v2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v2}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 63
    array-length v5, v1

    const/4 v6, 0x7

    if-lt v5, v6, :cond_1

    .line 64
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v1, v4

    aput-object v6, v5, v3

    const/4 v6, 0x6

    aget-object v1, v1, v6

    aput-object v1, v5, v4

    const-string v1, "%s %s"

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_2
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststate:Ljava/lang/String;

    const-string v2, "NOPROCESS"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 75
    :cond_3
    sget v2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    sget v5, Lcom/romzkie/ultrasshservice/R$string;->state_waitconnectretry:I

    if-ne v2, v5, :cond_4

    .line 76
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->state_waitconnectretry:I

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_4
    sget v2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    sget v2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    sget v3, Lcom/romzkie/ultrasshservice/R$string;->unknown_state:I

    if-ne v2, v3, :cond_5

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastState()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststate:Ljava/lang/String;

    return-object v0
.end method

.method private static getLevel(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
    .locals 7

    const-string v0, "INICIANDO"

    const-string v1, "CONECTANDO"

    const-string v2, "AGUARDANDO"

    const-string v3, "RECONECTANDO"

    const-string v4, "RESOLVE"

    const-string v5, "TCP_CONNECT"

    .line 259
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTENTICANDO"

    const-string v2, "GET_CONFIG"

    const-string v3, "ASSIGN_IP"

    const-string v4, "ADD_ROUTES"

    const-string v5, "AUTH_PENDING"

    .line 260
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONECTADO"

    .line 261
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "DESCONECTADO"

    .line 262
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    .line 264
    aget-object v6, v0, v5

    .line 265
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_NO_SERVER_REPLY_YET:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x5

    if-ge v0, v5, :cond_3

    .line 268
    aget-object v5, v1, v0

    .line 269
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_SERVER_REPLIED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 272
    aget-object v1, v2, v0

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v4, v1, :cond_7

    .line 276
    aget-object v0, v3, v4

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 280
    :cond_7
    sget-object p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->UNKNOWN_LEVEL:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0
.end method

.method public static getLocalizedState(Ljava/lang/String;)I
    .locals 2

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "INICIANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CONECTADO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "RESOLVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "AUTENTICADO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "ADD_ROUTES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "CONECTANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "TCP_CONNECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "AUTENTICANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v0, "PARANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    const-string v0, "ASSIGN_IP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_a
    const-string v0, "GET_CONFIG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v0, "DESCONECTADO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_c
    const-string v0, "AUTH_PENDING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_d
    const-string v0, "RECONECTANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_e
    const-string v0, "AGUARDANDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 253
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->unknown_state:I

    return p0

    .line 243
    :pswitch_0
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_starting:I

    return p0

    .line 237
    :pswitch_1
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_connected:I

    return p0

    .line 247
    :pswitch_2
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_resolve:I

    return p0

    .line 225
    :pswitch_3
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_auntenticado:I

    return p0

    .line 235
    :pswitch_4
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_add_routes:I

    return p0

    .line 223
    :pswitch_5
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_connecting:I

    return p0

    .line 249
    :pswitch_6
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_tcp_connect:I

    return p0

    .line 229
    :pswitch_7
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_auth:I

    return p0

    .line 245
    :pswitch_8
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_stopping:I

    return p0

    .line 233
    :pswitch_9
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_assign_ip:I

    return p0

    .line 231
    :pswitch_a
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_get_config:I

    return p0

    .line 239
    :pswitch_b
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_disconnected:I

    return p0

    .line 251
    :pswitch_c
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_auth_pending:I

    return p0

    .line 241
    :pswitch_d
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_reconnecting:I

    return p0

    .line 227
    :pswitch_e
    sget p0, Lcom/romzkie/ultrasshservice/R$string;->state_nonetwork:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e5c31a4 -> :sswitch_e
        -0x57613741 -> :sswitch_d
        -0x31f19620 -> :sswitch_c
        -0x2b3a8e7a -> :sswitch_b
        -0x1b0a8795 -> :sswitch_a
        -0x559e189 -> :sswitch_9
        -0x4803a87 -> :sswitch_8
        0x51d237d -> :sswitch_7
        0xfb59e4c -> :sswitch_6
        0x1013a24c -> :sswitch_5
        0x3281a8c8 -> :sswitch_4
        0x423abde7 -> :sswitch_3
        0x6c340dcc -> :sswitch_2
        0x7421a938 -> :sswitch_1
        0x7a3e57a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getlogbuffer()[Lcom/romzkie/ultrasshservice/logger/LogItem;
    .locals 3

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/romzkie/ultrasshservice/logger/LogItem;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/romzkie/ultrasshservice/logger/LogItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isTunnelActive()Z
    .locals 2

    .line 37
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_AUTH_FAILED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs logDebug(I[Ljava/lang/Object;)V
    .locals 2

    .line 383
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logError(I)V
    .locals 2

    .line 399
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static varargs logError(I[Ljava/lang/Object;)V
    .locals 2

    .line 403
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2

    .line 387
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logException(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 353
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 354
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 359
    new-instance v4, Lcom/romzkie/ultrasshservice/logger/LogItem;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "%s: %s, %s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    new-instance v4, Lcom/romzkie/ultrasshservice/logger/LogItem;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Erro: %s, %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    .line 363
    :goto_0
    invoke-static {v4}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logException(Ljava/lang/Exception;)V
    .locals 2

    .line 367
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 349
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->ERROR:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-static {v0, p0, p1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logException(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static varargs logInfo(I[Ljava/lang/Object;)V
    .locals 2

    .line 379
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2

    .line 371
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->INFO:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method private static logInformation()V
    .locals 7

    .line 159
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->mobile_info:I

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 161
    sget v0, Lcom/romzkie/ultrasshservice/R$string;->app_mobile_info:I

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logInfo(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logWarning(I[Ljava/lang/Object;)V
    .locals 2

    .line 391
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->WARNING:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0, p1}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method public static logWarning(Ljava/lang/String;)V
    .locals 2

    .line 395
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->WARNING:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    invoke-direct {v0, v1, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V

    return-void
.end method

.method static newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-static {p0, v0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;Z)V

    return-void
.end method

.method static declared-synchronized newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;Z)V
    .locals 3

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 328
    :try_start_0
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 330
    :cond_0
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 333
    :goto_0
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v1, 0x5dc

    if-le p1, v1, :cond_1

    .line 334
    :goto_1
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logbuffer:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 335
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 338
    :cond_1
    sget-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;

    .line 339
    invoke-interface {v1, p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;->newLog(Lcom/romzkie/ultrasshservice/logger/LogItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 341
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeLogListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogListener;)V
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 185
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->logListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeStateListener(Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;)V
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 199
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateStateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 284
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLocalizedState(Ljava/lang/String;)I

    move-result v0

    .line 285
    invoke-static {p0}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->getLevel(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    move-result-object v1

    .line 286
    invoke-static {p0, p1, v0, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V

    return-void
.end method

.method public static declared-synchronized updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;)V
    .locals 2

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    const/4 v1, 0x0

    .line 291
    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateStateString(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    .locals 9

    const-class v0, Lcom/romzkie/ultrasshservice/logger/SkStatus;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    sget-object v2, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    if-ne v1, v2, :cond_0

    const-string v1, "AUTENTICANDO"

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    new-instance p2, Lcom/romzkie/ultrasshservice/logger/LogItem;

    sget-object p4, Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;->DEBUG:Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;

    const-string v1, "Ignoring SocksHttp Status in CONNECTED state (%s->%s): %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-virtual {p3}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p4, p0}, Lcom/romzkie/ultrasshservice/logger/LogItem;-><init>(Lcom/romzkie/ultrasshservice/logger/SkStatus$LogLevel;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/romzkie/ultrasshservice/logger/SkStatus;->newLogItem(Lcom/romzkie/ultrasshservice/logger/LogItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit v0

    return-void

    .line 303
    :cond_0
    :try_start_1
    sput-object p0, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststate:Ljava/lang/String;

    .line 304
    sput-object p1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLaststatemsg:Ljava/lang/String;

    .line 305
    sput p2, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastStateresid:I

    .line 306
    sput-object p3, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastLevel:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 307
    sput-object p4, Lcom/romzkie/ultrasshservice/logger/SkStatus;->mLastIntent:Landroid/content/Intent;

    .line 310
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/SkStatus;->stateListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 311
    invoke-interface/range {v3 .. v8}, Lcom/romzkie/ultrasshservice/logger/SkStatus$StateListener;->updateState(Ljava/lang/String;Ljava/lang/String;ILcom/romzkie/ultrasshservice/logger/ConnectionStatus;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
