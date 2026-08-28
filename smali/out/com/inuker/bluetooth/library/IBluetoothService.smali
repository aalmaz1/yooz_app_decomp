.class public interface abstract Lcom/inuker/bluetooth/library/IBluetoothService;
.super Ljava/lang/Object;
.source "IBluetoothService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/IBluetoothService$Stub;,
        Lcom/inuker/bluetooth/library/IBluetoothService$Default;
    }
.end annotation


# virtual methods
.method public abstract callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
