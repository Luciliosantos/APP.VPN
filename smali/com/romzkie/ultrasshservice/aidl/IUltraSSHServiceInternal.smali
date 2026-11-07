.class public interface abstract Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal;
.super Ljava/lang/Object;
.source "IUltraSSHServiceInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Stub;,
        Lcom/romzkie/ultrasshservice/aidl/IUltraSSHServiceInternal$Default;
    }
.end annotation


# virtual methods
.method public abstract stopVPN()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
