.class public abstract Lcom/inuker/bluetooth/library/IBluetoothService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothService.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/IBluetoothService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/IBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.inuker.bluetooth.library.IBluetoothService"

.field static final TRANSACTION_callBluetoothApi:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.inuker.bluetooth.library.IBluetoothService"

    .line 25
    invoke-virtual {p0, p0, v0}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/inuker/bluetooth/library/IBluetoothService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.inuker.bluetooth.library.IBluetoothService"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/inuker/bluetooth/library/IBluetoothService;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/inuker/bluetooth/library/IBluetoothService;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/inuker/bluetooth/library/IBluetoothService;
    .locals 1

    .line 149
    sget-object v0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/inuker/bluetooth/library/IBluetoothService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/inuker/bluetooth/library/IBluetoothService;)Z
    .locals 1

    .line 139
    sget-object v0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/inuker/bluetooth/library/IBluetoothService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 143
    sput-object p0, Lcom/inuker/bluetooth/library/IBluetoothService$Stub$Proxy;->sDefaultImpl:Lcom/inuker/bluetooth/library/IBluetoothService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 140
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.inuker.bluetooth.library.IBluetoothService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 58
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 63
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 69
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/inuker/bluetooth/library/IResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/inuker/bluetooth/library/IResponse;

    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p4, p2}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;->callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p4, :cond_3

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p4, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0
.end method
