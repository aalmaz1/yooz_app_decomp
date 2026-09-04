.class public Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;
.super Ljava/lang/Object;
.source "BT300Client.java"


# static fields
.field public static instance:Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;
    .locals 2

    .line 21
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;

    return-object v0
.end method


# virtual methods
.method public bondedDevices(Ljava/lang/String;)V
    .locals 8

    .line 40
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    invoke-static {p1}, Lcn/baos/watch/sdk/util/MacUtils;->bleMacToBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v2

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_BT_MAC:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v2

    .line 51
    :cond_1
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 52
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v4

    sget-object v6, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v4

    sget-object v6, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_CONNECT_BT_MAC:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    move v5, v4

    :cond_3
    if-eqz v4, :cond_4

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 66
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    .line 70
    :goto_1
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBtDialog()Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_DIALOG:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    :cond_5
    if-nez v5, :cond_6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BT300Client-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestConnectBt(Ljava/lang/String;)Z

    goto :goto_2

    .line 82
    :cond_6
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->bindDevice()Z

    :goto_2
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT300Client;->bondedDevices(Ljava/lang/String;)V

    return-void
.end method

.method public removeBtDevice(Ljava/lang/String;)V
    .locals 4

    .line 87
    invoke-static {p1}, Lcn/baos/watch/sdk/util/MacUtils;->bleMacToBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 90
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "bt unbind failed."

    .line 93
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "bt---removeBtDevice--Exception"

    .line 97
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
