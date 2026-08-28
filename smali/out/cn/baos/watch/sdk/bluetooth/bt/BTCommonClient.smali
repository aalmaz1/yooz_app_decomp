.class public Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;
.super Ljava/lang/Object;
.source "BTCommonClient.java"


# static fields
.field public static instance:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;


# instance fields
.field private activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetactiveConfig(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;
    .registers 2

    .line 22
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->instance:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    return-object v0
.end method


# virtual methods
.method public initBindBluetooth()V
    .registers 3

    .line 59
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->init(Landroid/content/Context;)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;-><init>(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->bondCallBack(Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->enableLog(Z)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    return-void
.end method

.method public initBtClient(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 35
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->initBindBluetooth()V

    .line 36
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->requestPairDevice()V

    return-void
.end method

.method public requestPairBtDevice()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    if-eqz v0, :cond_12

    .line 51
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestConnectBt(Ljava/lang/String;)Z

    goto :goto_1d

    .line 54
    :cond_12
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestConnectBt(Ljava/lang/String;)Z

    :goto_1d
    return-void
.end method

.method public requestPairDevice()V
    .registers 4

    const-string v0, "\u84dd\u7259\uff1arequestPairDevice"

    .line 40
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    if-eqz v0, :cond_19

    .line 42
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connect(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 45
    :cond_19
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->activeConfig:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connect(Landroid/content/Context;Ljava/lang/String;)V

    :goto_26
    return-void
.end method
