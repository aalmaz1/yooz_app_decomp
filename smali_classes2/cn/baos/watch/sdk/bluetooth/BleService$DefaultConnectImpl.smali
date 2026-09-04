.class Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;
.super Landroid/content/BroadcastReceiver;
.source "BleService.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultConnectImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method public static synthetic $r8$lambda$Al0sm6JaAY8GPNipVvFq_oLmSPs(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->lambda$handleBleConnectEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$c4bbNFFwwrxTnnCegr8s34eG3MU(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->lambda$handleBleConnectEvent$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$sDHG5XNpBmBdfyCQ0jl2imrdIm8(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->lambda$handleBleConnectEvent$2()V

    return-void
.end method

.method public constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/content/Context;)V
    .locals 1

    .line 1159
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1160
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1161
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$handleBleConnectEvent$0()V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    return-void
.end method

.method private synthetic lambda$handleBleConnectEvent$1()V
    .locals 1

    .line 1106
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V

    return-void
.end method

.method private synthetic lambda$handleBleConnectEvent$2()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    return-void
.end method


# virtual methods
.method public handleBleConnectEvent(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;)V
    .locals 5

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1a------------handleBleConnectEvent----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1043
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BleService$5;->$SwitchMap$cn$baos$watch$sdk$bluetooth$HbBleConnectStatusCallback$BleConnectEvent:[I

    invoke-virtual {p2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    .line 1147
    :cond_0
    iget-boolean p1, p1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->txWritable:Z

    if-eqz p1, :cond_e

    .line 1148
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->onTxWritable()V

    goto/16 :goto_2

    .line 1144
    :cond_1
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onServicesDiscovered()V

    goto/16 :goto_2

    .line 1134
    :cond_2
    iget-boolean p1, p1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->mtuChanged:Z

    if-eqz p1, :cond_e

    const-string p1, "\u84dd\u7259\uff1a---MTU_CHANGE_RESULT--- auto"

    .line 1136
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object p1

    .line 1138
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\uff1a---MTU_CHANGE_RESULT--->>>currentStatus:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1139
    sget-object p2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne p1, p2, :cond_e

    .line 1140
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    sget-object p2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    goto/16 :goto_2

    .line 1128
    :cond_3
    iget-boolean p1, p1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->writeSucceed:Z

    if-eqz p1, :cond_e

    .line 1129
    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget p1, p1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {p1}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 1130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify(BleNativeStatusEnum.HB_BLE_WRITABLE)=;"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1045
    :cond_4
    iget-boolean p1, p1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;->connected:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    .line 1046
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iput-boolean v0, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    const-string p1, "\u84dd\u7259\uff1a------------\u8fde\u63a5\u6210\u529f----"

    .line 1047
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1048
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iput-boolean v0, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 1049
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object p1

    .line 1051
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->isBondedDevices()Z

    move-result v1

    .line 1052
    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->hasBleConnectError(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    const-string p2, "\u84dd\u7259\uff1a---startConnect-onBlePair - send -success"

    .line 1053
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1054
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-static {p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->-$$Nest$fgetiDeviceCallback(Lcn/baos/watch/sdk/bluetooth/BleService;)Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    move-result-object p2

    invoke-interface {p2}, Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;->onBlePair()V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_7

    .line 1057
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v1

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a---startConnect-isPair - success -> BT CONNECT:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eq v1, v0, :cond_6

    .line 1060
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    .line 1061
    iget-boolean v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-eqz v1, :cond_7

    .line 1062
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-static {p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->-$$Nest$fgetiDeviceCallback(Lcn/baos/watch/sdk/bluetooth/BleService;)Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    move-result-object p2

    invoke-interface {p2}, Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;->onBlePair()V

    goto :goto_0

    :cond_6
    const-string v0, "\u84dd\u7259\uff1a---startConnect-isPair - success -> BT CONNECT:\u5df2\u8fde\u63a5"

    .line 1066
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_7
    move v0, p2

    .line 1069
    :goto_0
    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->hasBleConnectError(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v0, :cond_8

    const-string p1, "\u84dd\u7259\uff1a---startConnect-\u6b63\u5e38\u6d41\u7a0b"

    .line 1070
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    sget-object p2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1072
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1074
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->stopScanOnly()V

    goto/16 :goto_2

    :cond_8
    const-string p1, "\u84dd\u7259\uff1a---startConnect-\u6b63\u5e38\u6d41\u7a0b->2"

    .line 1076
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_e

    const-string p1, "\u84dd\u7259\uff1a---startConnect-\u6b63\u5e38\u6d41\u7a0b->des"

    .line 1078
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1079
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->-$$Nest$fgetiDeviceCallback(Lcn/baos/watch/sdk/bluetooth/BleService;)Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;->onBlePair()V

    goto/16 :goto_2

    :cond_9
    const-string p1, "\u84dd\u7259\uff1a------------\u8fde\u63a5\u65ad\u5f00----"

    .line 1084
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSppTransLateData(Z)V

    .line 1086
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1088
    iget-boolean p1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez p1, :cond_c

    .line 1089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1090
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getManualConnectTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-gez p1, :cond_a

    const-string p1, "\u84dd\u7259\uff1a\u65ad\u5f00- \u5224\u65ad\u4e3a\u624b\u52a8\u65ad\u5f00\uff0c\u4f46\u662f\u7cfb\u7d71\u5df2\u914d\u5c0d \u93c8\u63a5\u4e00\u6b21"

    .line 1092
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->isBondedDevices()Z

    move-result p1

    .line 1094
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v1

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a\u65ad\u5f00- \u5224\u65ad\u4e3a\u624b\u52a8\u65ad\u5f00\uff0c\u4f46\u662f\u7cfb\u7d71\u5df2\u914d\u5c0d : isPair:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--- isBt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_d

    if-ne v1, v0, :cond_d

    .line 1097
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_a
    const-string p1, "\u84dd\u7259\uff1a\u65ad\u5f00- \u76f4\u63a5\u8fde\u63a5"

    .line 1102
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1103
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->-$$Nest$fgetisReConnect(Lcn/baos/watch/sdk/bluetooth/BleService;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1104
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1105
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda2;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1108
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-static {p1, p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->-$$Nest$fputisReConnect(Lcn/baos/watch/sdk/bluetooth/BleService;Z)V

    goto :goto_1

    .line 1110
    :cond_b
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    goto :goto_1

    .line 1114
    :cond_c
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    .line 1116
    :cond_d
    :goto_1
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda3;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1119
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iput-boolean p2, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    :cond_e
    :goto_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, 0x0

    .line 1171
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u84dd\u7259\uff1a\u84dd\u7259\u8bbe\u5907\u5df2\u6253\u5f00"

    .line 1174
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p1

    .line 1176
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-boolean p2, p2, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 1177
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "\u84dd\u7259\uff1a\u84dd\u7259\u8bbe\u5907\u5df2\u5173\u95ed"

    .line 1181
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1182
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iput-boolean v0, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 1183
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    .line 1184
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onGpsNotOpen()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onTxWritable()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    return-void
.end method
