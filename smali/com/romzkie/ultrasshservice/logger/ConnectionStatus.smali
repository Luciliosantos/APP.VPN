.class public final enum Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
.super Ljava/lang/Enum;
.source "ConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LEVEL_AUTH_FAILED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_CONNECTING_NO_SERVER_REPLY_YET:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_CONNECTING_SERVER_REPLIED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_NONETWORK:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_START:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum LEVEL_WAITING_FOR_USER_INPUT:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

.field public static final enum UNKNOWN_LEVEL:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v1, "LEVEL_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 8
    new-instance v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v3, "LEVEL_CONNECTING_SERVER_REPLIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_SERVER_REPLIED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 9
    new-instance v3, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v5, "LEVEL_CONNECTING_NO_SERVER_REPLY_YET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_CONNECTING_NO_SERVER_REPLY_YET:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 10
    new-instance v5, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v7, "LEVEL_NONETWORK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NONETWORK:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 11
    new-instance v7, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v9, "LEVEL_NOTCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_NOTCONNECTED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 12
    new-instance v9, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v11, "LEVEL_START"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_START:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 13
    new-instance v11, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v13, "LEVEL_AUTH_FAILED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_AUTH_FAILED:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 14
    new-instance v13, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v15, "LEVEL_WAITING_FOR_USER_INPUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->LEVEL_WAITING_FOR_USER_INPUT:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 15
    new-instance v15, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const-string v14, "UNKNOWN_LEVEL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->UNKNOWN_LEVEL:Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 6
    sput-object v14, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->$VALUES:[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    .line 27
    new-instance v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus$1;

    invoke-direct {v0}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus$1;-><init>()V

    sput-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->$VALUES:[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    invoke-virtual {v0}, [Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
