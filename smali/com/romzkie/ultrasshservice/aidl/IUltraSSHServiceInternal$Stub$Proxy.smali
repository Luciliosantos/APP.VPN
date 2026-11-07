.class Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUltraSSHServiceInternal.java"

# interfaces
.implements Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.romzkie.ultrasshservice.aidl.IUltraSSHServiceInternal"

    return-object v0
.end method

.method public stopVPN()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.romzkie.ultrasshservice.aidl.IUltraSSHServiceInternal"

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-static {}, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;->getDefaultImpl()Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-static {}, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;->getDefaultImpl()Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;->stopVPN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 106
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v2
.end method
