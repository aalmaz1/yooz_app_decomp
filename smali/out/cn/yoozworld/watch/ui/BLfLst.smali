.class public Lcn/yoozworld/watch/ui/BLfLst;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/yoozworld/watch/ui/HbBst$BoostLifecycleListener;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field public static bleHisStatus:I = 0x0

.field private static instance:Lcn/yoozworld/watch/ui/BLfLst; = null

.field public static isAutoDisconnect:Z = false

.field public static isBleConnect:Z = true

.field public static isBleReConnect:Z = false

.field public static mPhoneGet:Z = true


# instance fields
.field private addNum:I

.field private hasLogcatThreadOpen:Z

.field private jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

.field private mActivity:Landroid/app/Activity;

.field public mBindCode:I

.field private mContext:Landroid/content/Context;

.field mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

.field private mMainHandler:Landroid/os/Handler;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field progressTest:I


# direct methods
.method public static synthetic $r8$lambda$4fRTKA3w9P7ELd3DMRLh0yNChI0(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$7(Ljava/util/List;)V

    return-void
.end method



.method public static synthetic $r8$lambda$9zoDZpREyKgH9EHwsMe8PSZ92bw(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$12(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$ASGHUdM4vAygI4H6BVCI1-ulGn0(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$16(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    return-void
.end method



.method public static synthetic $r8$lambda$BB_OdzHFjBmqJHNNXBkvyya_8fs(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$22([B)V

    return-void
.end method



.method public static synthetic $r8$lambda$BNDDo6M_6be7vie-Lw7zUjjP9yw(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$9(Ljava/util/List;)V

    return-void
.end method



.method public static synthetic $r8$lambda$BjauoB-XZiYRzOt5teTBWmnDv3k(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$2(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$CkwA6iz_KVVfyazc2GXtvzIflu4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$1(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$OTeHYRmEM3M6oo-GZnNN6K-wZW4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$11(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$O_E5P86H4jfPwWz12K61oAfMcd8(Lcn/yoozworld/watch/ui/BLfLst;Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V

    return-void
.end method



.method public static synthetic $r8$lambda$PoFc-dHI_mz10q3N50hOiOuvrTo(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$14(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$QVaDdH2Vf4ymSb2iE31n_4z5KhA(Lcn/yoozworld/watch/ui/BLfLst;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$25(Z)V

    return-void
.end method



.method public static synthetic $r8$lambda$S2glxUw3wzcPeB4Lv14bBN9tnSA(Lcn/yoozworld/watch/ui/BLfLst;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$26(Z)V

    return-void
.end method



.method public static synthetic $r8$lambda$T7zsLGSUgv5EQ1iC63XvhlFbLDU(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$17(Lcn/baos/watch/w100/messages/Config_items;)V

    return-void
.end method



.method public static synthetic $r8$lambda$V5yjPY_0udxTxxhcVcYlSKz5Fdg(Lcn/yoozworld/watch/ui/BLfLst;)V
    .registers 1

    invoke-direct {p0}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$20()V

    return-void
.end method



.method public static synthetic $r8$lambda$YYUDWaEDRbXA_xvjMQt3LO-B-q0(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$23([B)V

    return-void
.end method



.method public static synthetic $r8$lambda$g7ra5vRcl8dCYB-Mzds7semsw1Y(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$18(Lcn/baos/watch/w100/messages/Config_items;)V

    return-void
.end method



.method public static synthetic $r8$lambda$ozWdU8bslxn2K1nsGmqYjzzie0g(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$21([B)V

    return-void
.end method



.method public static synthetic $r8$lambda$r_mN_tSfua9KgqW64i7AWq1Jj-U(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$13(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method



.method public static synthetic $r8$lambda$sl2ANHGbATelWzjXhr-DEk16yjk(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$6(Ljava/util/List;)V

    return-void
.end method



.method public static synthetic $r8$lambda$vpqkUdG8Rwn93c9j_yYoKnzBDq4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$15(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    return-void
.end method



.method public static synthetic $r8$lambda$wU_UfqP7QiXNWT2SXaRFxoLoJQQ(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$24([B)V

    return-void
.end method



.method public static synthetic $r8$lambda$yXpEP85XaNvyeyEfJ879FhBW8PE(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$8(Ljava/util/List;)V

    return-void
.end method



.method static bridge synthetic -$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;
    .registers 1

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method



.method public constructor <init>()V
    .registers 3

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->progressTest:I

    const/16 v1, 0xa

    .line 191
    iput v1, p0, Lcn/yoozworld/watch/ui/BLfLst;->addNum:I

    .line 192
    iput-boolean v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->hasLogcatThreadOpen:Z

    const/16 v0, 0x3e8

    .line 202
    iput v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mBindCode:I

    return-void
.end method



.method private createMethodChannel(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/common/MethodChannel;
    .registers 5

    const-string v0, "BoostLifecycleListener createMethodChannel"

    .line 249
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "com.baos.sdk/channel"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 253
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    const-string v0, "BoostLifecycleListener setMethodCallHandler"

    .line 254
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 255
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 256
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "com.baos.sdk/messages"

    sget-object v2, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    .line 260
    new-instance p1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 264
    iget-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object p1
.end method

.method public static getInstance()Lcn/yoozworld/watch/ui/BLfLst;
    .registers 2

    .line 224
    sget-object v0, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    if-nez v0, :cond_17

    .line 225
    const-class v0, Lcn/yoozworld/watch/ui/BLfLst;

    monitor-enter v0

    .line 226
    :try_start_7
    sget-object v1, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    if-nez v1, :cond_12

    .line 227
    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/BLfLst;-><init>()V

    sput-object v1, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    .line 229
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 231
    :cond_17
    :goto_17
    sget-object v0, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    return-object v0
.end method

.method static synthetic lambda$createMethodChannel$0(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 4

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "og.Received message ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p0, "Reply from Android"

    .line 262
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$1(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 10

    move-object v7, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [HW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnOilListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;

    if-eqz v0, :cond_oil_done

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Diagnostics Active]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    :cond_oil_done
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v1, "DEVICE_CONFIG_WATCH"

    invoke-static {v0, v1, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEVICE_INFO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string v0, "deviceInfo"

    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method





.method static synthetic lambda$switchFlutterData$10()V
    .registers 3

    .line 1443
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$11(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 6

    .line 1508
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1509
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v1, "DEVICE_CONFIG_WATCH"

    invoke-static {v0, v1, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1512
    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEVICE_INFO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u4fe1\u606f,\u53d1\u9001\u7ed9\u53d1\u9001\u7ed9flutter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$12(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 4

    .line 1507
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda11;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$13(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 4

    .line 1523
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u8dcc\u5012\u68c0\u6d4b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$14(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 4

    .line 1522
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$15(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .registers 4

    .line 1533
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u7535\u91cf\u53d1\u9001\u7ed9flutter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "deviceBattery"

    .line 1536
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$16(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .registers 4

    .line 1532
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$17(Lcn/baos/watch/w100/messages/Config_items;)V
    .registers 4

    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u6cb9\u91cf\u53d1\u9001\u7ed9flutter:"

    .line 1545
    :try_start_2
    iget-object p1, p1, Lcn/baos/watch/w100/messages/Config_items;->datas:[I

    const/16 v1, 0x86

    aget p1, p1, v1

    .line 1546
    new-instance v1, Lcn/yoozworld/watch/utils/CigaretteLevelBean;

    invoke-direct {v1}, Lcn/yoozworld/watch/utils/CigaretteLevelBean;-><init>()V

    .line 1547
    iput p1, v1, Lcn/yoozworld/watch/utils/CigaretteLevelBean;->cigaretteLevel:I

    .line 1548
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "cigaretteLevel"

    .line 1551
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 1553
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return-void
.end method



.method private synthetic lambda$switchFlutterData$18(Lcn/baos/watch/w100/messages/Config_items;)V
    .registers 4

    .line 1543
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda23;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method static synthetic lambda$switchFlutterData$19(Lcn/baos/watch/sdk/database/gps/GpslocEntity;Lcn/baos/watch/sdk/database/gps/GpslocEntity;)I
    .registers 4

    .line 1793
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    iget-wide p0, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    if-gez p0, :cond_11

    const/4 p0, -0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$switchFlutterData$2(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 4

    .line 590
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda26;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$20()V
    .registers 3

    const-string v0, "getWeather"

    const/4 v1, 0x0

    .line 1934
    invoke-virtual {p0, v0, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$21([B)V
    .registers 3

    const-string v0, "collectWatchLoggerRequest"

    .line 1953
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$22([B)V
    .registers 3

    const-string v0, "collectWatchLoggerRequest"

    .line 1955
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$23([B)V
    .registers 3

    const-string v0, "syncMessageRequest"

    .line 1961
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$24([B)V
    .registers 3

    const-string v0, "syncMessageRequest"

    .line 1963
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$25(Z)V
    .registers 4

    .line 2051
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$11;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$11;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$26(Z)V
    .registers 4

    .line 2065
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$13;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$13;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method static synthetic lambda$switchFlutterData$27(Ljava/util/ArrayList;)V
    .registers 3

    .line 2098
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 2099
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getPhoneContacts"

    .line 2098
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method static synthetic lambda$switchFlutterData$28(Lcn/baos/watch/sdk/contact/ContactHelper;)V
    .registers 6

    .line 2087
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2090
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----------\u8054\u7cfb\u5f00\u59cb\u65f6\u95f4-------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p0}, Lcn/baos/watch/sdk/contact/ContactHelper;->queryContactList()Ljava/util/ArrayList;

    move-result-object p0

    .line 2092
    invoke-static {}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->dlt()V

    .line 2093
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "----------\u8054\u7cfb\u7ed3\u675f\u65f6\u95f4-------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----------\u8054\u7cfb\u4eba\u957f\u5ea6-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 2095
    invoke-static {}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->saveContactsToDb(Ljava/util/ArrayList;)V

    .line 2097
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda21;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    .line 2100
    sput-boolean p0, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    .line 2101
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method



.method static synthetic lambda$switchFlutterData$3(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .registers 3

    .line 703
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .registers 5

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5e94\u7528\u5e02\u573a->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda27;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method static synthetic lambda$switchFlutterData$5(Lcn/baos/watch/w100/messages/Action_sync;)V
    .registers 3

    .line 1109
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1110
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "actionSync"

    .line 1109
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$6(Ljava/util/List;)V
    .registers 3

    .line 1310
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1311
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getContactInfo"

    .line 1310
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$7(Ljava/util/List;)V
    .registers 4

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u901a\u8baf\u5f55-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 1307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x0

    .line 1308
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1310
    :cond_27
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda25;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method



.method private synthetic lambda$switchFlutterData$8(Ljava/util/List;)V
    .registers 3

    .line 1346
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1347
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getWorldTime"

    .line 1346
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method



.method private synthetic lambda$switchFlutterData$9(Ljava/util/List;)V
    .registers 9

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u4e16\u754c\u65f6\u95f4-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/WorldUtils;->getWorldList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_62

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_62

    .line 1337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    .line 1338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    .line 1339
    iget-object v6, v3, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityCn:Ljava/lang/String;

    iget-object v5, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1340
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1345
    :cond_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1346
    iget-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, v2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda28;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method




# virtual methods
.method public beforeCreateEngine()V
    .registers 1

    return-void
.end method



.method public getJsonMessageChannel()Lio/flutter/plugin/common/BasicMessageChannel;
    .registers 2

    .line 216
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-object v0
.end method

.method public getMethodChannel()Lio/flutter/plugin/common/MethodChannel;
    .registers 2

    .line 208
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object v0
.end method

.method public invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    .line 287
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    iget-object v0, v0, Lcn/yoozworld/watch/ui/HomeActivity;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_2a

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316methodChannel"

    .line 289
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 304
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_36
    return-void
.end method



.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;)V
    .registers 4

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_1c

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 313
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_1c
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "bleStatus"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-eq p2, v0, :cond_e

    .line 371
    sput p2, Lcn/yoozworld/watch/ui/BLfLst;->bleHisStatus:I

    .line 373
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_34

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 375
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"method\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"data\":{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p3, "bleStatus"

    .line 389
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    const/16 p3, 0xa

    if-eq p2, p3, :cond_e

    .line 390
    sput p2, Lcn/yoozworld/watch/ui/BLfLst;->bleHisStatus:I

    .line 392
    :cond_e
    iget-object p3, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez p3, :cond_18

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 393
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_18
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "{\"method\":\""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\",\"data\":{\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_26

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 322
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"method\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"data\":{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 328
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSONData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_26

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 359
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"method\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"data\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 366
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSONRes(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_26

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 335
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"method\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"data\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 340
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 341
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez v0, :cond_26

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 347
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"method\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"data\":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 353
    iget-object p2, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method



.method public onEngineCreated()V
    .registers 3

    .line 274
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcn/yoozworld/watch/ui/BLfLst;->createMethodChannel(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method



.method public onEngineDestroy()V
    .registers 1

    return-void
.end method



.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMethodCall:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method



.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 235
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BoostLifecycleListener \u8fdb\u7a0b "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Thread: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 238
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    return-void
.end method



.method public setJsonMessageChannel(Lio/flutter/plugin/common/BasicMessageChannel;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method



.method public setMainActivity(Landroid/app/Activity;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    return-void
.end method



.method public setMethodChannel(Lio/flutter/plugin/common/MethodChannel;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method



.method public switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--MethodCall--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 512
    iget-object v3, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v7, "setRemindToWatch"

    const-string v10, "setFactoryTestModeOpenOrClose"

    const-string v11, "setOnlineTestModeOpenOrClose"

    const-string v12, "setAutoOtaModeOpenOrClose"

    const/4 v15, 0x1

    .line 815
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v17, -0x1

    sparse-switch v5, :sswitch_data_2a42

    goto/16 :goto_9b0

    :sswitch_37
    const-string v5, "requestLocationPermissions"

    .line 512
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_9b0

    :cond_41
    const/16 v17, 0xae

    goto/16 :goto_9b0

    :sswitch_45
    const-string v5, "packageAlbumDial"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_9b0

    :cond_4f
    const/16 v17, 0xad

    goto/16 :goto_9b0

    :sswitch_53
    const-string v5, "startDirectScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto/16 :goto_9b0

    :cond_5d
    const/16 v17, 0xac

    goto/16 :goto_9b0

    :sswitch_61
    const-string v5, "translatePackage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    goto/16 :goto_9b0

    :cond_6b
    const/16 v17, 0xab

    goto/16 :goto_9b0

    :sswitch_6f
    const-string v5, "sendGPSBaseToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto/16 :goto_9b0

    :cond_79
    const/16 v17, 0xaa

    goto/16 :goto_9b0

    :sswitch_7d
    const-string v5, "logprint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_9b0

    :cond_87
    const/16 v17, 0xa9

    goto/16 :goto_9b0

    :sswitch_8b
    const-string v5, "bleParametersSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto/16 :goto_9b0

    :cond_95
    const/16 v17, 0xa8

    goto/16 :goto_9b0

    :sswitch_99
    const-string v5, "updateDeviceResource"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    goto/16 :goto_9b0

    :cond_a3
    const/16 v17, 0xa7

    goto/16 :goto_9b0

    :sswitch_a7
    const-string v5, "changeAlbumImageForWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    goto/16 :goto_9b0

    :cond_b1
    const/16 v17, 0xa6

    goto/16 :goto_9b0

    :sswitch_b5
    const-string v5, "initSdk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    goto/16 :goto_9b0

    :cond_bf
    const/16 v17, 0xa5

    goto/16 :goto_9b0

    :sswitch_c3
    const-string v5, "reConnectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cd

    goto/16 :goto_9b0

    :cond_cd
    const/16 v17, 0xa4

    goto/16 :goto_9b0

    :sswitch_d1
    const-string v5, "requestXiaoMiCode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    goto/16 :goto_9b0

    :cond_db
    const/16 v17, 0xa3

    goto/16 :goto_9b0

    :sswitch_df
    const-string v5, "setContactInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    goto/16 :goto_9b0

    :cond_e9
    const/16 v17, 0xa2

    goto/16 :goto_9b0

    :sswitch_ed
    const-string v5, "actionSync"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    goto/16 :goto_9b0

    :cond_f7
    const/16 v17, 0xa1

    goto/16 :goto_9b0

    :sswitch_fb
    const-string v5, "sleepStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_105

    goto/16 :goto_9b0

    :cond_105
    const/16 v17, 0xa0

    goto/16 :goto_9b0

    :sswitch_109
    const-string v5, "responseMsg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_113

    goto/16 :goto_9b0

    :cond_113
    const/16 v17, 0x9f

    goto/16 :goto_9b0

    :sswitch_117
    const-string v5, "openGpsSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_121

    goto/16 :goto_9b0

    :cond_121
    const/16 v17, 0x9e

    goto/16 :goto_9b0

    :sswitch_125
    const-string v5, "syncTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12f

    goto/16 :goto_9b0

    :cond_12f
    const/16 v17, 0x9d

    goto/16 :goto_9b0

    :sswitch_133
    const-string v5, "syncData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13d

    goto/16 :goto_9b0

    :cond_13d
    const/16 v17, 0x9c

    goto/16 :goto_9b0

    :sswitch_141
    const-string v5, "sendSensorDataGps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14b

    goto/16 :goto_9b0

    :cond_14b
    const/16 v17, 0x9b

    goto/16 :goto_9b0

    :sswitch_14f
    const-string v5, "openSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_159

    goto/16 :goto_9b0

    :cond_159
    const/16 v17, 0x9a

    goto/16 :goto_9b0

    :sswitch_15d
    const-string v5, "rhStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_167

    goto/16 :goto_9b0

    :cond_167
    const/16 v17, 0x99

    goto/16 :goto_9b0

    :sswitch_16b
    const-string v5, "getMacAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_175

    goto/16 :goto_9b0

    :cond_175
    const/16 v17, 0x98

    goto/16 :goto_9b0

    :sswitch_179
    const-string v5, "sendSleepMsgToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_183

    goto/16 :goto_9b0

    :cond_183
    const/16 v17, 0x97

    goto/16 :goto_9b0

    :sswitch_187
    const-string v5, "openGooglePlay"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_191

    goto/16 :goto_9b0

    :cond_191
    const/16 v17, 0x96

    goto/16 :goto_9b0

    :sswitch_195
    const-string v5, "getNotificationAppList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19f

    goto/16 :goto_9b0

    :cond_19f
    const/16 v17, 0x95

    goto/16 :goto_9b0

    :sswitch_1a3
    const-string v5, "navigateToGpsSystemSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ad

    goto/16 :goto_9b0

    :cond_1ad
    const/16 v17, 0x94

    goto/16 :goto_9b0

    :sswitch_1b1
    const-string v5, "stopScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bb

    goto/16 :goto_9b0

    :cond_1bb
    const/16 v17, 0x93

    goto/16 :goto_9b0

    :sswitch_1bf
    const-string v5, "getHistoryDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c9

    goto/16 :goto_9b0

    :cond_1c9
    const/16 v17, 0x92

    goto/16 :goto_9b0

    :sswitch_1cd
    const-string v5, "requestPermissions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d7

    goto/16 :goto_9b0

    :cond_1d7
    const/16 v17, 0x91

    goto/16 :goto_9b0

    :sswitch_1db
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e3

    goto/16 :goto_9b0

    :cond_1e3
    const/16 v17, 0x90

    goto/16 :goto_9b0

    :sswitch_1e7
    const-string v5, "getConnectDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f1

    goto/16 :goto_9b0

    :cond_1f1
    const/16 v17, 0x8f

    goto/16 :goto_9b0

    :sswitch_1f5
    const-string v5, "tempStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ff

    goto/16 :goto_9b0

    :cond_1ff
    const/16 v17, 0x8e

    goto/16 :goto_9b0

    :sswitch_203
    const-string v5, "openSoLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20d

    goto/16 :goto_9b0

    :cond_20d
    const/16 v17, 0x8d

    goto/16 :goto_9b0

    const/16 v17, 0x8c

    goto/16 :goto_9b0

    :sswitch_21f
    const-string v5, "screen_status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_229

    goto/16 :goto_9b0

    :cond_229
    const/16 v17, 0x8b

    goto/16 :goto_9b0

    :sswitch_22d
    const-string v5, "reloadConnect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_237

    goto/16 :goto_9b0

    :cond_237
    const/16 v17, 0x8a

    goto/16 :goto_9b0

    :sswitch_23b
    const-string v5, "appVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_245

    goto/16 :goto_9b0

    :cond_245
    const/16 v17, 0x89

    goto/16 :goto_9b0

    :sswitch_249
    const-string v5, "sendLogToServer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_253

    goto/16 :goto_9b0

    :cond_253
    const/16 v17, 0x88

    goto/16 :goto_9b0

    :sswitch_257
    const-string v5, "bsStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_261

    goto/16 :goto_9b0

    :cond_261
    const/16 v17, 0x87

    goto/16 :goto_9b0

    :sswitch_265
    const-string v5, "getSwitchNotificationManageStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26f

    goto/16 :goto_9b0

    :cond_26f
    const/16 v17, 0x86

    goto/16 :goto_9b0

    :sswitch_273
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27b

    goto/16 :goto_9b0

    :cond_27b
    const/16 v17, 0x85

    goto/16 :goto_9b0

    :sswitch_27f
    const-string v5, "syncMessageRequestTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_289

    goto/16 :goto_9b0

    :cond_289
    const/16 v17, 0x84

    goto/16 :goto_9b0

    :sswitch_28d
    const-string v5, "isBindAlready"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_297

    goto/16 :goto_9b0

    :cond_297
    const/16 v17, 0x83

    goto/16 :goto_9b0

    :sswitch_29b
    const-string v5, "syncMessageRequest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a5

    goto/16 :goto_9b0

    :cond_2a5
    const/16 v17, 0x82

    goto/16 :goto_9b0

    :sswitch_2a9
    const-string v5, "getPlatformVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b3

    goto/16 :goto_9b0

    :cond_2b3
    const/16 v17, 0x81

    goto/16 :goto_9b0

    :sswitch_2b7
    const-string v5, "requestContactsPermissions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c1

    goto/16 :goto_9b0

    :cond_2c1
    const/16 v17, 0x80

    goto/16 :goto_9b0

    :sswitch_2c5
    const-string v5, "setBindStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2cf

    goto/16 :goto_9b0

    :cond_2cf
    const/16 v17, 0x7f

    goto/16 :goto_9b0

    :sswitch_2d3
    const-string v5, "gpsLocationQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2dd

    goto/16 :goto_9b0

    :cond_2dd
    const/16 v17, 0x7e

    goto/16 :goto_9b0

    :sswitch_2e1
    const-string v5, "heartRateQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2eb

    goto/16 :goto_9b0

    :cond_2eb
    const/16 v17, 0x7d

    goto/16 :goto_9b0

    :sswitch_2ef
    const-string v5, "requestOpenBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f9

    goto/16 :goto_9b0

    :cond_2f9
    const/16 v17, 0x7c

    goto/16 :goto_9b0

    :sswitch_2fd
    const-string v5, "connectBleHandOff"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_307

    goto/16 :goto_9b0

    :cond_307
    const/16 v17, 0x7b

    goto/16 :goto_9b0

    :sswitch_30b
    const-string v5, "unBindWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_315

    goto/16 :goto_9b0

    :cond_315
    const/16 v17, 0x7a

    goto/16 :goto_9b0

    :sswitch_319
    const-string v5, "getWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_323

    goto/16 :goto_9b0

    :cond_323
    const/16 v17, 0x79

    goto/16 :goto_9b0

    :sswitch_327
    const-string v5, "removePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_331

    goto/16 :goto_9b0

    :cond_331
    const/16 v17, 0x78

    goto/16 :goto_9b0

    :sswitch_335
    const-string v5, "getAppConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33f

    goto/16 :goto_9b0

    :cond_33f
    const/16 v17, 0x77

    goto/16 :goto_9b0

    :sswitch_343
    const-string v5, "setSwitchNotificationManageStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34d

    goto/16 :goto_9b0

    :cond_34d
    const/16 v17, 0x76

    goto/16 :goto_9b0

    :sswitch_351
    const-string v5, "setSwitchRaiseWristLightUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35b

    goto/16 :goto_9b0

    :cond_35b
    const/16 v17, 0x75

    goto/16 :goto_9b0

    :sswitch_35f
    const-string v5, "openBluetoothSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_369

    goto/16 :goto_9b0

    :cond_369
    const/16 v17, 0x74

    goto/16 :goto_9b0

    :sswitch_36d
    const-string v5, "installApk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_377

    goto/16 :goto_9b0

    :cond_377
    const/16 v17, 0x73

    goto/16 :goto_9b0

    :sswitch_37b
    const-string v5, "heartRateOnlyQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_385

    goto/16 :goto_9b0

    :cond_385
    const/16 v17, 0x72

    goto/16 :goto_9b0

    :sswitch_389
    const-string v5, "regularRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_393

    goto/16 :goto_9b0

    :cond_393
    const/16 v17, 0x71

    goto/16 :goto_9b0

    :sswitch_397
    const-string v5, "deviceInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a1

    goto/16 :goto_9b0

    :cond_3a1
    const/16 v17, 0x70

    goto/16 :goto_9b0

    :sswitch_3a5
    const-string v5, "switchOneAppNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3af

    goto/16 :goto_9b0

    :cond_3af
    const/16 v17, 0x6f

    goto/16 :goto_9b0

    :sswitch_3b3
    const-string v5, "isNotificationListenerEnabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3bd

    goto/16 :goto_9b0

    :cond_3bd
    const/16 v17, 0x6e

    goto/16 :goto_9b0

    :sswitch_3c1
    const-string v5, "setSwitchFindPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3cb

    goto/16 :goto_9b0

    :cond_3cb
    const/16 v17, 0x6d

    goto/16 :goto_9b0

    :sswitch_3cf
    const-string v5, "getCurrentDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d9

    goto/16 :goto_9b0

    :cond_3d9
    const/16 v17, 0x6c

    goto/16 :goto_9b0

    :sswitch_3dd
    const-string v5, "SPP_IS_OPEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e7

    goto/16 :goto_9b0

    :cond_3e7
    const/16 v17, 0x6b

    goto/16 :goto_9b0

    :sswitch_3eb
    const-string v5, "setSwitchOnlyNoticeStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f5

    goto/16 :goto_9b0

    :cond_3f5
    const/16 v17, 0x6a

    goto/16 :goto_9b0

    :sswitch_3f9
    const-string v5, "saveLastMac"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_403

    goto/16 :goto_9b0

    :cond_403
    const/16 v17, 0x69

    goto/16 :goto_9b0

    :sswitch_407
    const-string v5, "getMacNow"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_411

    goto/16 :goto_9b0

    :cond_411
    const/16 v17, 0x68

    goto/16 :goto_9b0

    :sswitch_415
    const-string v5, "gps_sener_count"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41f

    goto/16 :goto_9b0

    :cond_41f
    const/16 v17, 0x67

    goto/16 :goto_9b0

    :sswitch_423
    const-string v5, "getSwitchRaiseWristLightUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42d

    goto/16 :goto_9b0

    :cond_42d
    const/16 v17, 0x66

    goto/16 :goto_9b0

    :sswitch_431
    const-string v5, "disconnect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43b

    goto/16 :goto_9b0

    :cond_43b
    const/16 v17, 0x65

    goto/16 :goto_9b0

    :sswitch_43f
    const-string v5, "getPhoneContacts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_449

    goto/16 :goto_9b0

    :cond_449
    const/16 v17, 0x64

    goto/16 :goto_9b0

    :sswitch_44d
    const-string v5, "syncTime1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_457

    goto/16 :goto_9b0

    :cond_457
    const/16 v17, 0x63

    goto/16 :goto_9b0

    :sswitch_45b
    const-string v5, "syncTime0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_465

    goto/16 :goto_9b0

    :cond_465
    const/16 v17, 0x62

    goto/16 :goto_9b0

    :sswitch_469
    const-string v5, "navigateToSystemHome"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_473

    goto/16 :goto_9b0

    :cond_473
    const/16 v17, 0x61

    goto/16 :goto_9b0

    :sswitch_477
    const-string v5, "saveMacAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_481

    goto/16 :goto_9b0

    :cond_481
    const/16 v17, 0x60

    goto/16 :goto_9b0

    :sswitch_485
    const-string v5, "hasCheckNeedForceOta"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48f

    goto/16 :goto_9b0

    :cond_48f
    const/16 v17, 0x5f

    goto/16 :goto_9b0

    const/16 v17, 0x5e

    goto/16 :goto_9b0

    :sswitch_4a1
    const-string v5, "getWatchVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4ab

    goto/16 :goto_9b0

    :cond_4ab
    const/16 v17, 0x5d

    goto/16 :goto_9b0

    :sswitch_4af
    const-string v5, "notDisturbConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b9

    goto/16 :goto_9b0

    :cond_4b9
    const/16 v17, 0x5c

    goto/16 :goto_9b0

    :sswitch_4bd
    const-string v5, "sport_update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c7

    goto/16 :goto_9b0

    :cond_4c7
    const/16 v17, 0x5b

    goto/16 :goto_9b0

    :sswitch_4cb
    const-string v5, "isBindLast"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d5

    goto/16 :goto_9b0

    :cond_4d5
    const/16 v17, 0x5a

    goto/16 :goto_9b0

    :sswitch_4d9
    const-string v5, "disconnectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e3

    goto/16 :goto_9b0

    :cond_4e3
    const/16 v17, 0x59

    goto/16 :goto_9b0

    :sswitch_4e7
    const-string v5, "setSwitchWeatherSyncNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f1

    goto/16 :goto_9b0

    :cond_4f1
    const/16 v17, 0x58

    goto/16 :goto_9b0

    :sswitch_4f5
    const-string v5, "syncRightNowTimeData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4ff

    goto/16 :goto_9b0

    :cond_4ff
    const/16 v17, 0x57

    goto/16 :goto_9b0

    :sswitch_503
    const-string v5, "stopTransfer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50d

    goto/16 :goto_9b0

    :cond_50d
    const/16 v17, 0x56

    goto/16 :goto_9b0

    :sswitch_511
    const-string v5, "sendWeatherInfoToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51b

    goto/16 :goto_9b0

    :cond_51b
    const/16 v17, 0x55

    goto/16 :goto_9b0

    :sswitch_51f
    const-string v5, "getSedentaryRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_529

    goto/16 :goto_9b0

    :cond_529
    const/16 v17, 0x54

    goto/16 :goto_9b0

    :sswitch_52d
    const-string v5, "openNotificationListenerService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_537

    goto/16 :goto_9b0

    :cond_537
    const/16 v17, 0x53

    goto/16 :goto_9b0

    :sswitch_53b
    const-string v5, "saveDeviceMacAddressHasUpdated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_545

    goto/16 :goto_9b0

    :cond_545
    const/16 v17, 0x52

    goto/16 :goto_9b0

    :sswitch_549
    const-string v5, "collectWatchLoggerRequest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_553

    goto/16 :goto_9b0

    :cond_553
    const/16 v17, 0x51

    goto/16 :goto_9b0

    :sswitch_557
    const-string v5, "sport_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_561

    goto/16 :goto_9b0

    :cond_561
    const/16 v17, 0x50

    goto/16 :goto_9b0

    :sswitch_565
    const-string v5, "sleepStatusQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56f

    goto/16 :goto_9b0

    :cond_56f
    const/16 v17, 0x4f

    goto/16 :goto_9b0

    :sswitch_573
    const-string v5, "setFlutterCrashLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57d

    goto/16 :goto_9b0

    :cond_57d
    const/16 v17, 0x4e

    goto/16 :goto_9b0

    :sswitch_581
    const-string v5, "sedentaryRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58b

    goto/16 :goto_9b0

    :cond_58b
    const/16 v17, 0x4d

    goto/16 :goto_9b0

    :sswitch_58f
    const-string v5, "sportRecordQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_599

    goto/16 :goto_9b0

    :cond_599
    const/16 v17, 0x4c

    goto/16 :goto_9b0

    :sswitch_59d
    const-string v5, "findDeviceWhere"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a7

    goto/16 :goto_9b0

    :cond_5a7
    const/16 v17, 0x4b

    goto/16 :goto_9b0

    :sswitch_5ab
    const-string v5, "getSwitchOnlyNoticeStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b5

    goto/16 :goto_9b0

    :cond_5b5
    const/16 v17, 0x4a

    goto/16 :goto_9b0

    :sswitch_5b9
    const-string v5, "getSwitchFindPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c3

    goto/16 :goto_9b0

    :cond_5c3
    const/16 v17, 0x49

    goto/16 :goto_9b0

    :sswitch_5c7
    const-string v5, "getBleConnectStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d1

    goto/16 :goto_9b0

    :cond_5d1
    const/16 v17, 0x48

    goto/16 :goto_9b0

    :sswitch_5d5
    const-string v5, "sport_start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5df

    goto/16 :goto_9b0

    :cond_5df
    const/16 v17, 0x47

    goto/16 :goto_9b0

    :sswitch_5e3
    const-string v5, "sport_detail"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5ed

    goto/16 :goto_9b0

    :cond_5ed
    const/16 v17, 0x46

    goto/16 :goto_9b0

    :sswitch_5f1
    const-string v5, "getWatchType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5fb

    goto/16 :goto_9b0

    :cond_5fb
    const/16 v17, 0x45

    goto/16 :goto_9b0

    :sswitch_5ff
    const-string v5, "getWatchInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_609

    goto/16 :goto_9b0

    :cond_609
    const/16 v17, 0x44

    goto/16 :goto_9b0

    :sswitch_60d
    const-string v5, "insert_model_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_617

    goto/16 :goto_9b0

    :cond_617
    const/16 v17, 0x43

    goto/16 :goto_9b0

    :sswitch_61b
    const-string v5, "reloadConnectData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_625

    goto/16 :goto_9b0

    :cond_625
    const/16 v17, 0x42

    goto/16 :goto_9b0

    :sswitch_629
    const-string v5, "getMacHistoryList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_633

    goto/16 :goto_9b0

    :cond_633
    const/16 v17, 0x41

    goto/16 :goto_9b0

    :sswitch_637
    const-string v5, "setTrainingProgramInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_641

    goto/16 :goto_9b0

    :cond_641
    const/16 v17, 0x40

    goto/16 :goto_9b0

    :sswitch_645
    const-string v5, "openAutoTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64f

    goto/16 :goto_9b0

    :cond_64f
    const/16 v17, 0x3f

    goto/16 :goto_9b0

    :sswitch_653
    const-string v5, "setWatchLanguage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65d

    goto/16 :goto_9b0

    :cond_65d
    const/16 v17, 0x3e

    goto/16 :goto_9b0

    :sswitch_661
    const-string v5, "requestRebindNotificationService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66b

    goto/16 :goto_9b0

    :cond_66b
    const/16 v17, 0x3d

    goto/16 :goto_9b0

    :sswitch_66f
    const-string v5, "getAllWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_679

    goto/16 :goto_9b0

    :cond_679
    const/16 v17, 0x3c

    goto/16 :goto_9b0

    :sswitch_67d
    const-string v5, "sportSensorDataSportModeQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_687

    goto/16 :goto_9b0

    :cond_687
    const/16 v17, 0x3b

    goto/16 :goto_9b0

    :sswitch_68b
    const-string v5, "sport_daily_life"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_695

    goto/16 :goto_9b0

    :cond_695
    const/16 v17, 0x3a

    goto/16 :goto_9b0

    :sswitch_699
    const-string v5, "userInfoConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a3

    goto/16 :goto_9b0

    :cond_6a3
    const/16 v17, 0x39

    goto/16 :goto_9b0

    :sswitch_6a7
    const-string v5, "uploadPhoneLogAll"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b1

    goto/16 :goto_9b0

    :cond_6b1
    const/16 v17, 0x38

    goto/16 :goto_9b0

    :sswitch_6b5
    const-string v5, "isBlePrivacy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6bf

    goto/16 :goto_9b0

    :cond_6bf
    const/16 v17, 0x37

    goto/16 :goto_9b0

    :sswitch_6c3
    const-string v5, "getContactInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6cd

    goto/16 :goto_9b0

    :cond_6cd
    const/16 v17, 0x36

    goto/16 :goto_9b0

    :sswitch_6d1
    const-string v5, "isBleOpen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6db

    goto/16 :goto_9b0

    :cond_6db
    const/16 v17, 0x35

    goto/16 :goto_9b0

    :sswitch_6df
    const-string v5, "calculateLineDistance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e9

    goto/16 :goto_9b0

    :cond_6e9
    const/16 v17, 0x34

    goto/16 :goto_9b0

    :sswitch_6ed
    const-string v5, "dailyRhrQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f7

    goto/16 :goto_9b0

    :cond_6f7
    const/16 v17, 0x33

    goto/16 :goto_9b0

    :sswitch_6fb
    const-string v5, "scan_zxing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_705

    goto/16 :goto_9b0

    :cond_705
    const/16 v17, 0x32

    goto/16 :goto_9b0

    :sswitch_709
    const-string v5, "connectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_713

    goto/16 :goto_9b0

    :cond_713
    const/16 v17, 0x31

    goto/16 :goto_9b0

    :sswitch_717
    const-string v5, "dailyActive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_721

    goto/16 :goto_9b0

    :cond_721
    const/16 v17, 0x30

    goto/16 :goto_9b0

    :sswitch_725
    const-string v5, "metoStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72f

    goto/16 :goto_9b0

    :cond_72f
    const/16 v17, 0x2f

    goto/16 :goto_9b0

    :sswitch_733
    const-string v5, "setSwitchCallPhoneNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73d

    goto/16 :goto_9b0

    :cond_73d
    const/16 v17, 0x2e

    goto/16 :goto_9b0

    :sswitch_741
    const-string v5, "mediaKey"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74b

    goto/16 :goto_9b0

    :cond_74b
    const/16 v17, 0x2d

    goto/16 :goto_9b0

    :sswitch_74f
    const-string v5, "isInTransmission"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_759

    goto/16 :goto_9b0

    :cond_759
    const/16 v17, 0x2c

    goto/16 :goto_9b0

    :sswitch_75d
    const-string v5, "isLocationEnabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_767

    goto/16 :goto_9b0

    :cond_767
    const/16 v17, 0x2b

    goto/16 :goto_9b0

    :sswitch_76b
    const-string v5, "getSwitchCallPhoneNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_775

    goto/16 :goto_9b0

    :cond_775
    const/16 v17, 0x2a

    goto/16 :goto_9b0

    :sswitch_779
    const-string v5, "sport_gps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_783

    goto/16 :goto_9b0

    :cond_783
    const/16 v17, 0x29

    goto/16 :goto_9b0

    :sswitch_787
    const-string v5, "bindRequestByPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_791

    goto/16 :goto_9b0

    :cond_791
    const/16 v17, 0x28

    goto/16 :goto_9b0

    :sswitch_795
    const-string v5, "sharePhoneLogAll"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79f

    goto/16 :goto_9b0

    :cond_79f
    const/16 v17, 0x27

    goto/16 :goto_9b0

    :sswitch_7a3
    const-string v5, "callPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7ad

    goto/16 :goto_9b0

    :cond_7ad
    const/16 v17, 0x26

    goto/16 :goto_9b0

    :sswitch_7b1
    const-string v5, "echoPackageTestSmall"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7bb

    goto/16 :goto_9b0

    :cond_7bb
    const/16 v17, 0x25

    goto/16 :goto_9b0

    :sswitch_7bf
    const-string v5, "setBtIsBond"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c9

    goto/16 :goto_9b0

    :cond_7c9
    const/16 v17, 0x24

    goto/16 :goto_9b0

    :sswitch_7cd
    const-string v5, "cigaretteLevel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d7

    goto/16 :goto_9b0

    :cond_7d7
    const/16 v17, 0x23

    goto/16 :goto_9b0

    :sswitch_7db
    const-string v5, "disconnectBleNTimes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e5

    goto/16 :goto_9b0

    :cond_7e5
    const/16 v17, 0x22

    goto/16 :goto_9b0

    :sswitch_7e9
    const-string v5, "savePhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f3

    goto/16 :goto_9b0

    :cond_7f3
    const/16 v17, 0x21

    goto/16 :goto_9b0

    :sswitch_7f7
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7ff

    goto/16 :goto_9b0

    :cond_7ff
    const/16 v17, 0x20

    goto/16 :goto_9b0

    :sswitch_803
    const-string v5, "qrCodeFile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80d

    goto/16 :goto_9b0

    :cond_80d
    const/16 v17, 0x1f

    goto/16 :goto_9b0

    :sswitch_811
    const-string v5, "deviceBattery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81b

    goto/16 :goto_9b0

    :cond_81b
    const/16 v17, 0x1e

    goto/16 :goto_9b0

    :sswitch_81f
    const-string v5, "sportSensorDataSportHeartQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_829

    goto/16 :goto_9b0

    :cond_829
    const/16 v17, 0x1d

    goto/16 :goto_9b0

    :sswitch_82d
    const-string v5, "getFallInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_837

    goto/16 :goto_9b0

    :cond_837
    const/16 v17, 0x1c

    goto/16 :goto_9b0

    :sswitch_83b
    const-string v5, "getSwitchWeatherSyncNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_845

    goto/16 :goto_9b0

    :cond_845
    const/16 v17, 0x1b

    goto/16 :goto_9b0

    :sswitch_849
    const-string v5, "echoPackageTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_853

    goto/16 :goto_9b0

    :cond_853
    const/16 v17, 0x1a

    goto/16 :goto_9b0

    :sswitch_857
    const-string v5, "endCall"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_861

    goto/16 :goto_9b0

    :cond_861
    const/16 v17, 0x19

    goto/16 :goto_9b0

    :sswitch_865
    const-string v5, "setWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86f

    goto/16 :goto_9b0

    :cond_86f
    const/16 v17, 0x18

    goto/16 :goto_9b0

    :sswitch_873
    const-string v5, "deleteMacHistory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87d

    goto/16 :goto_9b0

    :cond_87d
    const/16 v17, 0x17

    goto/16 :goto_9b0

    :sswitch_881
    const-string v5, "quietCallOn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88b

    goto/16 :goto_9b0

    :cond_88b
    const/16 v17, 0x16

    goto/16 :goto_9b0

    :sswitch_88f
    const-string v5, "setAppConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_899

    goto/16 :goto_9b0

    :cond_899
    const/16 v17, 0x15

    goto/16 :goto_9b0

    :sswitch_89d
    const-string v5, "healthMeasureConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a7

    goto/16 :goto_9b0

    :cond_8a7
    const/16 v17, 0x14

    goto/16 :goto_9b0

    :sswitch_8ab
    const-string v5, "getCommonRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b5

    goto/16 :goto_9b0

    :cond_8b5
    const/16 v17, 0x13

    goto/16 :goto_9b0

    :sswitch_8b9
    const-string v5, "bpStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c3

    goto/16 :goto_9b0

    :cond_8c3
    const/16 v17, 0x12

    goto/16 :goto_9b0

    :sswitch_8c7
    const-string v5, "restartBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d1

    goto/16 :goto_9b0

    :cond_8d1
    const/16 v17, 0x11

    goto/16 :goto_9b0

    :sswitch_8d5
    const-string v5, "google_login"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8df

    goto/16 :goto_9b0

    :cond_8df
    const/16 v17, 0x10

    goto/16 :goto_9b0

    :sswitch_8e3
    const-string v5, "uploadPhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8ed

    goto/16 :goto_9b0

    :cond_8ed
    const/16 v17, 0xf

    goto/16 :goto_9b0

    :sswitch_8f1
    const-string v5, "bloodOxygenQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8fb

    goto/16 :goto_9b0

    :cond_8fb
    const/16 v17, 0xe

    goto/16 :goto_9b0

    :sswitch_8ff
    const-string v5, "jumpToSystemSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_909

    goto/16 :goto_9b0

    :cond_909
    const/16 v17, 0xd

    goto/16 :goto_9b0

    :sswitch_90d
    const-string v5, "syncCacheTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_917

    goto/16 :goto_9b0

    :cond_917
    const/16 v17, 0xc

    goto/16 :goto_9b0

    :sswitch_91b
    const-string v5, "openOrCloseWatchLogUpload"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_925

    goto/16 :goto_9b0

    :cond_925
    const/16 v17, 0xb

    goto/16 :goto_9b0

    :sswitch_929
    const-string v5, "btBondStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_933

    goto/16 :goto_9b0

    :cond_933
    const/16 v17, 0xa

    goto/16 :goto_9b0

    :sswitch_937
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93f

    goto/16 :goto_9b0

    :cond_93f
    const/16 v17, 0x9

    goto/16 :goto_9b0

    :sswitch_943
    const-string v5, "requestGetData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94d

    goto/16 :goto_9b0

    :cond_94d
    const/16 v17, 0x8

    goto/16 :goto_9b0

    :sswitch_951
    const-string v5, "updateMac"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95a

    goto :goto_9b0

    :cond_95a
    const/16 v17, 0x7

    goto :goto_9b0

    :sswitch_95d
    const-string v5, "clearPhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_966

    goto :goto_9b0

    :cond_966
    const/16 v17, 0x6

    goto :goto_9b0

    :sswitch_969
    const-string v5, "getWeather"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_972

    goto :goto_9b0

    :cond_972
    const/16 v17, 0x5

    goto :goto_9b0

    :sswitch_975
    const-string v5, "updatePicture"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97e

    goto :goto_9b0

    :cond_97e
    const/16 v17, 0x4

    goto :goto_9b0

    :sswitch_981
    const-string v5, "syncWeiXin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98a

    goto :goto_9b0

    :cond_98a
    const/16 v17, 0x3

    goto :goto_9b0

    :sswitch_98d
    const-string v5, "startScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_996

    goto :goto_9b0

    :cond_996
    const/16 v17, 0x2

    goto :goto_9b0

    :sswitch_999
    const-string v5, "changeFile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a2

    goto :goto_9b0

    :cond_9a2
    move/from16 v17, v15

    goto :goto_9b0

    :sswitch_9a5
    const-string v5, "menstrualRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9ae

    goto :goto_9b0

    :cond_9ae
    const/16 v17, 0x0

    :goto_9b0
    const-string v3, "macAddress"

    const-string v8, "filePath"

    const-wide/16 v18, 0x3e8

    const-string v6, "\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    const-string v5, "flutter\u7aef\u4f20\u8fc7\u6765\u7684json:"

    const-string v14, ""

    const-string v13, " end:"

    const-string v15, "endTimeS"

    move-object/from16 v20, v7

    const-string v7, "startTimeS"

    packed-switch v17, :pswitch_data_2d00

    .line 2116
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_2a41

    .line 1141
    :pswitch_9cc
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestLocationPermissions()V

    goto/16 :goto_2a41

    .line 941
    :pswitch_9d5
    new-instance v3, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;

    invoke-direct {v3}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;-><init>()V

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-----packageAlbumDial----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v4, "filePathArr"

    .line 945
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----filePathArr----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 947
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcn/yoozworld/watch/ui/BLfLst$4;

    invoke-direct {v6, v1}, Lcn/yoozworld/watch/ui/BLfLst$4;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v6}, Lcn/yoozworld/watch/ui/BLfLst$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "width"

    .line 949
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "height"

    .line 950
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "-----packageAlbumDial----width"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 952
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "-----packageAlbumDial----height"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v7, "header"

    .line 954
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 955
    iget-object v9, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10, v5, v6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->packageHeader(Landroid/content/Context;III)[B

    move-result-object v12

    .line 957
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "----header_old="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcn/baos/watch/sdk/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 958
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "----header="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcn/baos/watch/sdk/util/HexUtil;->encodeHexStr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v7, "albumDialWallpaperEntity"

    .line 961
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 962
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, Lcn/baos/watch/w100/messages/Wallpaper_info;

    invoke-virtual {v9, v7, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/baos/watch/w100/messages/Wallpaper_info;

    .line 963
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef-\u8868\u76d8json:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 964
    invoke-static {v7}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v16

    .line 965
    invoke-static/range {v16 .. v16}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object v9

    check-cast v9, Lcn/baos/watch/w100/messages/Wallpaper_info;

    .line 966
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef-\u8868\u76d8json-unpack:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 971
    iget-object v9, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v8, v5, v6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage240280Small(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 973
    iget-object v9, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v8, v7}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->drawControlOnCompressedSmall(Landroid/content/Context;Ljava/lang/String;Lcn/baos/watch/w100/messages/Wallpaper_info;)Ljava/lang/String;

    move-result-object v7

    .line 974
    iget-object v9, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v7}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage152176(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 977
    iget-object v7, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v4, v5, v6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressList(Landroid/content/Context;Ljava/util/List;II)Ljava/util/List;

    move-result-object v14

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----imgPaths="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "layoutMagic"

    .line 981
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 982
    invoke-static {}, Lcn/baos/watch/sdk/manager/packageAlbumDial/AlbumDialUtil;->packageLayoutMagic()[B

    move-result-object v15

    .line 983
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "----layoutMagic_old="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----layoutMagic="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "watchInfoEntity"

    .line 986
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 987
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcn/baos/watch/w100/messages/Device_base_info;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Device_base_info;

    .line 989
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef\uff0cheader:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6587\u4ef6\u5730\u5740:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u9884\u89c8\u6587\u4ef6\u5730\u5740:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " layoutMagic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 990
    invoke-static {v15}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u624b\u8868\u4fe1\u606f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 991
    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 995
    new-instance v3, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;

    invoke-direct {v3}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;-><init>()V

    .line 996
    iget-object v4, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    move-object v11, v3

    .line 997
    invoke-virtual/range {v11 .. v16}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->packageAlbumDials([BLjava/lang/String;Ljava/util/List;[B[B)[B

    move-result-object v5

    .line 996
    invoke-virtual {v3, v4, v0, v5}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->saveAlbumByteLocal(Landroid/content/Context;Lcn/baos/watch/w100/messages/Device_base_info;[B)Ljava/lang/String;

    move-result-object v0

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----binPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1000
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1908
    :pswitch_bef
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ota\u5927\u6587\u4ef6\u4f20\u8f93,\u8def\u5f84:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileType"

    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fileType"

    .line 1910
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1911
    invoke-virtual {v1, v2, v0}, Lcn/yoozworld/watch/ui/BLfLst;->transferFile(Ljava/lang/String;I)V

    goto/16 :goto_2a41

    :pswitch_c2a
    const-string v2, "sendGPSBaseToWatch"

    .line 719
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendGPSBaseToWatch=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 721
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;

    .line 722
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendGpsBaseToWatch(Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;)Z

    goto/16 :goto_2a41

    :pswitch_c5a
    const-string v2, "logprint"

    .line 875
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flutter-->>>logprint:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1129
    :pswitch_c76
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;-><init>()V

    .line 1130
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u536b\u661f\u4e2a\u6570"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v3

    iget v3, v3, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sensor_data_gps:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_cb4
    const-string v2, "updateDeviceResource"

    .line 887
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Update_device_resource;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Update_device_resource;

    .line 890
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4fee\u6539\u8868\u76d8\u5bf9\u8c61json\u6253\u5370:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_ced
    const-string v3, "width"

    .line 913
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v3, "height"

    .line 914
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 916
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 917
    new-instance v4, Lcn/baos/watch/w100/messages/Wallpaper_info;

    invoke-direct {v4}, Lcn/baos/watch/w100/messages/Wallpaper_info;-><init>()V

    .line 918
    new-instance v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v5}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    iput-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->bgColor:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    const/4 v5, 0x2

    new-array v5, v5, [Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 919
    iput-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 920
    iget-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    new-instance v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;-><init>()V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 921
    iget-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    new-instance v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;-><init>()V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 922
    iget-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    aget-object v5, v5, v7

    new-instance v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    iput-object v6, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 923
    iget-object v5, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    aget-object v5, v5, v8

    new-instance v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    iput-object v6, v5, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8868\u76d8json\u5b9e\u4f53\u7ed3\u6784:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 925
    invoke-static {v4}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v4

    .line 926
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8868\u76d8json\u5e8f\u5217\u5316:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v4, "albumDialWallpaperEntity"

    .line 928
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 929
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcn/baos/watch/w100/messages/Wallpaper_info;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcn/baos/watch/w100/messages/Wallpaper_info;

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5305\u8868\u76d8\u53c2\u6570-\u622a\u5207\u539f\u56fe\u7247\u683c\u5f0f\u8f6c\u6362\uff0c\u56fe\u7247\u8def\u5f84\u6e90\u751f\u7aef,\u6587\u4ef6\u5730\u5740:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u63a7\u4ef6\u5e03\u5c40:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 932
    invoke-virtual {v4, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 933
    new-instance v9, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;

    invoke-direct {v9}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;-><init>()V

    .line 935
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v3, v13, v14}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage240280(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 936
    iget-object v10, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual/range {v9 .. v14}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->drawControlOnCompressed(Landroid/content/Context;Ljava/lang/String;Lcn/baos/watch/w100/messages/Wallpaper_info;II)Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_dcc
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    const-string v0, "\u521d\u59cb\u5316sdk"

    .line 1179
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1222
    :pswitch_dd3
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startReConnect()Z

    goto/16 :goto_2a41

    :pswitch_ddc
    const-string v0, "\u83b7\u53d6\u5c0f\u7c73\u5f97\u8d26\u53f7\u7684code"

    .line 1920
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_de3
    const-string v3, "contactInfo"

    .line 1316
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u901a\u8baf\u5f55"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1318
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e1d

    .line 1320
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcn/yoozworld/watch/ui/BLfLst$6;

    invoke-direct {v4, v1}, Lcn/yoozworld/watch/ui/BLfLst$6;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    .line 1321
    invoke-virtual {v4}, Lcn/yoozworld/watch/ui/BLfLst$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1320
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 1323
    :cond_e1d
    invoke-static {v3}, Lcn/baos/watch/sdk/BasSdk;->setContactInfo(Ljava/util/List;)Z

    .line 1324
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_e25
    const-string v2, "actionSync"

    .line 1107
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1108
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Action_sync;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Action_sync;

    .line 1109
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v2

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda13;-><init>(Lcn/baos/watch/w100/messages/Action_sync;)V

    invoke-virtual {v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a41

    .line 1868
    :pswitch_e48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7761\u7720\u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1869
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->querySleepStatsInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1870
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1871
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ea8

    const/4 v14, 0x0

    .line 1872
    :goto_e92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_ea8

    .line 1873
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->getSensor_data_sleep_stats()Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_e92

    .line 1876
    :cond_ea8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c \u7761\u7720:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1877
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_ed1
    const-string v2, "responseMsg"

    .line 895
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 896
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Response_msg;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/w100/messages/Response_msg;

    .line 897
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u534f\u8bae\u6d88\u606f\u56de\u590d,\u8fd0\u52a8\u63a7\u5236,\u76f8\u673a\u72b6\u6001\u56de\u590d:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 653
    :pswitch_f01
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2a41

    :pswitch_f0f
    const-string v0, "\u540c\u6b65\u65f6\u95f4"

    .line 1477
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_f16
    const-string v0, "\u6570\u636e\u540c\u6b65"

    .line 1641
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1642
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$8;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$8;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->startSyncDateFromWatch(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;)V

    goto/16 :goto_2a41

    :pswitch_f2b
    const-string v2, "sendSensorDataGps"

    .line 1005
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1006
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Sensor_data_gps;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Sensor_data_gps;

    .line 1007
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    iput v2, v0, Lcn/baos/watch/w100/messages/Sensor_data_gps;->satellite_count:I

    .line 1008
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_2a41

    :pswitch_f51
    const-string v0, "--openSetting--"

    .line 645
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 646
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2a41

    .line 1843
    :pswitch_f64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u547c\u5438\u9891\u7387/\u538b\u529b \u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1844
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->queryRhModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1845
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u547c\u5438\u9891\u7387/\u538b\u529b-\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1846
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1500
    :pswitch_fcb
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTestRequest;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTestRequest;-><init>()V

    const/16 v2, 0x3e7

    .line 1501
    iput v2, v0, Lcn/baos/watch/w100/messages/CommandTestRequest;->test_function:I

    .line 1502
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_2a41

    .line 528
    :pswitch_fdd
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/GoogleAppUtils;->jumpToGooglePlay(Landroid/app/Activity;)V

    goto/16 :goto_2a41

    .line 1617
    :pswitch_fe4
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAllNotification()Ljava/util/ArrayList;

    move-result-object v0

    .line 1618
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6d88\u606f\u901a\u77e5->\u83b7\u53d6\u6240\u6709app\u5217\u8868x:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 1619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1042

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1042

    .line 1621
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_101a
    :goto_101a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1042

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 1623
    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_101a

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_101a

    .line 1624
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_101a

    .line 1629
    :cond_1042
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u6d88\u606f\u901a\u77e5->\u83b7\u53d6\u6240\u6709app\u5217\u8868:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/baos/watch/sdk/utils/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 541
    :pswitch_1066
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2a41

    const/high16 v2, 0x10000000

    .line 543
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2a41

    .line 1193
    :pswitch_1085
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->stopSearchScan()V

    goto/16 :goto_2a41

    .line 567
    :pswitch_108e
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->getAllListConfig()Ljava/util/List;

    move-result-object v0

    .line 568
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 569
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v4

    if-eqz v0, :cond_10ce

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10ce

    const/4 v14, 0x0

    .line 571
    :goto_10ac
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_10ce

    .line 572
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v5, v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 573
    iget-object v6, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10cb

    .line 574
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10cb
    add-int/lit8 v14, v14, 0x1

    goto :goto_10ac

    .line 578
    :cond_10ce
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "history->:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1136
    :pswitch_10f7
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions()V

    goto/16 :goto_2a41

    .line 1460
    :pswitch_1100
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u81ea\u52a8\u6d4b\u8bd5\u6a21\u5f0f\u5f00\u5173:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1462
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3, v12, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1463
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1367
    :pswitch_1130
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_117a

    .line 1368
    iget-boolean v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v3, :cond_113f

    goto :goto_117a

    .line 1372
    :cond_113f
    iget-object v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1373
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    .line 1374
    new-instance v4, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;

    invoke-direct {v4}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;-><init>()V

    .line 1375
    invoke-virtual {v4, v3}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceAddress(Ljava/lang/String;)V

    .line 1376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1153

    const-string v0, "W625"

    .line 1379
    :cond_1153
    invoke-virtual {v4, v0}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 1380
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5f53\u524d\u8fde\u63a5\u5730\u5740-\u8be6\u60c5\u6570\u636e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_1174

    goto :goto_1175

    :cond_1174
    move-object v14, v0

    .line 1384
    :goto_1175
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1369
    :cond_117a
    :goto_117a
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 1861
    :pswitch_117e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e29\u5ea6 \u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1862
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->queryTempModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1863
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e29\u5ea6-\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1864
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1038
    :pswitch_11e5
    invoke-static {}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->printStringByJni()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    int-to-long v3, v0

    .line 1041
    invoke-static {}, Lorg/msgpack/core/MessagePack;->newDefaultBufferPacker()Lorg/msgpack/core/MessageBufferPacker;

    move-result-object v0

    .line 1043
    :try_start_11ef
    invoke-virtual {v0, v3, v4}, Lorg/msgpack/core/MessageBufferPacker;->packLong(J)Lorg/msgpack/core/MessagePacker;
    :try_end_11f2
    .catch Ljava/io/IOException; {:try_start_11ef .. :try_end_11f2} :catch_11f3

    goto :goto_11f8

    :catch_11f3
    move-exception v0

    move-object v3, v0

    .line 1045
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1047
    :goto_11f8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5f00so\u5e93\u672c\u5730\u65e5\u5fd7:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " b:-1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41


    :pswitch_1253
    const-string v2, "screen_status"

    .line 725
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1271

    .line 727
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_2a41

    :cond_1271
    const/16 v2, 0x80

    .line 729
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_2a41

    .line 800
    :pswitch_1280
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 803
    :try_start_1286
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 804
    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1293
    .catch Ljava/lang/Exception; {:try_start_1286 .. :try_end_1293} :catch_1294

    goto :goto_1299

    :catch_1294
    move-exception v0

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    .line 808
    :goto_1299
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1494
    :pswitch_12a2
    new-instance v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandJournalResponse;-><init>()V

    const-string v2, "FA:FC:9C:DE:8C\n"

    .line 1495
    iput-object v2, v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    const-string v2, "FA:FC:9C:DE:8C\n"

    .line 1496
    iput-object v2, v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    .line 1497
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->receiveMessageFromDevice(Lcn/baos/watch/w100/messages/MessageBase;)V

    goto/16 :goto_2a41

    .line 1855
    :pswitch_12b8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8840\u538b \u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1856
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->queryBsModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1857
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8840\u538b-\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1858
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1604
    :pswitch_131f
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    const-string v3, "notificationManageKey"

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryCheckStateLightDb(Ljava/lang/String;)Z

    move-result v0

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6d88\u606f\u901a\u77e5->\u83b7\u53d6\u603b\u5f00\u5173\u72b6\u6001:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1606
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1453
    :pswitch_1346
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1454
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5de5\u5382\u6d4b\u8bd5\u6a21\u5f0f\u5f00\u5173:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1455
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3, v10, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1457
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1958
    :pswitch_1376
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    new-instance v0, Lcn/baos/watch/w100/messages/SyncMessage;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/SyncMessage;-><init>()V

    const/16 v2, 0x4d2

    .line 1959
    iput v2, v0, Lcn/baos/watch/w100/messages/SyncMessage;->begin_seq:I

    .line 1960
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v0

    .line 1961
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda6;-><init>(Lcn/yoozworld/watch/ui/BLfLst;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1963
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda7;-><init>(Lcn/yoozworld/watch/ui/BLfLst;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a41

    .line 1393
    :pswitch_1399
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    .line 1394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_13aa
    const-string v2, "syncMessageRequest"

    .line 1966
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u540c\u6b65->\u6e90\u751f\u7aef\u6536\u5230flutter\u7aef\u670d\u52a1\u5668\u8fd4\u56de\u7684byte\u6570\u7ec4\u53d1\u9001\u7ed9\u624b\u8868:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1968
    invoke-static {}, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->getInstance()Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/code/syncDate/SyncDataManager;->sendSyncDataFromServerToWatch([B)V

    goto/16 :goto_2a41

    .line 1923
    :pswitch_13d1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 2113
    :pswitch_13d8
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestReadCallPhonePermissions()V

    goto/16 :goto_2a41

    :pswitch_13e1
    const-string v2, "setBindStatus"

    .line 845
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 846
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    if-eqz v2, :cond_2a41

    .line 848
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v3

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->updateCurrentConfig(Ljava/lang/String;Z)Z

    .line 849
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfigFalse()V

    goto/16 :goto_2a41

    .line 1787
    :pswitch_1409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u7eac\u5ea6\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1790
    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1791
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->queryGpsModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1792
    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1802
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u7aef\u7ecf\u7eac\u5ea6\u67e5\u8be2\u7ed3\u679c\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1803
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1755
    :pswitch_1478
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u5fc3\u7387\u67e5\u8be2,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1756
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->queryDailyHrateInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1757
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u5fc3\u7387\u4ece\u6570\u636e\u67e5\u8be2\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1758
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1759
    :goto_14d2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_14e8

    .line 1760
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;->getSensor_data_daily_hrate()Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_14d2

    .line 1762
    :cond_14e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1763
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 657
    :pswitch_150f
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestOpenBle()V

    goto/16 :goto_2a41

    .line 1225
    :pswitch_1518
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1226
    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->startConnect(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2a41

    :pswitch_152b
    const-string v0, "\u83b7\u53d6\u624b\u8868\u4e16\u754c\u65f6\u95f4"

    .line 1331
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda15;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWorldTimeInfo(Lcn/baos/watch/sdk/interfac/world/OnWorldListener;)Z

    .line 1349
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1442
    :pswitch_1541
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->unBindWatch()V

    .line 1443
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a41

    .line 700
    :pswitch_1556
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda12;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getAppMarkInfo(Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;)Z

    goto/16 :goto_2a41

    :pswitch_1564
    const-string v3, "setSwitchNotificationManageStatus"

    .line 1610
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1611
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v3

    const-string v4, "notificationManageKey"

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->saveCheckStateLightDb(Ljava/lang/String;Z)V

    .line 1612
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6d88\u606f\u901a\u77e5->\u8bbe\u7f6e\u603b\u5f00\u5173\u72b6\u6001:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1613
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1592
    const-string v3, "setSwitchRaiseWristLightUp"

    .line 2023
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2024
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v4, "SWITCH_RAISE_WRIST_LIGHT_UP"

    invoke-static {v3, v4, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2027
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSwitchRaiseWristLightUp(Z)Z

    .line 2028
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_15b5
    const-string v0, "--openBluetoothSetting--"

    .line 649
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 650
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2a41

    :pswitch_15c8
    const-string v2, "file"

    .line 901
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 902
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->installApk(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1744
    :pswitch_15d7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u5fc3\u7387\u67e5\u8be2 \u5355\u72ec,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1745
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->queryDailyHrateOnlyInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1746
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u5fc3\u7387\u4ece\u6570\u636e\u67e5\u8be2\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1747
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1748
    :goto_1631
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1647

    .line 1749
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;->getSensor_data_daily_hrate()Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1631

    .line 1751
    :cond_1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1752
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_166e
    const-string v2, "regularRemindConfig"

    .line 1575
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1577
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Regular_remind_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Regular_remind_config;

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5e38\u89c4\u63d0\u9192:\u559d\u6c34\u3001\u6d17\u624b:"

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

    .line 1579
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    .line 589
    :pswitch_16b7
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda1;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getOilBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;)Z

    .line 602
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1721

    .line 605
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEVICE_INFO"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1719

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "deviceInfo"

    .line 610
    invoke-virtual {v1, v3, v0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_171c

    .line 612
    :cond_1719
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 614
    :goto_171c
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 616
    :cond_1721
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1726
    const-string v3, "switchOneAppNotification"

    .line 1634
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1635
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 1636
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6d88\u606f\u901a\u77e5->\u8bbe\u7f6e\u5355\u4e2aapp\u6d88\u606f\u901a\u77e5\u72b6\u6001:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1637
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    .line 1638
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1145
    :pswitch_1768
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->isNotificationListenerEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_177b
    const-string v3, "setSwitchFindPhone"

    .line 2039
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2040
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v4, "SWITCH_FIND_PHONE"

    invoke-static {v3, v4, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2042
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 557
    :pswitch_1797
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_17a9

    .line 560
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_17a9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "current:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 563
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_17d2
    const-string v2, "spp_is_open"

    .line 515
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spp_is_open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 517
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_SPP_IS_OPEN:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2a41

    :pswitch_17f9
    const-string v3, "setSwitchOnlyNoticeStatus"

    .line 2010
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setSwitchOnlyNoticeStatus----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 2014
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->saveSwitchOnlyNotice(Z)V

    .line 2015
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1829
    const-string v2, "lastMac"

    .line 624
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a41

    .line 626
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LAST_MAC:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1283
    :pswitch_1840
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_1868

    .line 1284
    iget-boolean v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v3, :cond_184f

    goto :goto_1868

    .line 1288
    :cond_184f
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5df2\u7ed1\u5b9amacAddress\u5730\u5740"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1290
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1285
    :cond_1868
    :goto_1868
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 2018
    :pswitch_186c
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_RAISE_WRIST_LIGHT_UP"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2020
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_187e
    const/4 v0, 0x1

    .line 1210
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleReConnect:Z

    .line 1211
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    goto/16 :goto_2a41

    :pswitch_188a
    const-string v0, "\u83b7\u53d6\u624b\u673a\u901a\u8baf\u5f55"

    .line 2074
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18ea

    .line 2076
    sget-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    if-eqz v0, :cond_2a41

    const/4 v3, 0x0

    .line 2077
    sput-boolean v3, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    .line 2078
    invoke-static {}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->queryList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18c3

    .line 2079
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18c3

    const/4 v3, 0x1

    .line 2080
    sput-boolean v3, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    .line 2081
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 2083
    :cond_18c3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2085
    new-instance v0, Lcn/baos/watch/sdk/contact/ContactHelper;

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/baos/watch/sdk/contact/ContactHelper;-><init>(Landroid/app/Activity;)V

    .line 2086
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda10;-><init>(Lcn/baos/watch/sdk/contact/ContactHelper;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2102
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2a41

    .line 2107
    :cond_18ea
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestContactsPermissions()V

    .line 2108
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string v0, "\u83b7\u53d6\u624b\u673a\u901a\u8baf\u5f55-> \u65e0\u6743\u9650"

    .line 2109
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_18fb
    const-string v0, "\u65f6\u95f4\u540c\u6b65-0"

    .line 1490
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_1902
    const-string v0, "\u6062\u590d\u51fa\u5382\u8bbe\u7f6e"

    .line 1486
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1430
    :pswitch_1909
    :try_start_1909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    .line 1431
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    .line 1432
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 1433
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1434
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1435
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1927
    .catch Ljava/lang/Exception; {:try_start_1909 .. :try_end_1927} :catch_1929

    goto/16 :goto_2a41

    :catch_1929
    move-exception v0

    .line 1437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a41

    .line 1293
    :pswitch_192f
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v4

    if-eqz v4, :cond_1945

    .line 1295
    new-instance v5, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v5}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v6, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disBtConnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 1297
    :cond_1945
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1298
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcn/baos/watch/sdk/base/AppDataConfig;->updateCurrentConfig(Ljava/lang/String;Z)Z

    .line 1299
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfig()V

    .line 1300
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    .line 1301
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1966
    const-string v2, "hasCheckNeedForceOta"

    .line 879
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/16 :goto_2a41

    :pswitch_19b4
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->getPairCode()I

    move-result v0

    .line 678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_19c5
    const-string v2, "notDisturbConfig"

    .line 1589
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1591
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Not_disturb_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Not_disturb_config;

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u52ff\u6270\u6a21\u5f0f:"

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

    .line 1593
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    :pswitch_1a0e
    const-string v2, "sport_update"

    .line 756
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 757
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;

    .line 758
    new-instance v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    invoke-direct {v2}, Lcn/baos/watch/sdk/database/gps/GpslocEntity;-><init>()V

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v18

    iput-wide v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    const-string v3, "amap"

    .line 762
    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 764
    iget-wide v3, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lon:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2a41

    .line 765
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    goto/16 :goto_2a41

    :pswitch_1a83
    const-string v3, "mac"

    .line 583
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 584
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindLast(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1261
    :pswitch_1a9c
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    const-string v0, "\u65ad\u5f00\u84dd\u7259"

    .line 1262
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_1aaa
    const-string v3, "setSwitchWeatherSyncNotification"

    .line 1993
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1994
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v4, "SWITCH_WEATHER_SYNC_NOTIFICATION"

    invoke-static {v3, v4, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1997
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1ac6
    const-string v2, "openOrClose"

    .line 1668
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u540c\u6b65\u5b9e\u65f6\u6570\u636e,openOrClose:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1670
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v2

    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    new-instance v4, Lcn/yoozworld/watch/ui/BLfLst$9;

    invoke-direct {v4, v1}, Lcn/yoozworld/watch/ui/BLfLst$9;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v2, v3, v0, v4}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->startSyncRightNowData(Landroid/content/Context;ILcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;)V

    goto/16 :goto_2a41

    .line 1914
    :pswitch_1af4
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission()V

    goto/16 :goto_2a41

    :pswitch_1afd
    const-string v2, "sendWeatherInfoToWatch"

    .line 1937
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e90\u751f\u7aef\u6536\u5230flutter\u7aef\u5929\u6c14\u6570\u636e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1939
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/entitiy/WeatherEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/WeatherEntity;

    if-eqz v0, :cond_2a41

    .line 1940
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a41

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a41

    .line 1941
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    .line 1942
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherMeteorological(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    goto/16 :goto_2a41

    .line 1151
    :pswitch_1b48
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->openNotificationListenSettings(Landroid/content/Context;)V

    goto/16 :goto_2a41

    :pswitch_1b53
    const-string v2, "saveDeviceMacAddressHasUpdated"

    .line 1892
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1893
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->getUnHandleDeviceList()Ljava/lang/String;

    move-result-object v2

    .line 1894
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u81ea\u52a8\u5347\u7ea7,\u8bbe\u5907\u5217\u8868\u6e05\u5355:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "KEY_WATCH_DIS_HANDLE_MAC_ADDRESS"

    if-eqz v0, :cond_1bb2

    .line 1895
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b80

    goto :goto_1bb2

    :cond_1b80
    if-eqz v2, :cond_1ba9

    .line 1899
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b89

    goto :goto_1ba9

    .line 1902
    :cond_1b89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1900
    :cond_1ba9
    :goto_1ba9
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a41

    :cond_1bb2
    :goto_1bb2
    const-string v0, "\u81ea\u52a8\u5347\u7ea7,\u6e05\u7a7a\u8bbe\u5907\u5217\u8868"

    .line 1896
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1897
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, v3, v14}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_1bc0
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230flutter\u7aef\u6a21\u62dfbyte\u6570\u7ec4\u53d1\u9001\u6307\u4ee4"

    .line 1946
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1947
    new-instance v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandJournalResponse;-><init>()V

    const-string v2, "11:22:33"

    .line 1948
    iput-object v2, v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    const-string v2, "123456"

    .line 1949
    iput-object v2, v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    .line 1950
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v0

    .line 1951
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6a21\u62dfbyte\u6570\u7ec4\u5185\u5bb9:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1952
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6a21\u62dfbyte\u6570\u7ec4\u5185\u5bb9:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1953
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda4;-><init>(Lcn/yoozworld/watch/ui/BLfLst;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1955
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v0}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda5;-><init>(Lcn/yoozworld/watch/ui/BLfLst;[B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a41

    :pswitch_1c18
    const-string v2, "sport_data"

    .line 783
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 784
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;

    .line 785
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->saveSportRecordFromPhoneEntitiesToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V

    .line 787
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;-><init>(Landroid/content/Context;)V

    const-string v2, "sport_ids"

    invoke-virtual {v0, v2}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->clearNotificationChannel(Ljava/lang/String;)V

    .line 791
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->stopService()V

    goto/16 :goto_2a41

    .line 1881
    :pswitch_1c49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7761\u7720\u72b6\u6001\u5207\u6362\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1882
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->querySleepStatusInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1883
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1884
    :goto_1c8d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1ca3

    .line 1885
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;->getSensor_data_sleep_status()Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1c8d

    .line 1887
    :cond_1ca3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c \u7761\u7720 info :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1888
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1ccc
    const-string v2, "file"

    .line 909
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/yoozworld/watch/utils/UserDataUtils;->writeFlutterCrashToLocal(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_1cdb
    const-string v2, "sedentaryRemindConfig"

    .line 1565
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1567
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;

    .line 1568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e45\u5750\u63d0\u9192:"

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

    .line 1569
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    .line 1806
    :pswitch_1d24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd0\u52a8\u8bb0\u5f55\u67e5\u8be2\u7ed3\u679c ,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1808
    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v4, 0xa8c0

    add-int/2addr v4, v0

    .line 1810
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->querySportRecordFromWatchInInterval(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 1811
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1812
    :goto_1d6c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v14, v6, :cond_1d8a

    .line 1813
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;

    invoke-virtual {v6}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v6

    .line 1814
    iget v7, v6, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    if-lt v7, v3, :cond_1d87

    iget v7, v6, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    if-gt v7, v0, :cond_1d87

    .line 1815
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d87
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d6c

    .line 1817
    :cond_1d8a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c-\u8fd0\u52a8\u8bb0\u5f55\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1818
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1db3
    const-string v2, "isOpen"

    .line 548
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1dc3

    const/4 v13, 0x1

    goto :goto_1dc4

    :cond_1dc3
    const/4 v13, 0x2

    .line 550
    :goto_1dc4
    invoke-static {v13}, Lcn/baos/watch/sdk/BasSdk;->findDevice(I)V

    goto/16 :goto_2a41

    .line 2003
    :pswitch_1dc9
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->querySwitchOnlyNotice()Z

    move-result v0

    .line 2004
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSwitchOnlyNoticeStatus----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 2005
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->querySwitchOnlyNotice()Z

    .line 2006
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 2032
    :pswitch_1df7
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_FIND_PHONE"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2034
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1269
    :pswitch_1e09
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectSuccess()Z

    move-result v0

    if-eqz v0, :cond_1e15

    const/4 v14, 0x4

    goto :goto_1e16

    :cond_1e15
    const/4 v14, 0x0

    .line 1270
    :goto_1e16
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    const/4 v3, 0x4

    if-eq v14, v3, :cond_1e36

    .line 1272
    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v3, :cond_1e34

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v3, :cond_1e2a

    goto :goto_1e34

    .line 1274
    :cond_1e2a
    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v3, :cond_1e32

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v3, :cond_1e36

    :cond_1e32
    const/4 v13, 0x1

    goto :goto_1e37

    :cond_1e34
    :goto_1e34
    const/4 v13, 0x2

    goto :goto_1e37

    :cond_1e36
    move v13, v14

    .line 1278
    :goto_1e37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5b89\u5353\u7aef\u83b7\u53d6\u84dd\u7259\u72b6\u6001:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1279
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 735
    :pswitch_1e52
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->startService()V

    goto/16 :goto_2a41

    :pswitch_1e5b
    const-string v2, "sport_detail"

    .line 795
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;

    .line 797
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->saveSportModeEntitiesPhoneToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V

    goto/16 :goto_2a41

    :pswitch_1e79
    const-string v2, "getWatchType"

    .line 1559
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672c\u5730\u751f\u6210zpl\u6253\u5370\u5417\u6587\u4ef6,mac\u5730\u5740:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1561
    new-instance v2, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;

    invoke-direct {v2}, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;-><init>()V

    .line 1562
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->saveSnCodeToLocal(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_1e9f
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u4fe1\u606f,\u5305\u542b\u8bbe\u5907\u578b\u53f7\uff0c\u8bbe\u5907\u540d\u79f0\uff0c\u8bbe\u5907\u5e8f\u5217\u53f7\uff0c\u8f6f\u4ef6\u7248\u672c\u53f7\uff0c\u786c\u4ef6\u7248\u672c\u53f7"

    .line 1505
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1506
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda17;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z

    goto/16 :goto_2a41

    .line 642
    :pswitch_1eb2
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/DataInsertUtils;->insertData(Landroid/content/Context;)V

    goto/16 :goto_2a41

    .line 1362
    :pswitch_1eb9
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->getAllConfig()Ljava/lang/String;

    move-result-object v0

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5df2\u7ed1\u5b9amacAddress\u5730\u5740-list"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1364
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1ed8
    const-string v2, "training"

    .line 708
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;

    .line 710
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendSportsPlanToWatch(Lcn/baos/watch/sdk/entitiy/SportPlansEntity;)Z

    goto/16 :goto_2a41

    :pswitch_1ef6
    const-string v0, "\u542f\u52a8\u81ea\u52a8\u5316\u6d4b\u8bd5"

    .line 1721
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->setContext(Landroid/content/Context;)V

    .line 1723
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v2, 0x2711

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2a41

    :pswitch_1f13
    const-string v2, "id"

    .line 661
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 662
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->checkWatchLanguage(Landroid/content/Context;I)Z

    move-result v2

    .line 663
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->getWatchLanguageIndex(Landroid/content/Context;I)I

    move-result v3

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setWatchLanguage----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_2a41

    .line 666
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setDeviceLangeuage(II)Z

    goto/16 :goto_2a41

    .line 1327
    :pswitch_1f5c
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/WorldUtils;->getWorldTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1821
    :pswitch_1f67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd0\u52a8\u8bb0\u5f55\u7ebf\u6027\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679csportSensorDataSportModeQuery,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1822
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->querySportModeInIntervalPhone(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1824
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_1fce
    const-string v2, "daily_life"

    .line 738
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-daily_life--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 740
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    if-eqz v0, :cond_2a41

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 743
    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 744
    iget v4, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iput v4, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 745
    iget v4, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iput v4, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 746
    iget v4, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iput v4, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 747
    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iput v0, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v18

    long-to-int v0, v4

    iput v0, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 750
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;-><init>()V

    .line 751
    iput-object v2, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 752
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->saveData(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    goto/16 :goto_2a41

    :pswitch_202b
    const-string v2, "userInfoConfig"

    .line 1011
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1012
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/User_info_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/User_info_config;

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u4eba\u4fe1\u606f\u4fee\u6539-\u53d1\u9001\u7ed9\u624b\u8868:"

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

    .line 1014
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    :pswitch_2064
    const-string v0, "\u4e0a\u4f20\u624b\u673a\u65e5\u5fd7"

    .line 1087
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1088
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_2095

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2095

    .line 1089
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->endrunFlag()V

    .line 1090
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->endThread()V

    .line 1091
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getAllDataFileName()Ljava/util/ArrayList;

    move-result-object v0

    .line 1092
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1094
    :cond_2095
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_209a
    const-string v0, "--isBlePrivacy--"

    .line 631
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 632
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20c3

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 633
    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20c3

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 634
    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20be

    goto :goto_20c3

    .line 638
    :cond_20be
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 636
    :cond_20c3
    :goto_20c3
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_20c8
    const-string v0, "\u83b7\u53d6\u901a\u8baf\u5f55"

    .line 1304
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1305
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda14;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getContactInfo(Lcn/baos/watch/sdk/interfac/contact/OnContactListener;)Z

    .line 1313
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1388
    :pswitch_20de
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->isBleOpen()Z

    move-result v0

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5224\u65ad\u84dd\u7259\u662f\u5426\u6253\u5f00:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1390
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2101
    const-string v3, "calculateLineDistance"

    .line 1017
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1018
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcn/baos/watch/sdk/code/entity/GaodeTwoGpsEntity;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/code/entity/GaodeTwoGpsEntity;

    const-string v0, "distance"

    .line 1023
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1766
    :pswitch_211d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9759\u606f\u5fc3\u7387\u67e5\u8be2,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1767
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->queryDailyRhrInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1768
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9759\u606f\u5fc3\u7387\u4ece\u6570\u636e\u67e5\u8be2\u6570\u636e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1769
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1770
    :goto_2177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_218d

    .line 1771
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2177

    .line 1773
    :cond_218d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1774
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1246
    :pswitch_21b4
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    const-class v4, Lcn/yoozworld/watch/ui/QRCodeScanActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "title"

    .line 1247
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "tips"

    .line 1248
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "scanTitle"

    .line 1249
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "scanTips"

    .line 1250
    invoke-virtual {v0, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "scanTab"

    .line 1251
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "title"

    .line 1252
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "tips"

    .line 1253
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scanTitle"

    .line 1254
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scanTips"

    .line 1255
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "scan_tab"

    .line 1256
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    sget-object v0, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Lcn/yoozworld/watch/ui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2a41

    :pswitch_2207
    const-string v2, "\u8fde\u63a5\u84dd\u7259-connectBle-,flutter"

    .line 1229
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1230
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v12, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2223

    .line 1233
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    const-string v0, "\u8fde\u63a5\u84dd\u7259-\u672a\u7ed1\u5b9a,\u81ea\u52a8\u5347\u7ea7\u6a21\u5f0f\uff0c\u542f\u52a8\u968f\u673a\u8fde\u63a5"

    .line 1234
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1237
    :cond_2223
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "isScan"

    .line 1238
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fde\u63a5\u84dd\u7259-connectBle-,macAddress:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---- isScan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1240
    new-instance v3, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v3}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v4, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->startConnect(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2a41

    .line 1734
    :pswitch_225d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u5b9e\u65f6\u6570\u636e\u65e5\u5e38\u6d3b\u52a8\u67e5\u8be2,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1735
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->queryDailyActiveInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1736
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1737
    :goto_22a1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_22b7

    .line 1738
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_22a1

    .line 1740
    :cond_22b7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u624b\u673a\u7aef\u5b9e\u65f6\u6570\u636e\u65e5\u5e38\u6d3b\u52a8\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1741
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1837
    :pswitch_22e0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6885\u6258\u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1838
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->queryMetoModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1839
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6885\u6258-\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1840
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2347
    const-string v3, "setSwitchCallPhoneNotification"

    .line 1979
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1980
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v4, "SWITCH_CALL_PHONE_NOTIFICATION"

    invoke-static {v3, v4, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1982
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2363
    const-string v2, "mediaKey"

    .line 1926
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1927
    new-instance v2, Lcn/baos/watch/w100/messages/MusicControlRequest;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/MusicControlRequest;-><init>()V

    .line 1928
    iput v0, v2, Lcn/baos/watch/w100/messages/MusicControlRequest;->action:I

    .line 1929
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handleCommandFromWatchToControlMusic(Lcn/baos/watch/w100/messages/MusicControlRequest;)V

    goto/16 :goto_2a41

    .line 1917
    :pswitch_237f
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isInTransmission()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 531
    :pswitch_2390
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/WorldUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1974
    :pswitch_239f
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_CALL_PHONE_NOTIFICATION"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1975
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_23b1
    const-string v2, "sport_gps"

    .line 768
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;

    .line 770
    new-instance v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    invoke-direct {v2}, Lcn/baos/watch/sdk/database/gps/GpslocEntity;-><init>()V

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v18

    iput-wide v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    const-string v3, "amap"

    .line 774
    iput-object v3, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 776
    iget-wide v3, v0, Lcn/yoozworld/watch/utils/notifi/SportUpdateEntity;->lon:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2a41

    .line 777
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    goto/16 :goto_2a41

    :pswitch_2426
    const-string v0, "\u538b\u7f29\u5e76\u5206\u4eab\u624b\u673a\u65e5\u5fd7"

    .line 1068
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->getInstance()Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    move-result-object v0

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->setContext(Landroid/app/Activity;)V

    .line 1070
    invoke-static {}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->getInstance()Lcn/baos/watch/sdk/util/ShareZipFileUtils;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$5;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$5;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v2}, Lcn/baos/watch/sdk/util/ShareZipFileUtils;->shareZipFile(ILcn/baos/watch/sdk/util/ZipShareCallback;)V

    goto/16 :goto_2a41

    .line 1971
    :pswitch_2444
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/yoozworld/watch/utils/UserDataUtils;->callPhone(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_2451
    const-string v0, "\u542f\u52a8\u5c0f\u5305\u6d4b\u8bd5"

    .line 1730
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1731
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v2, 0x3f0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2a41

    :pswitch_246a
    const-string v0, "-----app---\u624b\u52a8\u70b9\u51fb\u914d\u5bf9\u7a97\u53e3----BT\u5f39\u7a97\u903b\u8f91---"

    .line 865
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v2, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_BOND_BT_DIALOG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    const-string v0, "---connectBt-requestPairDevice-\u81ea\u52a8\u5206\u53d1"

    .line 867
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    if-eqz v0, :cond_2491

    .line 869
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->requestPairBtDevice()V

    goto/16 :goto_2a41

    :cond_2491
    const-string v0, "-----app---\u624b\u52a8\u70b9\u51fb\u914d\u5bf9\u7a97\u53e3----BT\u5f39\u7a97\u903b\u8f91---\u672a\u7ed1\u5b9a--\u4e0d\u8d70\u903b\u8f91"

    .line 871
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_2498
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u6cb9\u91cf"

    .line 1541
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1542
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getOilBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;)Z

    goto/16 :goto_2a41

    .line 1265
    :pswitch_24ab
    sget-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isAutoDisconnect:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isAutoDisconnect:Z

    goto/16 :goto_2a41

    :pswitch_24b3
    const-string v0, "\u6253\u5f00\u624b\u673a\u65e5\u5fd7"

    .line 1050
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1051
    iget-boolean v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->hasLogcatThreadOpen:Z

    if-nez v0, :cond_24cd

    .line 1052
    new-instance v0, Lcn/baos/watch/sdk/util/LogcatThread;

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/baos/watch/sdk/util/LogcatThread;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    .line 1053
    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->startThread()V

    const/4 v0, 0x1

    .line 1054
    iput-boolean v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->hasLogcatThreadOpen:Z

    goto/16 :goto_2a41

    .line 1056
    :cond_24cd
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->startRunThread()V

    goto/16 :goto_2a41

    .line 1446
    :pswitch_24d4
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7ebf\u4e0a\u6d4b\u8bd5\u6a21\u5f0f\u5f00\u5173:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1448
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v3, v11, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1450
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2504
    goto/16 :goto_2a41

    .line 832
    :pswitch_2533
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v0

    iget v0, v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    if-nez v0, :cond_254d

    .line 835
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int v0, v3

    const/4 v3, 0x3

    if-ge v0, v3, :cond_254b

    move v9, v3

    goto :goto_254e

    :cond_254b
    move v9, v0

    goto :goto_254e

    :cond_254d
    const/4 v9, 0x0

    .line 842
    :goto_254e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2557
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u7535\u91cf,\u5305\u542b\u5f53\u524d\u5269\u4f59\u7535\u91cf0-100,charging=1\u672a\u5145\u7535, 2\u5145\u7535\u4e2d,0\u65e0\u610f\u4e49"

    .line 1530
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda19;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;)Z

    goto/16 :goto_2a41

    .line 1827
    :pswitch_256a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd0\u52a8\u5fc3\u7387\u7ebf\u6027\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->querySportHrateInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1829
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 1830
    :goto_25ae
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_25c4

    .line 1831
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->getSensor_data_sport_hrate()Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_25ae

    .line 1833
    :cond_25c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1834
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_25eb
    const-string v0, "\u6e90\u751f\u7aef->\u8dcc\u5012\u68c0\u6d4b"

    .line 1520
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda18;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getFallInfo(Lcn/baos/watch/sdk/interfac/fall/OnFallListener;)Z

    goto/16 :goto_2a41

    .line 1987
    :pswitch_25fe
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_WEATHER_SYNC_NOTIFICATION"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1989
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_2610
    const-string v0, "\u542f\u52a8\u5927\u5305\u6d4b\u8bd5"

    .line 1726
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1727
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v2, 0x3fa

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2a41

    :pswitch_2624
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230\u6302\u65ad\u7535\u8bdd\u6307\u4ee4"

    .line 1173
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->endCall(Landroid/content/Context;)V

    .line 1175
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->endCall()V

    goto/16 :goto_2a41

    :pswitch_263a
    const-string v3, "setWorldTime"

    .line 1352
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u7f6e\u4e16\u754c\u65f6\u95f4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2676

    .line 1356
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcn/yoozworld/watch/ui/BLfLst$7;

    invoke-direct {v4, v1}, Lcn/yoozworld/watch/ui/BLfLst$7;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v4}, Lcn/yoozworld/watch/ui/BLfLst$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1357
    invoke-static {v0}, Lcn/baos/watch/sdk/BasSdk;->setWorldTime(Ljava/util/List;)Z

    .line 1359
    :cond_2676
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_267b
    const-string v2, "mac"

    .line 1114
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete_history:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1116
    new-instance v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-direct {v2}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;-><init>()V

    .line 1117
    iput-object v0, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1118
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->deleteCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z

    .line 1119
    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->delRemove(Ljava/lang/String;)V

    goto/16 :goto_2a41

    :pswitch_26ad
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230\u6765\u7535\u9759\u97f3\u6307\u4ee4"

    .line 1168
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->quietCallOn()V

    goto/16 :goto_2a41

    :pswitch_26bb
    const-string v2, "setAppConfig"

    .line 695
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    .line 697
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendAppMarkeToWatch(Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)Z

    goto/16 :goto_2a41

    :pswitch_26d9
    const-string v2, "healthMeasureConfig"

    .line 1596
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1598
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Health_measure_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Health_measure_config;

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5fc3\u7387\u68c0\u6d4b:"

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

    .line 1600
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    :pswitch_2722
    const-string v2, "remindConfig"

    .line 681
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 682
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$2;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$2;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v2, v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getCommonRemindConfig(ILcn/baos/watch/sdk/interfac/app/OnRemindListener;)Z

    goto/16 :goto_2a41

    .line 1849
    :pswitch_273c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8840\u538b \u6982\u51b5\u6570\u636e\u8be6\u60c5\u67e5\u8be2\u7ed3\u679c,start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1850
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->queryBpModeInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1851
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8840\u538b-\u624b\u673a\u7aef\u67e5\u8be2\u7ed3\u679c:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1852
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 553
    :pswitch_27a3
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->googleLogin()V

    goto/16 :goto_2a41

    :pswitch_27ac
    const-string v0, "\u4e0a\u4f20\u624b\u673a\u65e5\u5fd7"

    .line 1060
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1061
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_27ca

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27ca

    .line 1062
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 1064
    :cond_27ca
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_27cf
    const/4 v4, 0x0

    .line 1777
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u624b\u673a\u8840\u6c27\u67e5\u8be2,start:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object v3

    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->queryDailySpoInInterval(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1779
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v14, v4

    .line 1780
    :goto_2814
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_282a

    .line 1781
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;->getSensor_data_daily_spo()Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2814

    .line 1783
    :cond_282a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1784
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 534
    :pswitch_2851
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/BLfLst;->showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    .line 535
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 536
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 537
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2a41

    :pswitch_2867
    const-string v2, "openOrCloseWatchLogUpload"

    .line 1160
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1161
    new-instance v2, Lcn/baos/watch/w100/messages/CommandJournalRequest;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/CommandJournalRequest;-><init>()V

    .line 1162
    iput v0, v2, Lcn/baos/watch/w100/messages/CommandJournalRequest;->tag:I

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u5173\u65e5\u5fd7\u6d88\u606f:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1164
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_2a41

    .line 853
    :pswitch_2899
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBtBondStatus()Z

    move-result v0

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---btBondStatus-:btstatus:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v3

    .line 856
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---btBondStatus-:connectConfig:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v3, :cond_28ef

    .line 857
    iget-object v4, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28ef

    iget-object v3, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    const-string v4, "W200"

    .line 858
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28ef

    .line 859
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    .line 861
    :cond_28ef
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_2a41

    :pswitch_28f8
    move-object/from16 v2, v20

    .line 713
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 715
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;

    .line 716
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendComomnRemindToWatch(Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;)Z

    goto/16 :goto_2a41

    :pswitch_2926
    const-string v2, "requestGetData"

    .line 1123
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1124
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Request_get_data;

    .line 1125
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    goto/16 :goto_2a41

    .line 620
    :pswitch_2944
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfig()V

    .line 621
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    goto/16 :goto_2a41

    .line 1099
    :pswitch_2954
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_2a41

    .line 1100
    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->cleanLogFiles()V

    .line 1101
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->startrunFlag()V

    goto/16 :goto_2a41

    :pswitch_2962
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230flutter\u7aef\u83b7\u53d6\u5929\u6c14\u6307\u4ee4"

    .line 1932
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1934
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda3;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2a41

    :pswitch_2973
    const-string v2, "path"

    .line 905
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 906
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->updatePiture(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2a41

    .line 1466
    :pswitch_2982
    new-instance v0, Lcn/baos/watch/w100/messages/AppSystemNotification;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AppSystemNotification;-><init>()V

    const-string v2, "\u5fae\u4fe1"

    .line 1467
    iput-object v2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5fae\u4fe1\u6d4b\u8bd5\u6d88\u606f,\u4f60\u597d:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    .line 1469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v18

    long-to-int v2, v2

    iput v2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->start_time_s:I

    const-string v2, "com.tencent.mm"

    .line 1470
    iput-object v2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1471
    iput v2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->highlight:I

    .line 1472
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    const-string v2, "weixin"

    invoke-static {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1473
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u9001\u7cfb\u7edf\u901a\u77e5:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto :goto_2a41

    .line 1186
    :pswitch_29d6
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startScan()V

    goto :goto_2a41

    .line 811
    :pswitch_29de
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    .line 812
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.OPENABLE"

    .line 813
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    sget-object v3, Lcn/yoozworld/watch/ui/HomeActivity;->activity:Lcn/yoozworld/watch/ui/HomeActivity;

    const/16 v4, 0x64

    invoke-virtual {v3, v0, v4}, Lcn/yoozworld/watch/ui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 815
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2a41

    :pswitch_29fa
    const-string v2, "menstrualRemindConfig"

    .line 1582
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1584
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Menstrual_remind_config;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/w100/messages/Menstrual_remind_config;

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5973\u6027\u5065\u5eb7:"

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

    .line 1586
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    :cond_2a41
    :goto_2a41
    :pswitch_2a41
    return-void

    :sswitch_data_2a42
    .sparse-switch
        -0x7ff529d4 -> :sswitch_9a5
        -0x7f18dab4 -> :sswitch_999
        -0x7eeb0201 -> :sswitch_98d
        -0x7ca98f43 -> :sswitch_981
        -0x7b9a080b -> :sswitch_975
        -0x79468c42 -> :sswitch_969
        -0x784db39d -> :sswitch_95d
        -0x742eac3a -> :sswitch_951
        -0x7324316f -> :sswitch_943
        -0x7190caf3 -> :sswitch_937
        -0x70df3d79 -> :sswitch_929
        -0x6f682c9f -> :sswitch_91b
        -0x6f0e56ec -> :sswitch_90d
        -0x6e8beba8 -> :sswitch_8ff
        -0x6e111352 -> :sswitch_8f1
        -0x6c184fe9 -> :sswitch_8e3
        -0x6ae59e1d -> :sswitch_8d5
        -0x69cf8734 -> :sswitch_8c7
        -0x699031a9 -> :sswitch_8b9
        -0x67c5efd8 -> :sswitch_8ab
        -0x66a206bc -> :sswitch_89d
        -0x666ec17f -> :sswitch_88f
        -0x6562ffcf -> :sswitch_881
        -0x62e667b0 -> :sswitch_873
        -0x615204c3 -> :sswitch_865
        -0x5fd46e27 -> :sswitch_857
        -0x5ed1c16d -> :sswitch_849
        -0x5ad5d650 -> :sswitch_83b
        -0x56d147c1 -> :sswitch_82d
        -0x569bf182 -> :sswitch_81f
        -0x56698529 -> :sswitch_811
        -0x5503e5b6 -> :sswitch_803
        -0x507edfff -> :sswitch_7f7
        -0x5023d86d -> :sswitch_7e9
        -0x4df56489 -> :sswitch_7db
        -0x4d949c6e -> :sswitch_7cd
        -0x49e1577f -> :sswitch_7bf
        -0x485a75cc -> :sswitch_7b1
        -0x3f326250 -> :sswitch_7a3
        -0x3d50b294 -> :sswitch_795
        -0x3b3ee89b -> :sswitch_787
        -0x39d2f2a1 -> :sswitch_779
        -0x3970394f -> :sswitch_76b
        -0x390e30be -> :sswitch_75d
        -0x35cce48d -> :sswitch_74f
        -0x35b10425 -> :sswitch_741
        -0x31582ddb -> :sswitch_733
        -0x2ed6da24 -> :sswitch_725
        -0x2e5f6d81 -> :sswitch_717
        -0x2e3c13ef -> :sswitch_709
        -0x2c40105e -> :sswitch_6fb
        -0x2a83399b -> :sswitch_6ed
        -0x28962571 -> :sswitch_6df
        -0x246bc645 -> :sswitch_6d1
        -0x23becc48 -> :sswitch_6c3
        -0x21487189 -> :sswitch_6b5
        -0x213a39f6 -> :sswitch_6a7
        -0x1f502045 -> :sswitch_699
        -0x1d97d0f3 -> :sswitch_68b
        -0x1ca7d8f7 -> :sswitch_67d
        -0x1ae7b8ac -> :sswitch_66f
        -0x18b6fb95 -> :sswitch_661
        -0x17105ffb -> :sswitch_653
        -0x15ee38b5 -> :sswitch_645
        -0x1588dbaa -> :sswitch_637
        -0x143fa887 -> :sswitch_629
        -0x12e54ba5 -> :sswitch_61b
        -0x126debba -> :sswitch_60d
        -0x1151f099 -> :sswitch_5ff
        -0x114cc60d -> :sswitch_5f1
        -0x10f09c84 -> :sswitch_5e3
        -0x10361829 -> :sswitch_5d5
        -0xd80bca9 -> :sswitch_5c7
        -0xd34e7d5 -> :sswitch_5b9
        -0xb795300 -> :sswitch_5ab
        -0x9edb748 -> :sswitch_59d
        -0x84d291d -> :sswitch_58f
        -0x69ba54a -> :sswitch_581
        -0x5d50269 -> :sswitch_573
        -0x177e361 -> :sswitch_565
        -0x8cf66b -> :sswitch_557
        0x1d0d1a -> :sswitch_549
        0x387d519 -> :sswitch_53b
        0x3baa64c -> :sswitch_52d
        0x5102d00 -> :sswitch_51f
        0x64e379a -> :sswitch_511
        0x66a020d -> :sswitch_503
        0x69fe60c -> :sswitch_4f5
        0x76d2824 -> :sswitch_4e7
        0x78b971f -> :sswitch_4d9
        0x8b36bbd -> :sswitch_4cb
        0xca583f4 -> :sswitch_4bd
        0x1051b60e -> :sswitch_4af
        0x12944b7f -> :sswitch_4a1
        0x12eba956 -> :sswitch_493
        0x13481895 -> :sswitch_485
        0x134d6d02 -> :sswitch_477
        0x1899b09a -> :sswitch_469
        0x1cda6528 -> :sswitch_45b
        0x1cda6529 -> :sswitch_44d
        0x1e9d702b -> :sswitch_43f
        0x1f9d589c -> :sswitch_431
        0x222ab484 -> :sswitch_423
        0x2356ab44 -> :sswitch_415
        0x249c79fd -> :sswitch_407
        0x265c2a9c -> :sswitch_3f9
        0x26ca490c -> :sswitch_3eb
        0x27b49d93 -> :sswitch_3dd
        0x28abc579 -> :sswitch_3cf
        0x29a1b19f -> :sswitch_3c1
        0x2a6137f8 -> :sswitch_3b3
        0x2d9d6cba -> :sswitch_3a5
        0x2e8adc24 -> :sswitch_397
        0x3130a263 -> :sswitch_389
        0x33cba4d6 -> :sswitch_37b
        0x35ab3281 -> :sswitch_36d
        0x3811ba2c -> :sswitch_35f
        0x385a99f8 -> :sswitch_351
        0x3ae63e98 -> :sswitch_343
        0x3d3d7e0d -> :sswitch_335
        0x4178ed7e -> :sswitch_327
        0x425a3ac9 -> :sswitch_319
        0x439e3bf9 -> :sswitch_30b
        0x44b2112f -> :sswitch_2fd
        0x46123922 -> :sswitch_2ef
        0x48d00622 -> :sswitch_2e1
        0x4c149589 -> :sswitch_2d3
        0x51770491 -> :sswitch_2c5
        0x51fe2f22 -> :sswitch_2b7
        0x529446af -> :sswitch_2a9
        0x53058003 -> :sswitch_29b
        0x5433f1d1 -> :sswitch_28d
        0x54977f35 -> :sswitch_27f
        0x54b5702e -> :sswitch_273
        0x54c96e8c -> :sswitch_265
        0x551de69a -> :sswitch_257
        0x5825f85a -> :sswitch_249
        0x5875c377 -> :sswitch_23b
        0x59934111 -> :sswitch_22d
        0x5b5efb25 -> :sswitch_21f
        0x5b72c501 -> :sswitch_211
        0x5b7f771e -> :sswitch_203
        0x5d42d65d -> :sswitch_1f5
        0x5f1c682a -> :sswitch_1e7
        0x5f7986dd -> :sswitch_1db
        0x637dca75 -> :sswitch_1cd
        0x650eec54 -> :sswitch_1bf
        0x6635719f -> :sswitch_1b1
        0x6696d883 -> :sswitch_1a3
        0x66e2c3be -> :sswitch_195
        0x6727c6f7 -> :sswitch_187
        0x67f5d9e2 -> :sswitch_179
        0x6a587f9b -> :sswitch_16b
        0x6a648e3f -> :sswitch_15d
        0x6aa3b8a6 -> :sswitch_14f
        0x6bc96cde -> :sswitch_141
        0x6c41b8e5 -> :sswitch_133
        0x6c491c08 -> :sswitch_125
        0x6de61030 -> :sswitch_117
        0x6e1f2780 -> :sswitch_109
        0x6e5819a0 -> :sswitch_fb
        0x6e6101f1 -> :sswitch_ed
        0x72a6a72c -> :sswitch_df
        0x734b5557 -> :sswitch_d1
        0x73ebf2a4 -> :sswitch_c3
        0x7421050a -> :sswitch_b5
        0x74d781a2 -> :sswitch_a7
        0x77bc01ad -> :sswitch_99
        0x77f7c07d -> :sswitch_8b
        0x78f579e9 -> :sswitch_7d
        0x7a4949a1 -> :sswitch_6f
        0x7e376718 -> :sswitch_61
        0x7e9ac808 -> :sswitch_53
        0x7f1388d9 -> :sswitch_45
        0x7f4fde80 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_2d00
    .packed-switch 0x0
        :pswitch_29fa
        :pswitch_29de
        :pswitch_29d6
        :pswitch_2982
        :pswitch_2973
        :pswitch_2962
        :pswitch_2954
        :pswitch_2944
        :pswitch_2926
        :pswitch_28f8
        :pswitch_2899
        :pswitch_2867
        :pswitch_2a41
        :pswitch_2851
        :pswitch_27cf
        :pswitch_27ac
        :pswitch_27a3
        :pswitch_2a41
        :pswitch_273c
        :pswitch_2722
        :pswitch_26d9
        :pswitch_26bb
        :pswitch_26ad
        :pswitch_267b
        :pswitch_263a
        :pswitch_2624
        :pswitch_2610
        :pswitch_25fe
        :pswitch_25eb
        :pswitch_256a
        :pswitch_2557
        :pswitch_2504
        :pswitch_24d4
        :pswitch_24b3
        :pswitch_24ab
        :pswitch_2498
        :pswitch_246a
        :pswitch_2451
        :pswitch_2444
        :pswitch_2426
        :pswitch_2a41
        :pswitch_23b1
        :pswitch_239f
        :pswitch_2390
        :pswitch_237f
        :pswitch_2363
        :pswitch_2347
        :pswitch_22e0
        :pswitch_225d
        :pswitch_2207
        :pswitch_21b4
        :pswitch_211d
        :pswitch_2101
        :pswitch_20de
        :pswitch_20c8
        :pswitch_209a
        :pswitch_2064
        :pswitch_202b
        :pswitch_1fce
        :pswitch_1f67
        :pswitch_1f5c
        :pswitch_2a41
        :pswitch_1f13
        :pswitch_1ef6
        :pswitch_1ed8
        :pswitch_1eb9
        :pswitch_2a41
        :pswitch_1eb2
        :pswitch_1e9f
        :pswitch_1e79
        :pswitch_1e5b
        :pswitch_1e52
        :pswitch_1e09
        :pswitch_1df7
        :pswitch_1dc9
        :pswitch_1db3
        :pswitch_1d24
        :pswitch_1cdb
        :pswitch_1ccc
        :pswitch_1c49
        :pswitch_1c18
        :pswitch_1bc0
        :pswitch_1b53
        :pswitch_1b48
        :pswitch_2a41
        :pswitch_1afd
        :pswitch_1af4
        :pswitch_1ac6
        :pswitch_1aaa
        :pswitch_1a9c
        :pswitch_1a83
        :pswitch_1a0e
        :pswitch_19c5
        :pswitch_19b4
        :pswitch_1973
        :pswitch_1966
        :pswitch_192f
        :pswitch_1909
        :pswitch_1902
        :pswitch_18fb
        :pswitch_188a
        :pswitch_187e
        :pswitch_186c
        :pswitch_2533
        :pswitch_1840
        :pswitch_1829
        :pswitch_17f9
        :pswitch_17d2
        :pswitch_1797
        :pswitch_177b
        :pswitch_1768
        :pswitch_1726
        :pswitch_16b7
        :pswitch_166e
        :pswitch_15d7
        :pswitch_15c8
        :pswitch_15b5
        :pswitch_1592
        :pswitch_1564
        :pswitch_1556
        :pswitch_1541
        :pswitch_152b
        :pswitch_1541
        :pswitch_1518
        :pswitch_150f
        :pswitch_1478
        :pswitch_1409
        :pswitch_13e1
        :pswitch_13d8
        :pswitch_13d1
        :pswitch_13aa
        :pswitch_1399
        :pswitch_1376
        :pswitch_1346
        :pswitch_131f
        :pswitch_12b8
        :pswitch_12a2
        :pswitch_1280
        :pswitch_2a41
        :pswitch_1253
        :pswitch_1212
        :pswitch_11e5
        :pswitch_117e
        :pswitch_1130
        :pswitch_1100
        :pswitch_10f7
        :pswitch_108e
        :pswitch_1085
        :pswitch_1066
        :pswitch_fe4
        :pswitch_fdd
        :pswitch_fcb
        :pswitch_1840
        :pswitch_f64
        :pswitch_f51
        :pswitch_f2b
        :pswitch_f16
        :pswitch_f0f
        :pswitch_f01
        :pswitch_ed1
        :pswitch_e48
        :pswitch_e25
        :pswitch_de3
        :pswitch_ddc
        :pswitch_dd3
        :pswitch_dcc
        :pswitch_ced
        :pswitch_cb4
        :pswitch_c76
        :pswitch_c5a
        :pswitch_c2a
        :pswitch_bef
        :pswitch_29d6
        :pswitch_9d5
        :pswitch_9cc
    .end packed-switch
.end method

.method public transferFile(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transferFile--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  fileType--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcn/yoozworld/watch/ui/BLfLst$1;

    invoke-direct {p1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v1, p2, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->transferFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V

    return-void
.end method

.method private showNativeDiagnostics(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .registers 8

    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    if-nez v0, :cond_start

    return-void

    :cond_start
    if-nez p1, :cond_has_data

    const-string v1, "DEVICE_CONFIG_WATCH"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->getStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_no_cached_data

    const-string v1, "Hardware Scan: FAILED (No Data)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_no_cached_data
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcn/baos/watch/w100/messages/Device_base_info;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lcn/baos/watch/w100/messages/Device_base_info;

    :cond_has_data
    const-string v1, "Hardware Scan: SUCCESS"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "VAPE FULL HARDWARE REPORT"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nSerial Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nHardware Revision (PCB): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nSoftware Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nMTU/Priority Status: MTU: 512 | Priority: HIGH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
