.class public Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;
.super Ljava/lang/Object;
.source "BleUtils.java"


# instance fields
.field bondedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private isScan:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mContentDisTip:Ljava/lang/String;

.field private number:I


# direct methods
.method public static synthetic $r8$lambda$RlDs9Ol92ZYzq_ciGnUPA67SvmY(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->lambda$startConectb$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disconnect"

    .line 29
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mContentDisTip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->number:I

    .line 34
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isScan:Z

    .line 171
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 37
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 38
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->bondedDevices:Ljava/util/List;

    .line 39
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->number:I

    return-void
.end method

.method public static getCurrentMac()Ljava/lang/String;
    .locals 3

    .line 212
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 214
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getPhoneBrand()Ljava/lang/String;
    .locals 2

    .line 265
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static isHuaWei()Z
    .locals 2

    .line 274
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "huawei"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "honor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$remove$1(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 105
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "unbind failed."

    .line 108
    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "---requestRemoveBt--Exception"

    .line 112
    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$startConectb$0(Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isScan:Z

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->startConnect(Ljava/lang/String;Z)Z

    return-void
.end method

.method private startConnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindLast(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->updateCurrentConfig(Ljava/lang/String;Z)Z

    .line 51
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfig()V

    .line 52
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->cleaSessionAsyncDelayJob()V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isSystemBonded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    iget-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isScan:Z

    invoke-virtual {p1, p2, v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->startConnect(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    iget-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isScan:Z

    invoke-virtual {p1, p2, v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->startConnect(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEStartScan()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->removeSystem(Landroid/content/Context;Ljava/lang/String;)Z

    .line 65
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->startConectb(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delRemove(Ljava/lang/String;)V
    .locals 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 120
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unbind failed."

    .line 123
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disBtConnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--config--move--mac="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 137
    new-instance p2, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disConnectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disConnectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "jili---bt-----BT-\u65ad\u5f00\u8fde\u63a5"

    .line 164
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->currentBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 168
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disconnectProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x2

    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method public isHuabaoDevice(Landroid/bluetooth/le/ScanResult;)Z
    .locals 10

    const-string v0, ""

    const-string v1, "isHuabaoDevice-huabaoCompany1="

    .line 223
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    array-length v5, p1

    const/16 v6, 0xf

    if-le v5, v6, :cond_1

    .line 230
    :try_start_0
    invoke-static {p1}, Lcn/baos/watch/sdk/util/DeviceIdUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const-string v5, ":"

    .line 231
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v7, v6, -0x4

    add-int/lit8 v8, v6, -0x2

    .line 235
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-huabaoCompany2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "isHuabaoDevice-huabao="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-mac:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "macName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const-string p1, "16"

    .line 250
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "18"

    .line 251
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v3
.end method

.method public isSystemBonded(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----start--isSystemBonded--"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->bondedDevices:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->bondedDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----start--isSystemBonded-device-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----end--isSystemBonded--"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "-----end--isSystemBonded--\u672a\u914d\u5bf9"

    .line 97
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public realRemove(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "-----start--realRemove--"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    :try_start_0
    const-class p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "removeBond"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 147
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unbind failed realRemove."

    .line 149
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "---realRemove--Exception"

    .line 153
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public remove(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----start--remove--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSystem(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isSystemBonded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->remove(Landroid/bluetooth/BluetoothDevice;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public startConectb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startConnect(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    iput-boolean p3, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isScan:Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->startConnect(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
