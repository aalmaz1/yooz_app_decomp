.class public Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "HbBleConnectStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;,
        Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;,
        Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;
    }
.end annotation


# instance fields
.field public connected:Z

.field private final mDataReceiver:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;

.field private final mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

.field public mtuChanged:Z

.field public txWritable:Z

.field public writeSucceed:Z


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mDataReceiver:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;

    .line 40
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 94
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/util/HexUtil;->formatHexString([BZ)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-onCharacteristicChanged--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u6d4b\u8bd5\u65b0\u7248-\u539f\u59cb\u6570\u636e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->DATA_ARRIVED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {p1, p0, v0}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    .line 98
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mDataReceiver:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;->receiveData([B)Z

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    if-nez p3, :cond_10

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->writeSucceed:Z

    .line 106
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object p2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->WRITE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {p1, p0, p2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    goto :goto_25

    :cond_10
    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->writeSucceed:Z

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u901a\u9053\u5199\u6570\u636e write fail:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259onConnectionStateChange status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_23

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->connected:Z

    goto :goto_28

    :cond_23
    if-nez p3, :cond_28

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->connected:Z

    .line 34
    :cond_28
    :goto_28
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object v1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->CONNECT_STATE_CHANGE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {v0, p0, v1}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    const-string p1, "onDescriptorWrite---"

    .line 70
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p3, :cond_12

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->txWritable:Z

    .line 73
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object p2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->TX_WRITABLE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {p1, p0, p2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    goto :goto_17

    :cond_12
    const-string p1, "\u84dd\u7259\u76d1\u542c\u6210\u529f\uff0c\u53ef\u5199\u6570\u636e,\u901a\u9053\u5173\u95ed--\u91cd\u542f\u670d\u52a1\u8bd5\u8bd5:"

    .line 76
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mtuChanged:Z

    .line 83
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object p2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->MTU_CHANGE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {p1, p0, p2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 6

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-onServicesDiscovered- status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p2, :cond_7e

    .line 47
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object p2

    .line 48
    iget-object v0, p2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259characteristic.getUuid():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mEventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

    sget-object v1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->SERVICE_DISCOVERED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-interface {v0, p0, v1}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;->handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V

    goto :goto_2c

    .line 57
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259can\'t find service:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    goto :goto_8a

    :cond_7e
    const-string p1, "\u84dd\u7259ble service discovery failed"

    .line 61
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    :cond_8a
    :goto_8a
    return-void
.end method
