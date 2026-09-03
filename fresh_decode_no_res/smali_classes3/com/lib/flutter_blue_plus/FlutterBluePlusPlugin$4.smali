.class Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "FlutterBluePlusPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;


# direct methods
.method constructor <init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private handleUnexpectedConnectionEvents(Landroid/bluetooth/BluetoothGatt;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2216
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmCurrentlyConnectingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAutoConnected(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2217
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "[unexpected connection] disconnecting now"

    invoke-static {p2, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2223
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmConnectedDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2230
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2235
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmCurrentlyConnectingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmConnectedDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    .line 2236
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAutoConnected(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    .line 2237
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2239
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "[unexpected connection] disconnect complete"

    invoke-static {p2, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2245
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 2508
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 5

    .line 2318
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2319
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onCharacteristicChanged:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2320
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2321
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->onCharacteristicReceived(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 2518
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 5

    if-nez p4, :cond_0

    .line 2329
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2330
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onCharacteristicRead:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2331
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2332
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->onCharacteristicReceived(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V

    return-void
.end method

.method public onCharacteristicReceived(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BI)V
    .locals 3

    .line 2285
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1800"

    if-ne v0, v1, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2A05"

    if-ne v0, v1, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v0

    .line 2290
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "OnServicesReset"

    invoke-static {v1, v2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2295
    :cond_0
    invoke-static {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 2298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2299
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, "remote_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "service_uuid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "characteristic_uuid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2302
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smbytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2303
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2304
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2305
    invoke-static {p4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2307
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    :cond_2
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnCharacteristicReceived"

    invoke-static {p1, p2, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    if-nez p3, :cond_0

    .line 2339
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2340
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onCharacteristicWrite:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2341
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2342
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2350
    invoke-static {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 2353
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 2354
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2355
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 2356
    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 2359
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2360
    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteChr(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteChr(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2361
    :cond_2
    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteChr(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "remote_id"

    .line 2365
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "service_uuid"

    .line 2366
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "characteristic_uuid"

    .line 2367
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2368
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 2369
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2370
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2371
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2373
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_4
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnCharacteristicWritten"

    invoke-static {p1, p2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    const-string v0, "  status: "

    const-string v1, "onConnectionStateChange:"

    .line 2140
    :try_start_0
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMethodCallMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$macquireMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/util/concurrent/Semaphore;)V

    .line 2142
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v3, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smconnectionStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2143
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smhciStatusString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2204
    :goto_0
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMethodCallMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 2153
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2156
    invoke-direct {p0, p1, p3, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->handleUnexpectedConnectionEvents(Landroid/bluetooth/BluetoothGatt;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 2163
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmConnectedDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmCurrentlyConnectingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMtu(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez p3, :cond_4

    .line 2176
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmConnectedDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2179
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmCurrentlyConnectingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2186
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAutoConnected(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2187
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "autoconnect is true. skipping gatt.close()"

    invoke-static {p1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    goto :goto_1

    .line 2191
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2196
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "remote_id"

    .line 2197
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connection_state"

    .line 2198
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmConnectionStateEnum(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "disconnect_reason_code"

    .line 2199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "disconnect_reason_string"

    .line 2200
    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smhciStatusString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p3, "OnConnectionStateChanged"

    invoke-static {p2, p3, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2204
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMethodCallMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMethodCallMutex(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2205
    throw p1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 2528
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I[B)V
    .locals 5

    if-nez p3, :cond_0

    .line 2383
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2384
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onDescriptorRead:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2385
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2386
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  desc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2387
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2390
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 2393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2394
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, "remote_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "service_uuid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "characteristic_uuid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "descriptor_uuid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2398
    invoke-static {p4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smbytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2399
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2400
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2401
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2403
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    :cond_2
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnDescriptorRead"

    invoke-static {p1, p2, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 7

    if-nez p3, :cond_0

    .line 2412
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2413
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onDescriptorWrite:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2414
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  chr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2415
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  desc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2416
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2419
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getPrimaryService(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 2422
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 2423
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2424
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2425
    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 2426
    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 2429
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2430
    iget-object v5, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v5}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteDesc(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteDesc(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2431
    :cond_2
    iget-object v5, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v5}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmWriteDesc(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "remote_id"

    .line 2435
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "service_uuid"

    .line 2436
    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "characteristic_uuid"

    .line 2437
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "descriptor_uuid"

    .line 2438
    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2439
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 2440
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2441
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2442
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2444
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->uuidStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "primary_service_uuid"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    :cond_4
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnDescriptorWritten"

    invoke-static {p1, p2, v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    if-nez p3, :cond_0

    .line 2480
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2481
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onMtuChanged:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2482
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mtu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2483
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 2488
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmMtu(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remote_id"

    .line 2492
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mtu"

    .line 2493
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2494
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2495
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2496
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnMtuChanged"

    invoke-static {p1, p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    if-nez p3, :cond_0

    .line 2461
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2462
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onReadRemoteRssi:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2463
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  rssi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2464
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2467
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2468
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "remote_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rssi"

    .line 2469
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2470
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2471
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2472
    invoke-static {p3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnReadRssi"

    invoke-static {p1, p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 2453
    sget-object p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2454
    :goto_0
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v1, "onReliableWriteCompleted:"

    invoke-static {v0, p1, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2455
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 7

    if-nez p2, :cond_0

    .line 2257
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    .line 2258
    :goto_0
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v2, "onServicesDiscovered:"

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2259
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2260
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 2264
    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothService(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2265
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 2266
    iget-object v5, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBluetoothService(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2271
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2272
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v2, "remote_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "services"

    .line 2273
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 2274
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 2275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_string"

    .line 2276
    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smgattErrorString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$4;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnDiscoveredServices"

    invoke-static {p1, p2, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
