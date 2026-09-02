.class public Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;
.super Ljava/lang/Object;
.source "HbBtClientManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;
.implements Lcn/baos/watch/sdk/interfac/ble/IConnectScanResultCallback;
.implements Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$IBleStatusAction;
    }
.end annotation


# static fields
.field private static instance:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;


# instance fields
.field private actions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;",
            "Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$IBleStatusAction;",
            ">;"
        }
    .end annotation
.end field

.field private activeClient:Lcn/baos/watch/sdk/interfac/ble/IBleClient;

.field private activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

.field private btCurrentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field private btOldStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field private clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/interfac/ble/IBleClient;",
            ">;"
        }
    .end annotation
.end field

.field private currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field private isScan:Z

.field public mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

.field private mContext:Landroid/content/Context;

.field private oldStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->clients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeClient:Lcn/baos/watch/sdk/interfac/ble/IBleClient;

    .line 34
    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->isScan:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->actions:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;
    .registers 2

    .line 81
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->instance:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    if-nez v0, :cond_17

    .line 82
    const-class v0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    monitor-enter v0

    .line 83
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->instance:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    if-nez v1, :cond_12

    .line 84
    new-instance v1, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->instance:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    .line 86
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 88
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->instance:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    return-object v0
.end method

.method public getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .registers 2

    .line 92
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-object v0
.end method

.method public handleBleStatusBleUnbind()V
    .registers 3

    .line 127
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->deleteCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 137
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->initData(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->loadConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 140
    invoke-virtual {p0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->initHb()V

    const-string v0, "HbBtClientManager \u521d\u59cb\u5316 init"

    .line 141
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusHandler:Landroid/bluetooth/BluetoothGattCallback;

    if-nez v0, :cond_2a

    .line 143
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->init(Landroid/content/Context;)V

    .line 145
    :cond_2a
    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 146
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->registerBleStatusCallback(Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;)V

    .line 147
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->registerBlePairCallback(Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;)V

    .line 149
    invoke-virtual {p0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->initSpp()V

    return-void
.end method

.method public initHb()V
    .registers 5

    const-string v0, "bleClientList"

    const-string v1, "HbBtClientManager \u521d\u59cb\u5316"

    .line 153
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 156
    :try_start_7
    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 157
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_79

    .line 158
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_79

    .line 159
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.app.admin.DevicePolicyManager"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/interfac/ble/IBleClient;

    .line 162
    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v1, p0}, Lcn/baos/watch/sdk/interfac/ble/IBleClient;->registerBleStatusChangeHandler(Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;)V

    goto :goto_35

    .line 169
    :cond_5a
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5e} :catch_5f

    goto :goto_79

    :catch_5f
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initHb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_79
    :goto_79
    return-void
.end method

.method public initSpp()V
    .registers 4

    .line 201
    :try_start_0
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$1;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$1;-><init>(Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;)V

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;-><init>(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    .line 241
    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->enableBluetooth()V

    .line 243
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->setStopString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->onCreate()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public isScan()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->isScan:Z

    return v0
.end method

.method public onBleDeviceDiscoverdAndAction(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)V
    .registers 4

    .line 108
    iget-object v0, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    if-ne v0, v1, :cond_3b

    .line 109
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    if-nez v0, :cond_d

    .line 110
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    goto :goto_3b

    .line 112
    :cond_d
    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    .line 115
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->maxBleMtuSize:I

    iput v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->maxBleMtuSize:I

    .line 116
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    .line 117
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    .line 118
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    .line 119
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object p1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    iput-object p1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onBlePair()V
    .registers 4

    .line 61
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    if-eqz v0, :cond_2d

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 62
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    const-string v1, "W200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    goto :goto_2d

    .line 65
    :cond_22
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->initBtClient(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V
    .registers 4

    .line 101
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->oldStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBleStatusChange:--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->currentStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-void
.end method

.method public setScan(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->isScan:Z

    return-void
.end method

.method public startConnect(Ljava/lang/String;Z)Z
    .registers 5

    .line 179
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-direct {v0}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 180
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    .line 181
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iput-object p1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iput-boolean p2, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isScan:Z

    .line 183
    iput-boolean p2, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->isScan:Z

    const-string p1, "--hb-startConnect"

    .line 184
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    move-result p1

    return p1
.end method

.method public updateConnectConfig()V
    .registers 2

    .line 189
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->loadConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    return-void
.end method

.method public updateConnectConfigFalse()V
    .registers 3

    .line 193
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->loadConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    :cond_f
    return-void
.end method
