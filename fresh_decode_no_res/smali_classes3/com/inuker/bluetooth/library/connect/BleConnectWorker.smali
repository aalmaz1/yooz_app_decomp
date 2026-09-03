.class public Lcom/inuker/bluetooth/library/connect/BleConnectWorker;
.super Ljava/lang/Object;
.source "BleConnectWorker.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;
.implements Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;
.implements Lcom/inuker/bluetooth/library/RuntimeChecker;


# static fields
.field private static final MSG_GATT_RESPONSE:I = 0x120


# instance fields
.field private mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

.field private volatile mConnectStatus:I

.field private mDeviceProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

.field private mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inuker/bluetooth/library/RuntimeChecker;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 78
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mWorkerHandler:Landroid/os/Handler;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    .line 81
    const-class p1, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-static {p0, p1, p0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Ljava/lang/Class;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ble adapter null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private broadcastCharacterChanged(Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 3

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.character_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 295
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.mac"

    .line 294
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra.service.uuid"

    .line 296
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "extra.character.uuid"

    .line 297
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "extra.byte.value"

    .line 298
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 299
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastConnectStatus(I)V
    .locals 3

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.connect_status_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.mac"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra.status"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isCharacteristicIndicatable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicNoRspWritable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicNotifyable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicReadable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 727
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCharacteristicWritable(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private refreshServiceProfile()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "refreshServiceProfile for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 92
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 94
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 106
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "character: uuid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    new-instance v0, Lcom/inuker/bluetooth/library/model/BleGattProfile;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mDeviceProfile:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/model/BleGattProfile;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    return-void
.end method

.method private setConnectStatus(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 140
    invoke-static {p1}, Lcom/inuker/bluetooth/library/Constants;->getStatusText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "setConnectStatus status = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 141
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mConnectStatus:I

    return-void
.end method


# virtual methods
.method public checkRuntime()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/RuntimeChecker;->checkRuntime()V

    return-void
.end method

.method public clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 388
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    :cond_0
    return-void
.end method

.method public closeGatt()V
    .locals 3

    .line 336
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 338
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "closeGatt for %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_1

    .line 346
    invoke-interface {v0, v2}, Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;->onConnectStatusChanged(Z)V

    .line 349
    :cond_1
    invoke-direct {p0, v2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    const/16 v0, 0x20

    .line 350
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastConnectStatus(I)V

    return-void
.end method

.method public discoverService()Z
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 357
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "discoverService for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    const-string v0, "discoverService but gatt is null!"

    new-array v1, v3, [Ljava/lang/Object;

    .line 360
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 364
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "discoverServices failed"

    new-array v1, v3, [Ljava/lang/Object;

    .line 365
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 375
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mConnectStatus:I

    return v0
.end method

.method public getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 749
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 219
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 220
    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 222
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onCharacteristicChanged for %s: value = %s, service = 0x%s, character = 0x%s"

    .line 218
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastCharacterChanged(Ljava/util/UUID;Ljava/util/UUID;[B)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 186
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 189
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 190
    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onCharacteristicRead for %s: status = %d, service = 0x%s, character = 0x%s, value = %s"

    .line 184
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/ReadCharacterListener;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 203
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 205
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 206
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 207
    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onCharacteristicWrite for %s: status = %d, service = 0x%s, character = 0x%s, value = %s"

    .line 201
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(II)V
    .locals 4

    .line 146
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 149
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "onConnectionStateChange for %s: status = %d, newState = %d"

    .line 148
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-ne p2, v3, :cond_0

    .line 152
    invoke-direct {p0, v3}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    .line 154
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz p1, :cond_1

    .line 155
    invoke-interface {p1, v2}, Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;->onConnectStatusChanged(Z)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->closeGatt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 232
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 234
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 235
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    .line 236
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onDescriptorRead for %s: status = %d, service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 231
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/ReadDescriptorListener;->onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 248
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 249
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 250
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 251
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    .line 252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onDescriptorWrite for %s: status = %d, service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 247
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/WriteDescriptorListener;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/16 p1, 0x120

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 760
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onMtuChanged(II)V
    .locals 3

    .line 273
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 276
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onMtuChanged for %s, mtu = %d, status = %d"

    .line 275
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/RequestMtuListener;

    if-eqz v1, :cond_0

    .line 279
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/RequestMtuListener;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/RequestMtuListener;->onMtuChanged(II)V

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(II)V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 264
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onReadRemoteRssi for %s, rssi = %d, status = %d"

    .line 263
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/ReadRssiListener;->onReadRemoteRssi(II)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(I)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onServicesDiscovered for %s: status = %d"

    .line 166
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 v0, 0x13

    .line 170
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->setConnectStatus(I)V

    const/16 v0, 0x10

    .line 171
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->broadcastConnectStatus(I)V

    .line 172
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->refreshServiceProfile()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;

    if-eqz v1, :cond_1

    .line 176
    check-cast v0, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBleGattProfile:Lcom/inuker/bluetooth/library/model/BleGattProfile;

    invoke-interface {v0, p1, v1}, Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;->onServicesDiscovered(ILcom/inuker/bluetooth/library/model/BleGattProfile;)V

    :cond_1
    return-void
.end method

.method public openGatt()Z
    .locals 6

    .line 304
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openGatt for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    const-string v1, "Previous gatt not closed"

    new-array v2, v3, [Ljava/lang/Object;

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v0

    .line 313
    :cond_0
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 314
    new-instance v2, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;

    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGattResponse:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-direct {v2, v4}, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;-><init>(Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;)V

    .line 316
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/Version;->isMarshmallow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 319
    :cond_1
    iget-object v4, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v1, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_2

    const-string v0, "openGatt failed: connectGatt return null!"

    new-array v1, v3, [Ljava/lang/Object;

    .line 323
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_2
    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 415
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const-string v3, "readCharacteristic for %s: service = 0x%s, character = 0x%s"

    .line 414
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 422
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 431
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 432
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 436
    :cond_1
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "readCharacteristic failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 437
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 481
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const-string v3, "readDescriptor for %s: service = 0x%s, character = 0x%s, descriptor = 0x%s"

    .line 480
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 485
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 488
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 492
    :cond_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "descriptor not exist"

    new-array p2, v2, [Ljava/lang/Object;

    .line 494
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 498
    :cond_1
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 499
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 503
    :cond_2
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "readDescriptor failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 504
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public readRemoteRssi()Z
    .locals 4

    .line 685
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 687
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "readRemoteRssi for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    const-string v0, "ble gatt null"

    new-array v1, v3, [Ljava/lang/Object;

    .line 690
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 694
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "readRemoteRssi failed"

    new-array v1, v3, [Ljava/lang/Object;

    .line 695
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public refreshDeviceCache()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 395
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "refreshDeviceCache for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 399
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    const-string v0, "ble gatt null"

    new-array v1, v3, [Ljava/lang/Object;

    .line 400
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    .line 404
    :cond_0
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->refreshGattCache(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "refreshDeviceCache failed"

    new-array v1, v3, [Ljava/lang/Object;

    .line 405
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method public registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .locals 0

    .line 380
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 381
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mGattResponseListener:Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;

    return-void
.end method

.method public requestMtu(I)Z
    .locals 4

    .line 705
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 707
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "requestMtu for %s, mtu = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    const-string p1, "ble gatt null"

    new-array v0, v2, [Ljava/lang/Object;

    .line 710
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 714
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "requestMtu failed"

    new-array v0, v2, [Ljava/lang/Object;

    .line 715
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    return v3
.end method

.method public setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 5

    .line 634
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "setCharacteristicIndication for %s, service = %s, character = %s, enable = %b"

    .line 636
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 642
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 651
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 652
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 656
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "setCharacteristicIndication failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 657
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 661
    :cond_2
    sget-object p2, Lcom/inuker/bluetooth/library/Constants;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "getDescriptor for indicate null!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 664
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eqz p3, :cond_4

    .line 668
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    goto :goto_0

    :cond_4
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 670
    :goto_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p1, "setValue for indicate descriptor failed!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 671
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 675
    :cond_5
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "writeDescriptor for indicate failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 676
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method

.method public setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .locals 5

    .line 583
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 586
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "setCharacteristicNotification for %s, service = %s, character = %s, enable = %b"

    .line 585
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 591
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 600
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 601
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 605
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "setCharacteristicNotification failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 606
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 610
    :cond_2
    sget-object p2, Lcom/inuker/bluetooth/library/Constants;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "getDescriptor for notify null!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 613
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eqz p3, :cond_4

    .line 617
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    goto :goto_0

    :cond_4
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 619
    :goto_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p1, "setValue for notify descriptor failed!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 620
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 624
    :cond_5
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "writeDescriptor for notify failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 625
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 447
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "writeCharacteristic for %s: service = 0x%s, character = 0x%s, value = 0x%s"

    .line 446
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 454
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 463
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 464
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    sget-object p3, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 470
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "writeCharacteristic failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 471
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 549
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    invoke-static {p3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "writeCharacteristicWithNoRsp for %s: service = 0x%s, character = 0x%s, value = 0x%s"

    .line 548
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 556
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 565
    :cond_0
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_1

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 566
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    sget-object p3, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 571
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 573
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "writeCharacteristic failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 574
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 513
    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 514
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const/4 v3, 0x4

    invoke-static {p4}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->byteToString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "writeDescriptor for %s: service = 0x%s, character = 0x%s, descriptor = 0x%s, value = 0x%s"

    .line 513
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->checkRuntime()V

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->getCharacter(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "characteristic not exist!"

    new-array p2, v2, [Ljava/lang/Object;

    .line 521
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 525
    :cond_0
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "descriptor not exist"

    new-array p2, v2, [Ljava/lang/Object;

    .line 527
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    .line 531
    :cond_1
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    const-string p1, "ble gatt null"

    new-array p2, v2, [Ljava/lang/Object;

    .line 532
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    .line 536
    :cond_3
    sget-object p4, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_0
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 538
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/BleConnectWorker;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "writeDescriptor failed"

    new-array p2, v2, [Ljava/lang/Object;

    .line 539
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    return v2

    :cond_4
    return v1
.end method
