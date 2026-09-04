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
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9zoDZpREyKgH9EHwsMe8PSZ92bw(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$12(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ASGHUdM4vAygI4H6BVCI1-ulGn0(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$16(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BB_OdzHFjBmqJHNNXBkvyya_8fs(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$22([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNDDo6M_6be7vie-Lw7zUjjP9yw(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$9(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BjauoB-XZiYRzOt5teTBWmnDv3k(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$2(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CkwA6iz_KVVfyazc2GXtvzIflu4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$1(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OTeHYRmEM3M6oo-GZnNN6K-wZW4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$11(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O_E5P86H4jfPwWz12K61oAfMcd8(Lcn/yoozworld/watch/ui/BLfLst;Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoFc-dHI_mz10q3N50hOiOuvrTo(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$14(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QVaDdH2Vf4ymSb2iE31n_4z5KhA(Lcn/yoozworld/watch/ui/BLfLst;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$25(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2glxUw3wzcPeB4Lv14bBN9tnSA(Lcn/yoozworld/watch/ui/BLfLst;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$26(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7zsLGSUgv5EQ1iC63XvhlFbLDU(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$17(Lcn/baos/watch/w100/messages/Config_items;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V5yjPY_0udxTxxhcVcYlSKz5Fdg(Lcn/yoozworld/watch/ui/BLfLst;)V
    .locals 0

    invoke-direct {p0}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$YYUDWaEDRbXA_xvjMQt3LO-B-q0(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$23([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$g7ra5vRcl8dCYB-Mzds7semsw1Y(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$18(Lcn/baos/watch/w100/messages/Config_items;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ozWdU8bslxn2K1nsGmqYjzzie0g(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$21([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_mN_tSfua9KgqW64i7AWq1Jj-U(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$13(Lcn/baos/watch/w100/messages/Device_base_info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sl2ANHGbATelWzjXhr-DEk16yjk(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$6(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpqkUdG8Rwn93c9j_yYoKnzBDq4(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$15(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wU_UfqP7QiXNWT2SXaRFxoLoJQQ(Lcn/yoozworld/watch/ui/BLfLst;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$24([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXpEP85XaNvyeyEfJ879FhBW8PE(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->lambda$switchFlutterData$8(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    .locals 3

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
    .locals 2

    .line 224
    sget-object v0, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    if-nez v0, :cond_1

    .line 225
    const-class v0, Lcn/yoozworld/watch/ui/BLfLst;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/BLfLst;-><init>()V

    sput-object v1, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    .line 229
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 231
    :cond_1
    :goto_0
    sget-object v0, Lcn/yoozworld/watch/ui/BLfLst;->instance:Lcn/yoozworld/watch/ui/BLfLst;

    return-object v0
.end method

.method static synthetic lambda$createMethodChannel$0(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

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
    .locals 4

    .line 591
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v1, "DEVICE_CONFIG_WATCH"

    invoke-static {v0, v1, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
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

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u4fe1\u606f,\u53d1\u9001\u7ed9\u53d1\u9001\u7ed9flutter:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "deviceInfo"

    .line 598
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$switchFlutterData$10()V
    .locals 3

    .line 1443
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$11(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 4

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

    if-eqz v0, :cond_0

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
    :cond_0
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
    .locals 2

    .line 1507
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda11;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$13(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 2

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
    .locals 2

    .line 1522
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$15(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V
    .locals 2

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
    .locals 2

    .line 1532
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda24;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$17(Lcn/baos/watch/w100/messages/Config_items;)V
    .locals 2

    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u6cb9\u91cf\u53d1\u9001\u7ed9flutter:"

    .line 1545
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1553
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$switchFlutterData$18(Lcn/baos/watch/w100/messages/Config_items;)V
    .locals 2

    .line 1543
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda23;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Config_items;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$switchFlutterData$19(Lcn/baos/watch/sdk/database/gps/GpslocEntity;Lcn/baos/watch/sdk/database/gps/GpslocEntity;)I
    .locals 2

    .line 1793
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    iget-wide p0, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$switchFlutterData$2(Lcn/baos/watch/w100/messages/Device_base_info;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda26;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lcn/baos/watch/w100/messages/Device_base_info;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$20()V
    .locals 2

    const-string v0, "getWeather"

    const/4 v1, 0x0

    .line 1934
    invoke-virtual {p0, v0, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$21([B)V
    .locals 1

    const-string v0, "collectWatchLoggerRequest"

    .line 1953
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$22([B)V
    .locals 1

    const-string v0, "collectWatchLoggerRequest"

    .line 1955
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$23([B)V
    .locals 1

    const-string v0, "syncMessageRequest"

    .line 1961
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$24([B)V
    .locals 1

    const-string v0, "syncMessageRequest"

    .line 1963
    invoke-virtual {p0, v0, p1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$25(Z)V
    .locals 2

    .line 2051
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$11;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$11;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$26(Z)V
    .locals 2

    .line 2065
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$13;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$13;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$switchFlutterData$27(Ljava/util/ArrayList;)V
    .locals 2

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
    .locals 5

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
    .locals 1

    .line 703
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchFlutterData$4(Lio/flutter/plugin/common/MethodChannel$Result;Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V
    .locals 2

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
    .locals 2

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
    .locals 1

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
    .locals 2

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

    if-eqz p1, :cond_0

    .line 1307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1308
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1310
    :cond_0
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda25;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$switchFlutterData$8(Ljava/util/List;)V
    .locals 1

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
    .locals 7

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

    if-eqz p1, :cond_2

    .line 1336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    .line 1338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    .line 1339
    iget-object v6, v3, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityCn:Ljava/lang/String;

    iget-object v5, v5, Lcn/baos/watch/sdk/entitiy/WorldEntity;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1340
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1345
    :cond_2
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
    .locals 0

    return-void
.end method

.method public getJsonMessageChannel()Lio/flutter/plugin/common/BasicMessageChannel;
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-object v0
.end method

.method public getMethodChannel()Lio/flutter/plugin/common/MethodChannel;
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object v0
.end method

.method public invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3:"

    .line 287
    :try_start_0
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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316methodChannel"

    .line 289
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 304
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;)V
    .locals 2

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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 313
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method public invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "bleStatus"

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    .line 371
    sput p2, Lcn/yoozworld/watch/ui/BLfLst;->bleHisStatus:I

    .line 373
    :cond_0
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

    if-nez v0, :cond_1

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 375
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_1
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
    .locals 0

    const-string p3, "bleStatus"

    .line 389
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xa

    if-eq p2, p3, :cond_0

    .line 390
    sput p2, Lcn/yoozworld/watch/ui/BLfLst;->bleHisStatus:I

    .line 392
    :cond_0
    iget-object p3, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    if-nez p3, :cond_1

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 393
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_1
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
    .locals 2

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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 322
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_0
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
    .locals 2

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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 359
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
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
    .locals 2

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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 335
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_0
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
    .locals 2

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

    if-nez v0, :cond_0

    const-string p1, "\u5b89\u5353\u8c03\u7528flutter\u63a5\u53e3,\u901a\u9053\u672a\u521d\u59cb\u5316jsonMessageChannel"

    .line 347
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
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
    .locals 2

    .line 274
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/flutter/plugins/GeneratedPluginRegistrant;->registerWith(Lio/flutter/embedding/engine/FlutterEngine;)V

    invoke-direct {p0, v0}, Lcn/yoozworld/watch/ui/BLfLst;->createMethodChannel(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onEngineDestroy()V
    .locals 0

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

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
    .locals 1

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
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->jsonMessageChannel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method

.method public setMainActivity(Landroid/app/Activity;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setMethodChannel(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 21

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

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "requestLocationPermissions"

    .line 512
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v17, 0xae

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "packageAlbumDial"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0xad

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "startDirectScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0xac

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "translatePackage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v17, 0xab

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "sendGPSBaseToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0xaa

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "logprint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0xa9

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "bleParametersSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0xa8

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "updateDeviceResource"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0xa7

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "changeAlbumImageForWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0xa6

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "initSdk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0xa5

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "reConnectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0xa4

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "requestXiaoMiCode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0xa3

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "setContactInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0xa2

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "actionSync"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v17, 0xa1

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "sleepStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v17, 0xa0

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "responseMsg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v17, 0x9f

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "openGpsSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x9e

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "syncTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v17, 0x9d

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "syncData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x9c

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "sendSensorDataGps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v17, 0x9b

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "openSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v17, 0x9a

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "rhStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v17, 0x99

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "getMacAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x98

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "sendSleepMsgToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x97

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "openGooglePlay"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v17, 0x96

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "getNotificationAppList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v17, 0x95

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "navigateToGpsSystemSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v17, 0x94

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "stopScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v17, 0x93

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "getHistoryDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v17, 0x92

    goto/16 :goto_0

    :sswitch_1d
    const-string v5, "requestPermissions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v17, 0x91

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v17, 0x90

    goto/16 :goto_0

    :sswitch_1f
    const-string v5, "getConnectDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v17, 0x8f

    goto/16 :goto_0

    :sswitch_20
    const-string v5, "tempStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v17, 0x8e

    goto/16 :goto_0

    :sswitch_21
    const-string v5, "openSoLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v17, 0x8d

    goto/16 :goto_0

    :sswitch_22
    const-string v5, "setPrayerGps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v17, 0x8c

    goto/16 :goto_0

    :sswitch_23
    const-string v5, "screen_status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v17, 0x8b

    goto/16 :goto_0

    :sswitch_24
    const-string v5, "reloadConnect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v17, 0x8a

    goto/16 :goto_0

    :sswitch_25
    const-string v5, "appVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v17, 0x89

    goto/16 :goto_0

    :sswitch_26
    const-string v5, "sendLogToServer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v17, 0x88

    goto/16 :goto_0

    :sswitch_27
    const-string v5, "bsStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v17, 0x87

    goto/16 :goto_0

    :sswitch_28
    const-string v5, "getSwitchNotificationManageStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v17, 0x86

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v17, 0x85

    goto/16 :goto_0

    :sswitch_2a
    const-string v5, "syncMessageRequestTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v17, 0x84

    goto/16 :goto_0

    :sswitch_2b
    const-string v5, "isBindAlready"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v17, 0x83

    goto/16 :goto_0

    :sswitch_2c
    const-string v5, "syncMessageRequest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v17, 0x82

    goto/16 :goto_0

    :sswitch_2d
    const-string v5, "getPlatformVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v17, 0x81

    goto/16 :goto_0

    :sswitch_2e
    const-string v5, "requestContactsPermissions"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v17, 0x80

    goto/16 :goto_0

    :sswitch_2f
    const-string v5, "setBindStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v17, 0x7f

    goto/16 :goto_0

    :sswitch_30
    const-string v5, "gpsLocationQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v17, 0x7e

    goto/16 :goto_0

    :sswitch_31
    const-string v5, "heartRateQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v17, 0x7d

    goto/16 :goto_0

    :sswitch_32
    const-string v5, "requestOpenBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v17, 0x7c

    goto/16 :goto_0

    :sswitch_33
    const-string v5, "connectBleHandOff"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v17, 0x7b

    goto/16 :goto_0

    :sswitch_34
    const-string v5, "unBindWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v17, 0x7a

    goto/16 :goto_0

    :sswitch_35
    const-string v5, "getWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v17, 0x79

    goto/16 :goto_0

    :sswitch_36
    const-string v5, "removePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v17, 0x78

    goto/16 :goto_0

    :sswitch_37
    const-string v5, "getAppConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v17, 0x77

    goto/16 :goto_0

    :sswitch_38
    const-string v5, "setSwitchNotificationManageStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v17, 0x76

    goto/16 :goto_0

    :sswitch_39
    const-string v5, "setSwitchRaiseWristLightUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v17, 0x75

    goto/16 :goto_0

    :sswitch_3a
    const-string v5, "openBluetoothSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v17, 0x74

    goto/16 :goto_0

    :sswitch_3b
    const-string v5, "installApk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v17, 0x73

    goto/16 :goto_0

    :sswitch_3c
    const-string v5, "heartRateOnlyQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v17, 0x72

    goto/16 :goto_0

    :sswitch_3d
    const-string v5, "regularRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v17, 0x71

    goto/16 :goto_0

    :sswitch_3e
    const-string v5, "deviceInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v17, 0x70

    goto/16 :goto_0

    :sswitch_3f
    const-string v5, "switchOneAppNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v17, 0x6f

    goto/16 :goto_0

    :sswitch_40
    const-string v5, "isNotificationListenerEnabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v17, 0x6e

    goto/16 :goto_0

    :sswitch_41
    const-string v5, "setSwitchFindPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v17, 0x6d

    goto/16 :goto_0

    :sswitch_42
    const-string v5, "getCurrentDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v17, 0x6c

    goto/16 :goto_0

    :sswitch_43
    const-string v5, "SPP_IS_OPEN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v17, 0x6b

    goto/16 :goto_0

    :sswitch_44
    const-string v5, "setSwitchOnlyNoticeStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v17, 0x6a

    goto/16 :goto_0

    :sswitch_45
    const-string v5, "saveLastMac"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v17, 0x69

    goto/16 :goto_0

    :sswitch_46
    const-string v5, "getMacNow"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v17, 0x68

    goto/16 :goto_0

    :sswitch_47
    const-string v5, "gps_sener_count"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v17, 0x67

    goto/16 :goto_0

    :sswitch_48
    const-string v5, "getSwitchRaiseWristLightUp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v17, 0x66

    goto/16 :goto_0

    :sswitch_49
    const-string v5, "disconnect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v17, 0x65

    goto/16 :goto_0

    :sswitch_4a
    const-string v5, "getPhoneContacts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v17, 0x64

    goto/16 :goto_0

    :sswitch_4b
    const-string v5, "syncTime1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v17, 0x63

    goto/16 :goto_0

    :sswitch_4c
    const-string v5, "syncTime0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v17, 0x62

    goto/16 :goto_0

    :sswitch_4d
    const-string v5, "navigateToSystemHome"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v17, 0x61

    goto/16 :goto_0

    :sswitch_4e
    const-string v5, "saveMacAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v17, 0x60

    goto/16 :goto_0

    :sswitch_4f
    const-string v5, "hasCheckNeedForceOta"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v17, 0x5f

    goto/16 :goto_0

    :sswitch_50
    const-string v5, "setPrayerTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v17, 0x5e

    goto/16 :goto_0

    :sswitch_51
    const-string v5, "getWatchVersion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v17, 0x5d

    goto/16 :goto_0

    :sswitch_52
    const-string v5, "notDisturbConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v17, 0x5c

    goto/16 :goto_0

    :sswitch_53
    const-string v5, "sport_update"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v17, 0x5b

    goto/16 :goto_0

    :sswitch_54
    const-string v5, "isBindLast"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v17, 0x5a

    goto/16 :goto_0

    :sswitch_55
    const-string v5, "disconnectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v17, 0x59

    goto/16 :goto_0

    :sswitch_56
    const-string v5, "setSwitchWeatherSyncNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v17, 0x58

    goto/16 :goto_0

    :sswitch_57
    const-string v5, "syncRightNowTimeData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v17, 0x57

    goto/16 :goto_0

    :sswitch_58
    const-string v5, "stopTransfer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v17, 0x56

    goto/16 :goto_0

    :sswitch_59
    const-string v5, "sendWeatherInfoToWatch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v17, 0x55

    goto/16 :goto_0

    :sswitch_5a
    const-string v5, "getSedentaryRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v17, 0x54

    goto/16 :goto_0

    :sswitch_5b
    const-string v5, "openNotificationListenerService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v17, 0x53

    goto/16 :goto_0

    :sswitch_5c
    const-string v5, "saveDeviceMacAddressHasUpdated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v17, 0x52

    goto/16 :goto_0

    :sswitch_5d
    const-string v5, "collectWatchLoggerRequest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v17, 0x51

    goto/16 :goto_0

    :sswitch_5e
    const-string v5, "sport_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v17, 0x50

    goto/16 :goto_0

    :sswitch_5f
    const-string v5, "sleepStatusQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v17, 0x4f

    goto/16 :goto_0

    :sswitch_60
    const-string v5, "setFlutterCrashLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v17, 0x4e

    goto/16 :goto_0

    :sswitch_61
    const-string v5, "sedentaryRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v17, 0x4d

    goto/16 :goto_0

    :sswitch_62
    const-string v5, "sportRecordQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v17, 0x4c

    goto/16 :goto_0

    :sswitch_63
    const-string v5, "findDeviceWhere"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v17, 0x4b

    goto/16 :goto_0

    :sswitch_64
    const-string v5, "getSwitchOnlyNoticeStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v17, 0x4a

    goto/16 :goto_0

    :sswitch_65
    const-string v5, "getSwitchFindPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v17, 0x49

    goto/16 :goto_0

    :sswitch_66
    const-string v5, "getBleConnectStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v17, 0x48

    goto/16 :goto_0

    :sswitch_67
    const-string v5, "sport_start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v17, 0x47

    goto/16 :goto_0

    :sswitch_68
    const-string v5, "sport_detail"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v17, 0x46

    goto/16 :goto_0

    :sswitch_69
    const-string v5, "getWatchType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v17, 0x45

    goto/16 :goto_0

    :sswitch_6a
    const-string v5, "getWatchInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v17, 0x44

    goto/16 :goto_0

    :sswitch_6b
    const-string v5, "insert_model_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v17, 0x43

    goto/16 :goto_0

    :sswitch_6c
    const-string v5, "reloadConnectData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v17, 0x42

    goto/16 :goto_0

    :sswitch_6d
    const-string v5, "getMacHistoryList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v17, 0x41

    goto/16 :goto_0

    :sswitch_6e
    const-string v5, "setTrainingProgramInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v17, 0x40

    goto/16 :goto_0

    :sswitch_6f
    const-string v5, "openAutoTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v17, 0x3f

    goto/16 :goto_0

    :sswitch_70
    const-string v5, "setWatchLanguage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v17, 0x3e

    goto/16 :goto_0

    :sswitch_71
    const-string v5, "requestRebindNotificationService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v17, 0x3d

    goto/16 :goto_0

    :sswitch_72
    const-string v5, "getAllWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v17, 0x3c

    goto/16 :goto_0

    :sswitch_73
    const-string v5, "sportSensorDataSportModeQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v17, 0x3b

    goto/16 :goto_0

    :sswitch_74
    const-string v5, "sport_daily_life"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v17, 0x3a

    goto/16 :goto_0

    :sswitch_75
    const-string v5, "userInfoConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v17, 0x39

    goto/16 :goto_0

    :sswitch_76
    const-string v5, "uploadPhoneLogAll"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v17, 0x38

    goto/16 :goto_0

    :sswitch_77
    const-string v5, "isBlePrivacy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v17, 0x37

    goto/16 :goto_0

    :sswitch_78
    const-string v5, "getContactInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v17, 0x36

    goto/16 :goto_0

    :sswitch_79
    const-string v5, "isBleOpen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v17, 0x35

    goto/16 :goto_0

    :sswitch_7a
    const-string v5, "calculateLineDistance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v17, 0x34

    goto/16 :goto_0

    :sswitch_7b
    const-string v5, "dailyRhrQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v17, 0x33

    goto/16 :goto_0

    :sswitch_7c
    const-string v5, "scan_zxing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v17, 0x32

    goto/16 :goto_0

    :sswitch_7d
    const-string v5, "connectBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v17, 0x31

    goto/16 :goto_0

    :sswitch_7e
    const-string v5, "dailyActive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v17, 0x30

    goto/16 :goto_0

    :sswitch_7f
    const-string v5, "metoStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v17, 0x2f

    goto/16 :goto_0

    :sswitch_80
    const-string v5, "setSwitchCallPhoneNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v17, 0x2e

    goto/16 :goto_0

    :sswitch_81
    const-string v5, "mediaKey"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v17, 0x2d

    goto/16 :goto_0

    :sswitch_82
    const-string v5, "isInTransmission"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v17, 0x2c

    goto/16 :goto_0

    :sswitch_83
    const-string v5, "isLocationEnabled"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v17, 0x2b

    goto/16 :goto_0

    :sswitch_84
    const-string v5, "getSwitchCallPhoneNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v17, 0x2a

    goto/16 :goto_0

    :sswitch_85
    const-string v5, "sport_gps"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v17, 0x29

    goto/16 :goto_0

    :sswitch_86
    const-string v5, "bindRequestByPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v17, 0x28

    goto/16 :goto_0

    :sswitch_87
    const-string v5, "sharePhoneLogAll"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v17, 0x27

    goto/16 :goto_0

    :sswitch_88
    const-string v5, "callPhone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v17, 0x26

    goto/16 :goto_0

    :sswitch_89
    const-string v5, "echoPackageTestSmall"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v17, 0x25

    goto/16 :goto_0

    :sswitch_8a
    const-string v5, "setBtIsBond"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v17, 0x24

    goto/16 :goto_0

    :sswitch_8b
    const-string v5, "cigaretteLevel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v17, 0x23

    goto/16 :goto_0

    :sswitch_8c
    const-string v5, "disconnectBleNTimes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v17, 0x22

    goto/16 :goto_0

    :sswitch_8d
    const-string v5, "savePhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v17, 0x21

    goto/16 :goto_0

    :sswitch_8e
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v17, 0x20

    goto/16 :goto_0

    :sswitch_8f
    const-string v5, "qrCodeFile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v17, 0x1f

    goto/16 :goto_0

    :sswitch_90
    const-string v5, "deviceBattery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v17, 0x1e

    goto/16 :goto_0

    :sswitch_91
    const-string v5, "sportSensorDataSportHeartQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v17, 0x1d

    goto/16 :goto_0

    :sswitch_92
    const-string v5, "getFallInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v17, 0x1c

    goto/16 :goto_0

    :sswitch_93
    const-string v5, "getSwitchWeatherSyncNotification"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v17, 0x1b

    goto/16 :goto_0

    :sswitch_94
    const-string v5, "echoPackageTest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v17, 0x1a

    goto/16 :goto_0

    :sswitch_95
    const-string v5, "endCall"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v17, 0x19

    goto/16 :goto_0

    :sswitch_96
    const-string v5, "setWorldTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v17, 0x18

    goto/16 :goto_0

    :sswitch_97
    const-string v5, "deleteMacHistory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v17, 0x17

    goto/16 :goto_0

    :sswitch_98
    const-string v5, "quietCallOn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v17, 0x16

    goto/16 :goto_0

    :sswitch_99
    const-string v5, "setAppConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v17, 0x15

    goto/16 :goto_0

    :sswitch_9a
    const-string v5, "healthMeasureConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v17, 0x14

    goto/16 :goto_0

    :sswitch_9b
    const-string v5, "getCommonRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v17, 0x13

    goto/16 :goto_0

    :sswitch_9c
    const-string v5, "bpStatsQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v17, 0x12

    goto/16 :goto_0

    :sswitch_9d
    const-string v5, "restartBle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v17, 0x11

    goto/16 :goto_0

    :sswitch_9e
    const-string v5, "google_login"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v17, 0x10

    goto/16 :goto_0

    :sswitch_9f
    const-string v5, "uploadPhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v17, 0xf

    goto/16 :goto_0

    :sswitch_a0
    const-string v5, "bloodOxygenQuery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v17, 0xe

    goto/16 :goto_0

    :sswitch_a1
    const-string v5, "jumpToSystemSetting"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v17, 0xd

    goto/16 :goto_0

    :sswitch_a2
    const-string v5, "syncCacheTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v17, 0xc

    goto/16 :goto_0

    :sswitch_a3
    const-string v5, "openOrCloseWatchLogUpload"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_a4
    const-string v5, "btBondStatus"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_a5
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v17, 0x9

    goto/16 :goto_0

    :sswitch_a6
    const-string v5, "requestGetData"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v17, 0x8

    goto/16 :goto_0

    :sswitch_a7
    const-string v5, "updateMac"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    goto :goto_0

    :cond_a7
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_a8
    const-string v5, "clearPhoneLog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    goto :goto_0

    :cond_a8
    const/16 v17, 0x6

    goto :goto_0

    :sswitch_a9
    const-string v5, "getWeather"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    goto :goto_0

    :cond_a9
    const/16 v17, 0x5

    goto :goto_0

    :sswitch_aa
    const-string v5, "updatePicture"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    goto :goto_0

    :cond_aa
    const/16 v17, 0x4

    goto :goto_0

    :sswitch_ab
    const-string v5, "syncWeiXin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    goto :goto_0

    :cond_ab
    const/16 v17, 0x3

    goto :goto_0

    :sswitch_ac
    const-string v5, "startScan"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    goto :goto_0

    :cond_ac
    const/16 v17, 0x2

    goto :goto_0

    :sswitch_ad
    const-string v5, "changeFile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    goto :goto_0

    :cond_ad
    move/from16 v17, v15

    goto :goto_0

    :sswitch_ae
    const-string v5, "menstrualRemindConfig"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    goto :goto_0

    :cond_ae
    const/16 v17, 0x0

    :goto_0
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

    packed-switch v17, :pswitch_data_0

    .line 2116
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_1a

    .line 1141
    :pswitch_0
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestLocationPermissions()V

    goto/16 :goto_1a

    .line 941
    :pswitch_1
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

    goto/16 :goto_1a

    .line 1908
    :pswitch_2
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

    goto/16 :goto_1a

    :pswitch_3
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

    goto/16 :goto_1a

    :pswitch_4
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

    goto/16 :goto_1a

    .line 1129
    :pswitch_5
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

    goto/16 :goto_1a

    :pswitch_6
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

    goto/16 :goto_1a

    :pswitch_7
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

    goto/16 :goto_1a

    :pswitch_8
    const-string v0, "\u521d\u59cb\u5316sdk"

    .line 1179
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1222
    :pswitch_9
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startReConnect()Z

    goto/16 :goto_1a

    :pswitch_a
    const-string v0, "\u83b7\u53d6\u5c0f\u7c73\u5f97\u8d26\u53f7\u7684code"

    .line 1920
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_b
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

    if-nez v4, :cond_af

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
    :cond_af
    invoke-static {v3}, Lcn/baos/watch/sdk/BasSdk;->setContactInfo(Ljava/util/List;)Z

    .line 1324
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_c
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

    goto/16 :goto_1a

    .line 1868
    :pswitch_d
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

    if-lez v4, :cond_b0

    const/4 v14, 0x0

    .line 1872
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_b0

    .line 1873
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->getSensor_data_sleep_stats()Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1876
    :cond_b0
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

    goto/16 :goto_1a

    :pswitch_e
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

    goto/16 :goto_1a

    .line 653
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a

    :pswitch_10
    const-string v0, "\u540c\u6b65\u65f6\u95f4"

    .line 1477
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_11
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

    goto/16 :goto_1a

    :pswitch_12
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

    goto/16 :goto_1a

    :pswitch_13
    const-string v0, "--openSetting--"

    .line 645
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 646
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a

    .line 1843
    :pswitch_14
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

    goto/16 :goto_1a

    .line 1500
    :pswitch_15
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTestRequest;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTestRequest;-><init>()V

    const/16 v2, 0x3e7

    .line 1501
    iput v2, v0, Lcn/baos/watch/w100/messages/CommandTestRequest;->test_function:I

    .line 1502
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_1a

    .line 528
    :pswitch_16
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/GoogleAppUtils;->jumpToGooglePlay(Landroid/app/Activity;)V

    goto/16 :goto_1a

    .line 1617
    :pswitch_17
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

    if-eqz v0, :cond_b2

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b2

    .line 1621
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 1623
    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.incallui"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    .line 1624
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1629
    :cond_b2
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

    goto/16 :goto_1a

    .line 541
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_e0

    const/high16 v2, 0x10000000

    .line 543
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a

    .line 1193
    :pswitch_19
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->stopSearchScan()V

    goto/16 :goto_1a

    .line 567
    :pswitch_1a
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

    if-eqz v0, :cond_b4

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b4

    const/4 v14, 0x0

    .line 571
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_b4

    .line 572
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    iget-object v5, v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 573
    iget-object v6, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 574
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 578
    :cond_b4
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

    goto/16 :goto_1a

    .line 1136
    :pswitch_1b
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestPermissions()V

    goto/16 :goto_1a

    .line 1460
    :pswitch_1c
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

    goto/16 :goto_1a

    .line 1367
    :pswitch_1d
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 1368
    iget-boolean v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v3, :cond_b5

    goto :goto_5

    .line 1372
    :cond_b5
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

    if-eqz v3, :cond_b6

    const-string v0, "W625"

    .line 1379
    :cond_b6
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

    if-nez v0, :cond_b7

    goto :goto_4

    :cond_b7
    move-object v14, v0

    .line 1384
    :goto_4
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1369
    :cond_b8
    :goto_5
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 1861
    :pswitch_1e
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

    goto/16 :goto_1a

    .line 1038
    :pswitch_1f
    invoke-static {}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->printStringByJni()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    int-to-long v3, v0

    .line 1041
    invoke-static {}, Lorg/msgpack/core/MessagePack;->newDefaultBufferPacker()Lorg/msgpack/core/MessageBufferPacker;

    move-result-object v0

    .line 1043
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lorg/msgpack/core/MessageBufferPacker;->packLong(J)Lorg/msgpack/core/MessagePacker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1045
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1047
    :goto_6
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

    goto/16 :goto_1a

    :pswitch_20
    const-string v2, "prayerGps"

    .line 2060
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2061
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$12;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$12;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    .line 2062
    invoke-virtual {v3}, Lcn/yoozworld/watch/ui/BLfLst$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2061
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;

    .line 2063
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gpsEntity--->"

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

    .line 2064
    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda9;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-static {v0, v2}, Lcn/baos/watch/sdk/BasSdk;->setPrayerGps(Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;)Z

    goto/16 :goto_1a

    :pswitch_21
    const-string v2, "screen_status"

    .line 725
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b9

    .line 727
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1a

    :cond_b9
    const/16 v2, 0x80

    .line 729
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_1a

    .line 800
    :pswitch_22
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 803
    :try_start_1
    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 804
    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v14, 0x0

    .line 808
    :goto_7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1494
    :pswitch_23
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

    goto/16 :goto_1a

    .line 1855
    :pswitch_24
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

    goto/16 :goto_1a

    .line 1604
    :pswitch_25
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

    goto/16 :goto_1a

    .line 1453
    :pswitch_26
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

    goto/16 :goto_1a

    .line 1958
    :pswitch_27
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

    goto/16 :goto_1a

    .line 1393
    :pswitch_28
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    .line 1394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_29
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

    goto/16 :goto_1a

    .line 1923
    :pswitch_2a
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 2113
    :pswitch_2b
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestReadCallPhonePermissions()V

    goto/16 :goto_1a

    :pswitch_2c
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

    if-eqz v2, :cond_e0

    .line 848
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v3

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->updateCurrentConfig(Ljava/lang/String;Z)Z

    .line 849
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfigFalse()V

    goto/16 :goto_1a

    .line 1787
    :pswitch_2d
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

    goto/16 :goto_1a

    .line 1755
    :pswitch_2e
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
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_ba

    .line 1760
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;->getSensor_data_daily_hrate()Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1762
    :cond_ba
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

    goto/16 :goto_1a

    .line 657
    :pswitch_2f
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestOpenBle()V

    goto/16 :goto_1a

    .line 1225
    :pswitch_30
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1226
    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->startConnect(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    :pswitch_31
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

    goto/16 :goto_1a

    .line 1442
    :pswitch_32
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->unBindWatch()V

    .line 1443
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a

    .line 700
    :pswitch_33
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda12;-><init>(Lcn/yoozworld/watch/ui/BLfLst;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getAppMarkInfo(Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;)Z

    goto/16 :goto_1a

    :pswitch_34
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

    goto/16 :goto_1a

    :pswitch_35
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

    goto/16 :goto_1a

    :pswitch_36
    const-string v0, "--openBluetoothSetting--"

    .line 649
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 650
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a

    :pswitch_37
    const-string v2, "file"

    .line 901
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 902
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->installApk(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1744
    :pswitch_38
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
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_bb

    .line 1749
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;->getSensor_data_daily_hrate()Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1751
    :cond_bb
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

    goto/16 :goto_1a

    :pswitch_39
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

    goto/16 :goto_1a

    .line 589
    :pswitch_3a
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda1;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z

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

    if-eqz v0, :cond_bd

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

    if-eqz v3, :cond_bc

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

    goto :goto_a

    .line 612
    :cond_bc
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 614
    :goto_a
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 616
    :cond_bd
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3b
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

    goto/16 :goto_1a

    .line 1145
    :pswitch_3c
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    iget-object v3, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->isNotificationListenerEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3d
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

    goto/16 :goto_1a

    .line 557
    :pswitch_3e
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_be

    .line 560
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_be
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

    goto/16 :goto_1a

    :pswitch_3f
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

    goto/16 :goto_1a

    :pswitch_40
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

    goto/16 :goto_1a

    :pswitch_41
    const-string v2, "lastMac"

    .line 624
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 626
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LAST_MAC:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1283
    :pswitch_42
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 1284
    iget-boolean v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v3, :cond_bf

    goto :goto_b

    .line 1288
    :cond_bf
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

    goto/16 :goto_1a

    .line 1285
    :cond_c0
    :goto_b
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 2018
    :pswitch_43
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_RAISE_WRIST_LIGHT_UP"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2020
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_44
    const/4 v0, 0x1

    .line 1210
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleReConnect:Z

    .line 1211
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    goto/16 :goto_1a

    :pswitch_45
    const-string v0, "\u83b7\u53d6\u624b\u673a\u901a\u8baf\u5f55"

    .line 2074
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Lcn/yoozworld/watch/ui/HomeActivity;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2076
    sget-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    if-eqz v0, :cond_e0

    const/4 v3, 0x0

    .line 2077
    sput-boolean v3, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    .line 2078
    invoke-static {}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->queryList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 2079
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c1

    const/4 v3, 0x1

    .line 2080
    sput-boolean v3, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z

    .line 2081
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 2083
    :cond_c1
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

    goto/16 :goto_1a

    .line 2107
    :cond_c2
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->requestContactsPermissions()V

    .line 2108
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const-string v0, "\u83b7\u53d6\u624b\u673a\u901a\u8baf\u5f55-> \u65e0\u6743\u9650"

    .line 2109
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_46
    const-string v0, "\u65f6\u95f4\u540c\u6b65-0"

    .line 1490
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_47
    const-string v0, "\u6062\u590d\u51fa\u5382\u8bbe\u7f6e"

    .line 1486
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1430
    :pswitch_48
    :try_start_2
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
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1a

    :catch_2
    move-exception v0

    .line 1437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a

    .line 1293
    :pswitch_49
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v4

    if-eqz v4, :cond_c3

    .line 1295
    new-instance v5, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v5}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v6, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disBtConnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 1297
    :cond_c3
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

    goto/16 :goto_1a

    :pswitch_4a
    const-string v2, "hasCheckNeedForceOta"

    .line 879
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/16 :goto_1a

    :pswitch_4b
    const-string v2, "prayerTime"

    .line 2046
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2047
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcn/yoozworld/watch/ui/BLfLst$10;

    invoke-direct {v3, v1}, Lcn/yoozworld/watch/ui/BLfLst$10;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    .line 2048
    invoke-virtual {v3}, Lcn/yoozworld/watch/ui/BLfLst$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2047
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPrayerTime--->"

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

    .line 2050
    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda8;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-static {v0, v2}, Lcn/baos/watch/sdk/BasSdk;->setPrayerTime(Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;)Z

    goto/16 :goto_1a

    .line 677
    :pswitch_4c
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->getPairCode()I

    move-result v0

    .line 678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_4d
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

    goto/16 :goto_1a

    :pswitch_4e
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

    if-eqz v0, :cond_e0

    .line 765
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    goto/16 :goto_1a

    :pswitch_4f
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

    goto/16 :goto_1a

    .line 1261
    :pswitch_50
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    const-string v0, "\u65ad\u5f00\u84dd\u7259"

    .line 1262
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_51
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

    goto/16 :goto_1a

    :pswitch_52
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

    goto/16 :goto_1a

    .line 1914
    :pswitch_53
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission()V

    goto/16 :goto_1a

    :pswitch_54
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

    if-eqz v0, :cond_e0

    .line 1940
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1941
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    .line 1942
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherMeteorological(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    goto/16 :goto_1a

    .line 1151
    :pswitch_55
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->openNotificationListenSettings(Landroid/content/Context;)V

    goto/16 :goto_1a

    :pswitch_56
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

    if-eqz v0, :cond_c7

    .line 1895
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c4

    goto :goto_d

    :cond_c4
    if-eqz v2, :cond_c6

    .line 1899
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c5

    goto :goto_c

    .line 1902
    :cond_c5
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

    goto/16 :goto_1a

    .line 1900
    :cond_c6
    :goto_c
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_c7
    :goto_d
    const-string v0, "\u81ea\u52a8\u5347\u7ea7,\u6e05\u7a7a\u8bbe\u5907\u5217\u8868"

    .line 1896
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1897
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, v3, v14}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_57
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

    goto/16 :goto_1a

    :pswitch_58
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

    goto/16 :goto_1a

    .line 1881
    :pswitch_59
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
    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_c8

    .line 1885
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;->getSensor_data_sleep_status()Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 1887
    :cond_c8
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

    goto/16 :goto_1a

    :pswitch_5a
    const-string v2, "file"

    .line 909
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/yoozworld/watch/utils/UserDataUtils;->writeFlutterCrashToLocal(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_5b
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

    goto/16 :goto_1a

    .line 1806
    :pswitch_5c
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
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v14, v6, :cond_ca

    .line 1813
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;

    invoke-virtual {v6}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v6

    .line 1814
    iget v7, v6, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    if-lt v7, v3, :cond_c9

    iget v7, v6, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    if-gt v7, v0, :cond_c9

    .line 1815
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 1817
    :cond_ca
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

    goto/16 :goto_1a

    :pswitch_5d
    const-string v2, "isOpen"

    .line 548
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cb

    const/4 v13, 0x1

    goto :goto_10

    :cond_cb
    const/4 v13, 0x2

    .line 550
    :goto_10
    invoke-static {v13}, Lcn/baos/watch/sdk/BasSdk;->findDevice(I)V

    goto/16 :goto_1a

    .line 2003
    :pswitch_5e
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

    goto/16 :goto_1a

    .line 2032
    :pswitch_5f
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_FIND_PHONE"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 2034
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1269
    :pswitch_60
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectSuccess()Z

    move-result v0

    if-eqz v0, :cond_cc

    const/4 v14, 0x4

    goto :goto_11

    :cond_cc
    const/4 v14, 0x0

    .line 1270
    :goto_11
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    const/4 v3, 0x4

    if-eq v14, v3, :cond_d0

    .line 1272
    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v3, :cond_cf

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v3, :cond_cd

    goto :goto_12

    .line 1274
    :cond_cd
    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v3, :cond_ce

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v3, :cond_d0

    :cond_ce
    const/4 v13, 0x1

    goto :goto_13

    :cond_cf
    :goto_12
    const/4 v13, 0x2

    goto :goto_13

    :cond_d0
    move v13, v14

    .line 1278
    :goto_13
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

    goto/16 :goto_1a

    .line 735
    :pswitch_61
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->startService()V

    goto/16 :goto_1a

    :pswitch_62
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

    goto/16 :goto_1a

    :pswitch_63
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

    goto/16 :goto_1a

    :pswitch_64
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u4fe1\u606f,\u5305\u542b\u8bbe\u5907\u578b\u53f7\uff0c\u8bbe\u5907\u540d\u79f0\uff0c\u8bbe\u5907\u5e8f\u5217\u53f7\uff0c\u8f6f\u4ef6\u7248\u672c\u53f7\uff0c\u786c\u4ef6\u7248\u672c\u53f7"

    .line 1505
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1506
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda17;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z

    goto/16 :goto_1a

    .line 642
    :pswitch_65
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/DataInsertUtils;->insertData(Landroid/content/Context;)V

    goto/16 :goto_1a

    .line 1362
    :pswitch_66
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

    goto/16 :goto_1a

    :pswitch_67
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

    goto/16 :goto_1a

    :pswitch_68
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

    goto/16 :goto_1a

    :pswitch_69
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

    if-eqz v2, :cond_e0

    .line 666
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setDeviceLangeuage(II)Z

    goto/16 :goto_1a

    .line 1327
    :pswitch_6a
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/WorldUtils;->getWorldTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1821
    :pswitch_6b
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

    goto/16 :goto_1a

    :pswitch_6c
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

    if-eqz v0, :cond_e0

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

    goto/16 :goto_1a

    :pswitch_6d
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

    goto/16 :goto_1a

    :pswitch_6e
    const-string v0, "\u4e0a\u4f20\u624b\u673a\u65e5\u5fd7"

    .line 1087
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1088
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

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

    goto/16 :goto_1a

    .line 1094
    :cond_d1
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_6f
    const-string v0, "--isBlePrivacy--"

    .line 631
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 632
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d3

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 633
    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d3

    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 634
    invoke-static {v0, v3}, Lcom/king/camera/scan/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    goto :goto_14

    .line 638
    :cond_d2
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 636
    :cond_d3
    :goto_14
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_70
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

    goto/16 :goto_1a

    .line 1388
    :pswitch_71
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

    goto/16 :goto_1a

    :pswitch_72
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

    goto/16 :goto_1a

    .line 1766
    :pswitch_73
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
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_d4

    .line 1771
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 1773
    :cond_d4
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

    goto/16 :goto_1a

    .line 1246
    :pswitch_74
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

    goto/16 :goto_1a

    :pswitch_75
    const-string v2, "\u8fde\u63a5\u84dd\u7259-connectBle-,flutter"

    .line 1229
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1230
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v12, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 1233
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    const-string v0, "\u8fde\u63a5\u84dd\u7259-\u672a\u7ed1\u5b9a,\u81ea\u52a8\u5347\u7ea7\u6a21\u5f0f\uff0c\u542f\u52a8\u968f\u673a\u8fde\u63a5"

    .line 1234
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1237
    :cond_d5
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

    goto/16 :goto_1a

    .line 1734
    :pswitch_76
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
    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_d6

    .line 1738
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    .line 1740
    :cond_d6
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

    goto/16 :goto_1a

    .line 1837
    :pswitch_77
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

    goto/16 :goto_1a

    :pswitch_78
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

    goto/16 :goto_1a

    :pswitch_79
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

    goto/16 :goto_1a

    .line 1917
    :pswitch_7a
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isInTransmission()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 531
    :pswitch_7b
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/WorldUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1974
    :pswitch_7c
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_CALL_PHONE_NOTIFICATION"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1975
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_7d
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

    if-eqz v0, :cond_e0

    .line 777
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    goto/16 :goto_1a

    :pswitch_7e
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

    goto/16 :goto_1a

    .line 1971
    :pswitch_7f
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/yoozworld/watch/utils/UserDataUtils;->callPhone(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_80
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

    goto/16 :goto_1a

    :pswitch_81
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

    if-eqz v0, :cond_d7

    .line 869
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BTCommonClient;->requestPairBtDevice()V

    goto/16 :goto_1a

    :cond_d7
    const-string v0, "-----app---\u624b\u52a8\u70b9\u51fb\u914d\u5bf9\u7a97\u53e3----BT\u5f39\u7a97\u903b\u8f91---\u672a\u7ed1\u5b9a--\u4e0d\u8d70\u903b\u8f91"

    .line 871
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_82
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u6cb9\u91cf"

    .line 1541
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1542
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda20;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getOilBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;)Z

    goto/16 :goto_1a

    .line 1265
    :pswitch_83
    sget-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isAutoDisconnect:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isAutoDisconnect:Z

    goto/16 :goto_1a

    :pswitch_84
    const-string v0, "\u6253\u5f00\u624b\u673a\u65e5\u5fd7"

    .line 1050
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1051
    iget-boolean v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->hasLogcatThreadOpen:Z

    if-nez v0, :cond_d8

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

    goto/16 :goto_1a

    .line 1056
    :cond_d8
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->startRunThread()V

    goto/16 :goto_1a

    .line 1446
    :pswitch_85
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

    goto/16 :goto_1a

    :pswitch_86
    const-string v3, "qrcode"

    .line 818
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcn/baos/watch/sdk/entitiy/QrEntity;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/QrEntity;

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "qrCodeFile-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcn/yoozworld/watch/ui/BLfLst$3;

    invoke-direct {v0, v1}, Lcn/yoozworld/watch/ui/BLfLst$3;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-static {v3, v0}, Lcn/baos/watch/sdk/BasSdk;->setQrImages(Lcn/baos/watch/sdk/entitiy/QrEntity;Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;)Z

    .line 832
    :pswitch_87
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v0

    iget v0, v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    if-nez v0, :cond_da

    .line 835
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    double-to-int v0, v3

    const/4 v3, 0x3

    if-ge v0, v3, :cond_d9

    move v9, v3

    goto :goto_17

    :cond_d9
    move v9, v0

    goto :goto_17

    :cond_da
    const/4 v9, 0x0

    .line 842
    :goto_17
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_88
    const-string v0, "\u6e90\u751f\u7aef->\u83b7\u53d6\u624b\u8868\u7535\u91cf,\u5305\u542b\u5f53\u524d\u5269\u4f59\u7535\u91cf0-100,charging=1\u672a\u5145\u7535, 2\u5145\u7535\u4e2d,0\u65e0\u610f\u4e49"

    .line 1530
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1531
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda19;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;)Z

    goto/16 :goto_1a

    .line 1827
    :pswitch_89
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
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_db

    .line 1831
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->getSensor_data_sport_hrate()Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    .line 1833
    :cond_db
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

    goto/16 :goto_1a

    :pswitch_8a
    const-string v0, "\u6e90\u751f\u7aef->\u8dcc\u5012\u68c0\u6d4b"

    .line 1520
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1521
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda18;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getFallInfo(Lcn/baos/watch/sdk/interfac/fall/OnFallListener;)Z

    goto/16 :goto_1a

    .line 1987
    :pswitch_8b
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mContext:Landroid/content/Context;

    const-string v3, "SWITCH_WEATHER_SYNC_NOTIFICATION"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1989
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_8c
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

    goto/16 :goto_1a

    :pswitch_8d
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

    goto/16 :goto_1a

    :pswitch_8e
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

    if-nez v3, :cond_dc

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
    :cond_dc
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_8f
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

    goto/16 :goto_1a

    :pswitch_90
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230\u6765\u7535\u9759\u97f3\u6307\u4ee4"

    .line 1168
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->quietCallOn()V

    goto/16 :goto_1a

    :pswitch_91
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

    goto/16 :goto_1a

    :pswitch_92
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

    goto/16 :goto_1a

    :pswitch_93
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

    goto/16 :goto_1a

    .line 1849
    :pswitch_94
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

    goto/16 :goto_1a

    .line 553
    :pswitch_95
    invoke-static {}, Lcn/yoozworld/watch/ui/HomeActivity;->getInstance()Lcn/yoozworld/watch/ui/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/ui/HomeActivity;->googleLogin()V

    goto/16 :goto_1a

    :pswitch_96
    const-string v0, "\u4e0a\u4f20\u624b\u673a\u65e5\u5fd7"

    .line 1060
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1061
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 1062
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->getLogFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 1064
    :cond_dd
    invoke-interface {v2, v14}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_97
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
    :goto_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_de

    .line 1781
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;->getSensor_data_daily_spo()Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    .line 1783
    :cond_de
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

    goto/16 :goto_1a

    .line 534
    :pswitch_98
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

    goto/16 :goto_1a

    :pswitch_99
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

    goto/16 :goto_1a

    .line 853
    :pswitch_9a
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

    if-eqz v3, :cond_df

    .line 857
    iget-object v4, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_df

    iget-object v3, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    const-string v4, "W200"

    .line 858
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 859
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 861
    :cond_df
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_9b
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

    goto/16 :goto_1a

    :pswitch_9c
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

    goto/16 :goto_1a

    .line 620
    :pswitch_9d
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->updateConnectConfig()V

    .line 621
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    goto/16 :goto_1a

    .line 1099
    :pswitch_9e
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    if-eqz v0, :cond_e0

    .line 1100
    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->cleanLogFiles()V

    .line 1101
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/util/LogcatThread;->startrunFlag()V

    goto/16 :goto_1a

    :pswitch_9f
    const-string v0, "\u6e90\u751f\u7aef\u6536\u5230flutter\u7aef\u83b7\u53d6\u5929\u6c14\u6307\u4ee4"

    .line 1932
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1934
    iget-object v0, v1, Lcn/yoozworld/watch/ui/BLfLst;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcn/yoozworld/watch/ui/BLfLst$$ExternalSyntheticLambda3;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a

    :pswitch_a0
    const-string v2, "path"

    .line 905
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 906
    iget-object v2, v1, Lcn/yoozworld/watch/ui/BLfLst;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->updatePiture(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1466
    :pswitch_a1
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

    goto :goto_1a

    .line 1186
    :pswitch_a2
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startScan()V

    goto :goto_1a

    .line 811
    :pswitch_a3
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

    goto :goto_1a

    :pswitch_a4
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

    :cond_e0
    :goto_1a
    :pswitch_a5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ff529d4 -> :sswitch_ae
        -0x7f18dab4 -> :sswitch_ad
        -0x7eeb0201 -> :sswitch_ac
        -0x7ca98f43 -> :sswitch_ab
        -0x7b9a080b -> :sswitch_aa
        -0x79468c42 -> :sswitch_a9
        -0x784db39d -> :sswitch_a8
        -0x742eac3a -> :sswitch_a7
        -0x7324316f -> :sswitch_a6
        -0x7190caf3 -> :sswitch_a5
        -0x70df3d79 -> :sswitch_a4
        -0x6f682c9f -> :sswitch_a3
        -0x6f0e56ec -> :sswitch_a2
        -0x6e8beba8 -> :sswitch_a1
        -0x6e111352 -> :sswitch_a0
        -0x6c184fe9 -> :sswitch_9f
        -0x6ae59e1d -> :sswitch_9e
        -0x69cf8734 -> :sswitch_9d
        -0x699031a9 -> :sswitch_9c
        -0x67c5efd8 -> :sswitch_9b
        -0x66a206bc -> :sswitch_9a
        -0x666ec17f -> :sswitch_99
        -0x6562ffcf -> :sswitch_98
        -0x62e667b0 -> :sswitch_97
        -0x615204c3 -> :sswitch_96
        -0x5fd46e27 -> :sswitch_95
        -0x5ed1c16d -> :sswitch_94
        -0x5ad5d650 -> :sswitch_93
        -0x56d147c1 -> :sswitch_92
        -0x569bf182 -> :sswitch_91
        -0x56698529 -> :sswitch_90
        -0x5503e5b6 -> :sswitch_8f
        -0x507edfff -> :sswitch_8e
        -0x5023d86d -> :sswitch_8d
        -0x4df56489 -> :sswitch_8c
        -0x4d949c6e -> :sswitch_8b
        -0x49e1577f -> :sswitch_8a
        -0x485a75cc -> :sswitch_89
        -0x3f326250 -> :sswitch_88
        -0x3d50b294 -> :sswitch_87
        -0x3b3ee89b -> :sswitch_86
        -0x39d2f2a1 -> :sswitch_85
        -0x3970394f -> :sswitch_84
        -0x390e30be -> :sswitch_83
        -0x35cce48d -> :sswitch_82
        -0x35b10425 -> :sswitch_81
        -0x31582ddb -> :sswitch_80
        -0x2ed6da24 -> :sswitch_7f
        -0x2e5f6d81 -> :sswitch_7e
        -0x2e3c13ef -> :sswitch_7d
        -0x2c40105e -> :sswitch_7c
        -0x2a83399b -> :sswitch_7b
        -0x28962571 -> :sswitch_7a
        -0x246bc645 -> :sswitch_79
        -0x23becc48 -> :sswitch_78
        -0x21487189 -> :sswitch_77
        -0x213a39f6 -> :sswitch_76
        -0x1f502045 -> :sswitch_75
        -0x1d97d0f3 -> :sswitch_74
        -0x1ca7d8f7 -> :sswitch_73
        -0x1ae7b8ac -> :sswitch_72
        -0x18b6fb95 -> :sswitch_71
        -0x17105ffb -> :sswitch_70
        -0x15ee38b5 -> :sswitch_6f
        -0x1588dbaa -> :sswitch_6e
        -0x143fa887 -> :sswitch_6d
        -0x12e54ba5 -> :sswitch_6c
        -0x126debba -> :sswitch_6b
        -0x1151f099 -> :sswitch_6a
        -0x114cc60d -> :sswitch_69
        -0x10f09c84 -> :sswitch_68
        -0x10361829 -> :sswitch_67
        -0xd80bca9 -> :sswitch_66
        -0xd34e7d5 -> :sswitch_65
        -0xb795300 -> :sswitch_64
        -0x9edb748 -> :sswitch_63
        -0x84d291d -> :sswitch_62
        -0x69ba54a -> :sswitch_61
        -0x5d50269 -> :sswitch_60
        -0x177e361 -> :sswitch_5f
        -0x8cf66b -> :sswitch_5e
        0x1d0d1a -> :sswitch_5d
        0x387d519 -> :sswitch_5c
        0x3baa64c -> :sswitch_5b
        0x5102d00 -> :sswitch_5a
        0x64e379a -> :sswitch_59
        0x66a020d -> :sswitch_58
        0x69fe60c -> :sswitch_57
        0x76d2824 -> :sswitch_56
        0x78b971f -> :sswitch_55
        0x8b36bbd -> :sswitch_54
        0xca583f4 -> :sswitch_53
        0x1051b60e -> :sswitch_52
        0x12944b7f -> :sswitch_51
        0x12eba956 -> :sswitch_50
        0x13481895 -> :sswitch_4f
        0x134d6d02 -> :sswitch_4e
        0x1899b09a -> :sswitch_4d
        0x1cda6528 -> :sswitch_4c
        0x1cda6529 -> :sswitch_4b
        0x1e9d702b -> :sswitch_4a
        0x1f9d589c -> :sswitch_49
        0x222ab484 -> :sswitch_48
        0x2356ab44 -> :sswitch_47
        0x249c79fd -> :sswitch_46
        0x265c2a9c -> :sswitch_45
        0x26ca490c -> :sswitch_44
        0x27b49d93 -> :sswitch_43
        0x28abc579 -> :sswitch_42
        0x29a1b19f -> :sswitch_41
        0x2a6137f8 -> :sswitch_40
        0x2d9d6cba -> :sswitch_3f
        0x2e8adc24 -> :sswitch_3e
        0x3130a263 -> :sswitch_3d
        0x33cba4d6 -> :sswitch_3c
        0x35ab3281 -> :sswitch_3b
        0x3811ba2c -> :sswitch_3a
        0x385a99f8 -> :sswitch_39
        0x3ae63e98 -> :sswitch_38
        0x3d3d7e0d -> :sswitch_37
        0x4178ed7e -> :sswitch_36
        0x425a3ac9 -> :sswitch_35
        0x439e3bf9 -> :sswitch_34
        0x44b2112f -> :sswitch_33
        0x46123922 -> :sswitch_32
        0x48d00622 -> :sswitch_31
        0x4c149589 -> :sswitch_30
        0x51770491 -> :sswitch_2f
        0x51fe2f22 -> :sswitch_2e
        0x529446af -> :sswitch_2d
        0x53058003 -> :sswitch_2c
        0x5433f1d1 -> :sswitch_2b
        0x54977f35 -> :sswitch_2a
        0x54b5702e -> :sswitch_29
        0x54c96e8c -> :sswitch_28
        0x551de69a -> :sswitch_27
        0x5825f85a -> :sswitch_26
        0x5875c377 -> :sswitch_25
        0x59934111 -> :sswitch_24
        0x5b5efb25 -> :sswitch_23
        0x5b72c501 -> :sswitch_22
        0x5b7f771e -> :sswitch_21
        0x5d42d65d -> :sswitch_20
        0x5f1c682a -> :sswitch_1f
        0x5f7986dd -> :sswitch_1e
        0x637dca75 -> :sswitch_1d
        0x650eec54 -> :sswitch_1c
        0x6635719f -> :sswitch_1b
        0x6696d883 -> :sswitch_1a
        0x66e2c3be -> :sswitch_19
        0x6727c6f7 -> :sswitch_18
        0x67f5d9e2 -> :sswitch_17
        0x6a587f9b -> :sswitch_16
        0x6a648e3f -> :sswitch_15
        0x6aa3b8a6 -> :sswitch_14
        0x6bc96cde -> :sswitch_13
        0x6c41b8e5 -> :sswitch_12
        0x6c491c08 -> :sswitch_11
        0x6de61030 -> :sswitch_10
        0x6e1f2780 -> :sswitch_f
        0x6e5819a0 -> :sswitch_e
        0x6e6101f1 -> :sswitch_d
        0x72a6a72c -> :sswitch_c
        0x734b5557 -> :sswitch_b
        0x73ebf2a4 -> :sswitch_a
        0x7421050a -> :sswitch_9
        0x74d781a2 -> :sswitch_8
        0x77bc01ad -> :sswitch_7
        0x77f7c07d -> :sswitch_6
        0x78f579e9 -> :sswitch_5
        0x7a4949a1 -> :sswitch_4
        0x7e376718 -> :sswitch_3
        0x7e9ac808 -> :sswitch_2
        0x7f1388d9 -> :sswitch_1
        0x7f4fde80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_a5
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_a5
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_a5
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_a5
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_a5
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_a5
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_87
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_32
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_a5
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_42
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transferFile(Ljava/lang/String;I)V
    .locals 2

    .line 414
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

    .line 415
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcn/yoozworld/watch/ui/BLfLst$1;

    invoke-direct {p1, p0}, Lcn/yoozworld/watch/ui/BLfLst$1;-><init>(Lcn/yoozworld/watch/ui/BLfLst;)V

    invoke-virtual {v0, v1, p2, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->transferFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V

    return-void
.end method
