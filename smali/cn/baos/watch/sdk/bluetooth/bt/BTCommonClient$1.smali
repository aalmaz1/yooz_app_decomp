.class Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;
.super Ljava/lang/Object;
.source "BTCommonClient.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->initBindBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$bondStatus$0()V
    .registers 1

    .line 82
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    return-void
.end method

.method static synthetic lambda$bondStatus$1()V
    .registers 1

    .line 128
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    return-void
.end method

.method static synthetic lambda$bondStatus$2()V
    .registers 1

    .line 131
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    return-void
.end method


# virtual methods
.method public bondStatus(Landroid/bluetooth/BluetoothDevice;)V
    .registers 22

    move-object/from16 v0, p0

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    if-eqz p1, :cond_245

    if-eqz v1, :cond_245

    .line 63
    iget-object v2, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_245

    .line 65
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a\u914d\u5bf9\u72b6\u6001 -: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (10=\u53d6\u6d88\uff0c11=\u5f39\u51fa\uff0c12=\u6210\u529f)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 66
    iget-object v2, v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->-$$Nest$fgetactiveConfig(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v2}, Lcn/baos/watch/sdk/util/MacUtils;->bleMacToBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_245

    .line 68
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const-wide/16 v3, 0x3e8

    packed-switch v2, :pswitch_data_246

    goto/16 :goto_245

    .line 125
    :pswitch_6f
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcn/baos/watch/sdk/bluetooth/BleService;->setPairSuccessTime(J)V

    .line 126
    iget-object v1, v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->-$$Nest$fgetactiveConfig(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    if-eqz v1, :cond_a3

    .line 127
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v1, v2}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    .line 128
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_245

    .line 130
    :cond_a3
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v1, v2}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    .line 131
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_245

    .line 122
    :pswitch_c2
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/baos/watch/sdk/bluetooth/BleService;->setPairPopTime(J)V

    goto/16 :goto_245

    .line 70
    :pswitch_cf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 71
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->getPairSuccessTime()J

    move-result-wide v7

    .line 72
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->getPairPopTime()J

    move-result-wide v9

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->getPairConnectTime()J

    move-result-wide v11

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v13

    invoke-virtual {v13}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 76
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u84dd\u7259\uff1a\u914d\u5bf9\u72b6\u6001 -: \u4e0a\u6b21\u914d\u5bf9\u65f6\u95f4\uff1a"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "-\u5f53\u524d\u65f6\u95f4\uff1a"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v3, "  time\u914d\u5bf9 "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    sub-long v0, v5, v7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "  time \u5f39\u7a97 "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v16, v7

    sub-long v7, v5, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "  time \u8fde\u63a5 "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v11, v5, v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const-wide/16 v18, 0x1388

    cmp-long v0, v0, v18

    if-gez v0, :cond_17d

    .line 79
    iget-boolean v0, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v0, :cond_17d

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u68c0\u6d4b\u4e3a\u5f02\u5e38\u72b6\u6001\uff1a\u91cd\u65b0\u53d1\u8d77 \u6d41\u7a0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_179
    move-object/from16 v0, p0

    goto/16 :goto_245

    :cond_17d
    cmp-long v0, v7, v18

    const-string v1, "\u68c0\u6d4b\u4e3a\u5f02\u5e38\u72b6\u6001\uff1a\u91cd\u65b0\u53d1\u8d77 \u8fde\u63a5"

    if-gez v0, :cond_1a6

    .line 86
    iget-boolean v0, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v0, :cond_1a6

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u914d\u5bf9\u72b6\u6001 -: \u4e0a\u6b21\u5f39\u7a97\u65f6\u95f4\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_179

    :cond_1a6
    cmp-long v0, v11, v18

    if-gez v0, :cond_1cd

    .line 92
    iget-boolean v0, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v0, :cond_1cd

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u914d\u5bf9\u72b6\u6001 -: \u4e0a\u6b21BT\u8fde\u63a5\u65f6\u95f4\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_179

    :cond_1cd
    move-object/from16 v0, p0

    .line 103
    iget-object v1, v0, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->-$$Nest$fgetactiveConfig(Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;)Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_213

    .line 104
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iput-boolean v2, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 105
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onConnectFailed()V

    .line 106
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v1

    invoke-interface {v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEDisConnected()V

    .line 107
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iput-boolean v2, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 108
    iget-boolean v1, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v1, :cond_205

    .line 109
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->cleaSessionAsyncDelayJob()V

    .line 110
    :cond_205
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v1, v2}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    goto :goto_245

    .line 112
    :cond_213
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onConnectFailed()V

    .line 113
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v1

    invoke-interface {v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEDisConnected()V

    .line 114
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iput-boolean v2, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 115
    iget-boolean v1, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v1, :cond_238

    .line 116
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->cleaSessionAsyncDelayJob()V

    .line 117
    :cond_238
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    move-result-object v1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-interface {v1, v2}, Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;->onBtStatusChange(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V

    :cond_245
    :goto_245
    return-void

    :pswitch_data_246
    .packed-switch 0xa
        :pswitch_cf
        :pswitch_c2
        :pswitch_6f
    .end packed-switch
.end method

.method public connectStatus(Landroid/bluetooth/BluetoothDevice;)V
    .registers 5

    .line 140
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz p1, :cond_5d

    if-eqz v0, :cond_5d

    .line 141
    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v1, :cond_19

    goto :goto_5d

    .line 143
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u8fde\u63a5\u72b6\u6001 --"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_52

    goto :goto_5d

    .line 147
    :cond_52
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->setPairConnectTime(J)V

    :cond_5d
    :goto_5d
    return-void
.end method
