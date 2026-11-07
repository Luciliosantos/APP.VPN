.class Lcom/romzkie/ultrasshservice/logger/ConnectionStatus$1;
.super Ljava/lang/Object;
.source "ConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
    .locals 1

    .line 30
    invoke-static {}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;->values()[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;
    .locals 0

    .line 35
    new-array p1, p1, [Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/romzkie/ultrasshservice/logger/ConnectionStatus$1;->newArray(I)[Lcom/romzkie/ultrasshservice/logger/ConnectionStatus;

    move-result-object p1

    return-object p1
.end method
