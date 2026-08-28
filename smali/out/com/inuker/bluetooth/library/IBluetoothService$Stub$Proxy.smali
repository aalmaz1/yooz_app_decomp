.class Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothService.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/IBluetoothService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/IBluetoothService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/inuker/bluetooth/library/IBluetoothService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.inuker.bluetooth.library.IBluetoothService"

    .line 107
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 114
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    if-eqz p3, :cond_25

    .line 116
    invoke-interface {p3}, Lcom/inuker/bluetooth/library/IResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 117
    iget-object v4, p0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_45

    .line 118
    invoke-static {}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;->getDefaultImpl()Lcom/inuker/bluetooth/library/IBluetoothService;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 119
    invoke-static {}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;->getDefaultImpl()Lcom/inuker/bluetooth/library/IBluetoothService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/inuker/bluetooth/library/IBluetoothService;->callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
    :try_end_3e
    .catchall {:try_start_8 .. :try_end_3e} :catchall_58

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 122
    :cond_45
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_51

    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_58

    .line 128
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_58
    move-exception p1

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.inuker.bluetooth.library.IBluetoothService"

    return-object v0
.end method
