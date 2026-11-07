.class synthetic Lcom/romzkie/ultrasshservice/logger/SkStatus$1;
.super Ljava/lang/Object;
.source "SkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/logger/SkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$romzkie$ultrasshservice$logger$ConnectionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->values()[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/SkStatus$1;->$SwitchMap$com$romzkie$ultrasshservice$logger$ConnectionStatus:[I

    :try_start_0
    sget-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
