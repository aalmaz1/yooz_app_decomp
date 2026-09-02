.class public Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;
.super Ljava/lang/Object;
.source "BT625Client.java"


# static fields
.field public static instance:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;


# instance fields
.field private connectBtNumber:I

.field private currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mContentDisTip:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ER56qiPTS26mpGltnPRAdTEGhHA(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->lambda$bondedDevices$0(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bub9pXR-eV3K2VXtHdvgfQiVXlI(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->lambda$bondNoBind$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbCQo6Drt8cZanxwa16vGVTXrJw(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->lambda$restartConnect625bt$3(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;)Landroid/bluetooth/BluetoothDevice;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, "connect"

    .line 34
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mContentDisTip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBtNumber:I

    .line 214
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private bondNoBind(Ljava/lang/String;)V
    .registers 6

    .line 127
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda3;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;
    .registers 2

    .line 38
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    if-nez v0, :cond_17

    .line 39
    const-class v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    if-nez v1, :cond_12

    .line 41
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 45
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    return-object v0
.end method

.method private synthetic lambda$bondNoBind$2(Ljava/lang/String;)V
    .registers 5

    .line 128
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-boolean v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 129
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-boolean v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    if-eqz v1, :cond_f

    return-void

    .line 132
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aBT---ble connect status--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_3d

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aBT---\u53d1\u8d77\u7cfb\u7edf\u914d\u5bf9--requestConnectBt---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestConnectBt(Ljava/lang/String;)Z

    goto :goto_40

    .line 137
    :cond_3d
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->bondNoBind(Ljava/lang/String;)V

    :goto_40
    return-void
.end method

.method private synthetic lambda$bondedDevices$0(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 91
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->restartConnect625bt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic lambda$bondedNoBindDevices$1()V
    .registers 2

    .line 116
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 117
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_18

    const-string v0, "\u84dd\u7259\uff1aBT-\u517c\u5bb9BT\u914d\u5bf9\u4e0d\u4e0a \u505c\u7559\u754c\u9762\u5f97\u60c5\u51b5"

    .line 119
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    :cond_18
    return-void
.end method

.method private synthetic lambda$restartConnect625bt$3(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 7

    .line 145
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-boolean v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    if-eqz v0, :cond_9

    return-void

    .line 148
    :cond_9
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v0

    .line 149
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001a2dpIsConnect\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1aBT --config-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_7b

    .line 153
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-boolean v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5f

    if-eqz v1, :cond_57

    .line 156
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->bindDevice()Z

    goto :goto_87

    .line 158
    :cond_57
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    goto :goto_87

    .line 161
    :cond_5f
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBtNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBtNumber:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_73

    const-string v0, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001 - \u91cd\u65b0\u8fde\u63a5\uff1a"

    .line 163
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 165
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->restartConnect625bt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_87

    .line 167
    :cond_73
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    goto :goto_87

    :cond_7b
    const-string p1, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001 - \u5931\u8d25"

    .line 171
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    :goto_87
    return-void
.end method

.method static synthetic lambda$restartConnect625bt$4()V
    .registers 2

    .line 176
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 177
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_15

    .line 178
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public bondedDevices(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 12

    .line 54
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a\u8fde\u63a5\u5730\u5740-----macAddress--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a\u5df2\u914d\u5bf9\u5217\u8868-----bondedDevices--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_92

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_92

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a\u5df2\u914d\u5bf9 \u8be6\u60c5-----bondedDevices--device:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_4e

    .line 63
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4e

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v4

    sget-object v5, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    move v4, v2

    goto :goto_4e

    :cond_92
    move v4, v3

    .line 70
    :cond_93
    iput v3, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connectBtNumber:I

    if-eqz v4, :cond_121

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\uff1a-\u7cfb\u7edf\u5df2\u914d\u5bf9:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p2

    iget-boolean p2, p2, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 74
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a-bt-\u8fde\u63a5\u72b6\u6001-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-ne v0, v2, :cond_dd

    if-eqz p2, :cond_d5

    .line 78
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->bindDevice()Z

    goto :goto_136

    .line 80
    :cond_d5
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    goto :goto_136

    .line 83
    :cond_dd
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->isDeviceLock()Z

    move-result p2

    if-nez p2, :cond_f0

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p2

    iget p2, p2, Lcn/baos/watch/sdk/bluetooth/BleService;->mBleConnectNum:I

    const/4 v0, 0x2

    if-le p2, v0, :cond_f7

    .line 85
    :cond_f0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    .line 87
    :cond_f7
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->setManualConnectTime(J)V

    const-string p2, "\u84dd\u7259\uff1a-bt- \u624b\u52a8\u65ad\u5f00 BLE-"

    .line 88
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object p2

    invoke-interface {p2}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEManualDisConnected()V

    .line 90
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p2

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda4;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_136

    .line 96
    :cond_121
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object p1

    sget-object p3, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {p1, p3}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    const-string p1, "\u84dd\u7259\uff1a-BT-\u7cfb\u7edf\u672a\u914d\u5bf9"

    .line 97
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->bondedNoBindDevices(Ljava/lang/String;)V

    :goto_136
    return-void
.end method

.method public bondedNoBindDevices(Ljava/lang/String;)V
    .registers 5

    .line 105
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-boolean v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aBT-\u672a\u914d\u5bf9- ble \u8fde\u63a5\u72b6\u6001="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_40

    .line 108
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->setManualConnectTime(J)V

    const-string v0, "\u84dd\u7259\uff1a-bt- \u624b\u52a8\u65ad\u5f00 BLE-"

    .line 109
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEManualDisConnected()V

    .line 111
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    .line 112
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->bondNoBind(Ljava/lang/String;)V

    goto :goto_59

    .line 114
    :cond_40
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestConnectBt(Ljava/lang/String;)Z

    .line 115
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_59
    return-void
.end method

.method public btIsConnect()I
    .registers 7

    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    .line 188
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getConnectionState"

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 190
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_29

    if-ne v0, v1, :cond_27

    return v3

    :cond_27
    const/4 v1, 0x0

    goto :goto_2d

    :catch_29
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001 - \uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v1
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->bondedDevices(Landroid/content/Context;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public connectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const-string v0, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001 - \uff1aconnectBt"

    .line 208
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 210
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 211
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public isBondedDevices()Z
    .registers 7

    const-string v0, "\u84dd\u7259\uff1aBT --\u72b6\u6001--\u5df2\u914d\u5bf9 \u5386\u53f2---bondedDevices--"

    const-string v1, "\u84dd\u7259\uff1aBT --\u72b6\u6001-----macAddress--"

    const/4 v2, 0x0

    .line 246
    :try_start_5
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object v3

    .line 247
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v4

    iget-object v4, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_8f

    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8f

    .line 251
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u84dd\u7259\uff1aBT --\u72b6\u6001--\u5df2\u914d\u5bf9  \u5386\u53f2---info--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_4c

    .line 254
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_87} :catch_8b

    if-eqz v1, :cond_4c

    const/4 v2, 0x1

    goto :goto_4c

    :catch_8b
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    return v2
.end method

.method public restartConnect625bt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    const-string v0, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-start"

    .line 143
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
