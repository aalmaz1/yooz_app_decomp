.class Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;
.super Ljava/lang/Object;
.source "SsManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yoozworld/watch/ui/SsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleEventNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/SsManager;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/SsManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBLEConnectFail$7()V
    .locals 3

    .line 179
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBLEConnectTimeOut$9()V
    .locals 3

    .line 196
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBLEConnected$6()V
    .locals 3

    .line 164
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBLEConnecting$5()V
    .locals 3

    .line 155
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBLEDisConnected$8()V
    .locals 5

    .line 188
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleDisconnectInfo"

    const-string v2, "msg"

    const-string v3, "bleStatus"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onBLEScanning$3(Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;)V
    .locals 2

    .line 136
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 137
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "scanDeviceInfo"

    .line 136
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONRes(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onBLEStartConnect$4()V
    .locals 3

    .line 146
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBLEStartScan$2()V
    .locals 3

    .line 93
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onGpsNotOpen$0()V
    .locals 3

    .line 82
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gpsNotOpen"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onGpsNotOpen$1()V
    .locals 3

    .line 85
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBLEConnectFail()V
    .locals 2

    const/4 v0, 0x1

    .line 176
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    .line 177
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v0, "\u84dd\u7259\u8fde\u63a5\u5931\u8d25"

    .line 181
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBLEConnectTimeOut()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    const/4 v0, 0x1

    .line 195
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    .line 196
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "\u84dd\u7259\u8fde\u63a5\u8d85\u65f6"

    .line 197
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBLEConnected()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    .line 162
    sput-boolean v1, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\u8fde\u63a5\u6210\u529f,\u8fdb\u5165\u7ed1\u5b9a\u72b6\u6001-time-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->nowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBLEConnecting(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 152
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    .line 153
    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-static {v1, v0}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "\u84dd\u7259\u8fde\u63a5\u4e2d:%s"

    .line 154
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBLEDisConnected()V
    .locals 2

    .line 186
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBLEManualDisConnected()V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\u8fde\u63a5\u6210\u529f,\u624b\u52a8\u65ad\u5f00\u8fde\u63a5:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->nowTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    return-void
.end method

.method public onBLEScanning(Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->getAllListConfig()Ljava/util/List;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    .line 107
    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 115
    :cond_1
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setBondState(I)V

    .line 117
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceAddress(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "W200_G50_HB"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->changeMacAddressToFourNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "W200"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, "QW01"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 128
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setRssi(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->setTimeStamp(I)V

    .line 135
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda2;-><init>(Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;)V

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onBLEStartConnect(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 143
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    .line 144
    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-static {v1, v0}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "\u84dd\u7259\u5f00\u59cb\u8fde\u63a5:%s"

    .line 145
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBLEStartScan()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    const-string v0, "\u84dd\u7259\u5f00\u59cb\u626b\u63cf"

    .line 92
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleDeviceStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onBtNoDelDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    const-string v0, "Bt-\u672a\u5220\u9664\u6210\u529f-\u7cfb\u7edf\u5220\u9664"

    .line 208
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onGpsNotOpen()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcn/yoozworld/watch/ui/BLfLst;->isBleConnect:Z

    const-string v0, "Gps\u672a\u6253\u5f00,\u65e0\u6cd5\u542f\u52a8\u626b\u63cf"

    .line 81
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
