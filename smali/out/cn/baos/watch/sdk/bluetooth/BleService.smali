.class public Lcn/baos/watch/sdk/bluetooth/BleService;
.super Landroid/app/Service;
.source "BleService.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;,
        Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;
    }
.end annotation


# static fields
.field private static instance:Lcn/baos/watch/sdk/bluetooth/BleService;

.field private static mClient:Lcom/inuker/bluetooth/library/BluetoothClient;


# instance fields
.field private bleStatusCallbackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field public bleStatusHandler:Landroid/bluetooth/BluetoothGattCallback;

.field private curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field protected eventHandler:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;

.field private iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

.field private iBtStatusCallback:Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

.field private iDeviceCallback:Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

.field public isConnectStatus:Z

.field protected isManualCloseBl:Z

.field private isReConnect:Z

.field public isScanAuto:Z

.field public isScanBleStatus:Ljava/lang/Boolean;

.field public isScanBtStatus:Ljava/lang/Boolean;

.field private isScanResultData:Z

.field public isUnbind:Z

.field public mBleConnectNum:I

.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

.field public mContext:Landroid/content/Context;

.field private mIBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

.field private mScanCallBack:Landroid/bluetooth/le/ScanCallback;

.field private manualConnectTime:J

.field protected monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

.field private notificationHandler:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

.field public pairConnectTime:J

.field private pairPopTime:J

.field private pairSuccessTime:J

.field public scanTime:J

.field private sendDataTime:J

.field protected statusHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-H5KiNcn3tR7oAm3WOlPPd8dssM(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$directConnect$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$01dACVJEmOLiL-nbGwUU5VqkpUk(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$onBleDisconnected$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$4oLbF0qQBgRv8w-fVZaMV_LW0Eo(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestRemoveBt$18(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$94aOtAVmsgHTMWdPGAWIkoz2KwI(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestMtuChange$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Aeq8A-21hELGNH39CU7YglyCIfM(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startScanError()V

    return-void
.end method

.method public static synthetic $r8$lambda$FQ5tNfiKjTt3X2wBkke0fXScrNE(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$scanDo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NCtf88awqk_qAZq-5xr_HJDVDiY(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$scanDoBt$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$OuuD76PPIQTLFBu9kNjPoj44cZ0(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$onConnectFailed$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$S5sDKhiG5jMdxSJM5nPp5p8I1wo(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$scanDo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SCV9xytDnDQM589LIUjWsWFtUTw(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestRemoveBt$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sa-jVk__Z_wd3rGj2OarI3OlfhU(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$unBindWatch$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$U-aLKp3H1mvrW9aPyqNdmA8x_qk(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$bindDevice$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$_-xnKPYMn3fjJCIQOM-ttKVwj1I(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$unBindWatch$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$aOnH6SvmsU4Yia9V2e5_V2vwfWw(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestMtuChange$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$cSq3g-y_PFm-ReZZd0hF9eromZ4(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$bindDevice$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$dz0CFy45AGt9hMkPzZZKlLKDy78(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$onConnectFailed$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$hzUvdaGBC0g4UhreYCgx3SzaKdc(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestScanDevice$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ihkj0PiEwTLsq4KATzk6U9KMPe8(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$setTxWritable$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$mx0wJlPc218_TV2Hmkzkmxc2yjM(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$onBleDisconnected$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$oSSW6J0XdaBhRJbvE8CE5FTQB1E(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$stopScan$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$oeQPHeNPBr47cwZjGvIO-Ucc2_I(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$onBleConnected$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$rQYQzZf-poaqubXuOwkb9iRqrZg(Lcn/baos/watch/sdk/bluetooth/BleService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestRemoveBt$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgDpwtE99gQwlmD0qqgXQx_QwNQ(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestRemoveBt$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$uaISr_z7KEZioDSjlAMfb2E5JpQ(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestBleSuccess$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$vDup8OdfN_OsRnCVi6-NwKBiGp4(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$disconnect$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$xCj3WojhiksHoyJQBpfj1Ff6PZ4(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->unBindWatchFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$y_L0hH6fCqej51ey-5pMnyQiu0I(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 1

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$requestMtuChange$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$zRUMgu-6gHnFoR5T-xJJDYXOVnk(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->lambda$removeBtDevice$22(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetiDeviceCallback(Lcn/baos/watch/sdk/bluetooth/BleService;)Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iDeviceCallback:Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisReConnect(Lcn/baos/watch/sdk/bluetooth/BleService;)Z
    .registers 1

    iget-boolean p0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isReConnect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisReConnect(Lcn/baos/watch/sdk/bluetooth/BleService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isReConnect:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isManualCloseBl:Z

    .line 123
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 125
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 127
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    .line 130
    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBleStatus:Ljava/lang/Boolean;

    .line 141
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanResultData:Z

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isReConnect:Z

    .line 149
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBleConnectNum:I

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->sendDataTime:J

    .line 154
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairSuccessTime:J

    .line 156
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairPopTime:J

    .line 159
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->manualConnectTime:J

    .line 162
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairConnectTime:J

    .line 165
    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->scanTime:J

    return-void
.end method

.method private buildScanSettings()Landroid/bluetooth/le/ScanSettings;
    .registers 3

    .line 435
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 443
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    const/4 v1, 0x1

    .line 446
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 449
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 451
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setLegacy(Z)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 453
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method private cancelScanDo()Z
    .registers 3

    .line 412
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    if-eq v0, v1, :cond_29

    .line 413
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 415
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 416
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    const-string v0, "\u84dd\u7259\uff1a\u4f4e\u7248\u672cmMyScanCallBack,\u84dd\u7259\u505c\u6b62\u626b\u63cf"

    .line 417
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    const-string v0, "\u84dd\u7259\uff1acancelScanDo-RuntimeException"

    .line 420
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method private connectNoScanDo()Z
    .registers 8

    const-string v0, "\u84dd\u7259\uff1a----connect-no\uff1a"

    const-string v1, "\u84dd\u7259\uff1aconnectGatt"

    const-string v2, "\u84dd\u7259\uff1a\u84dd\u7259gatt device not found:"

    .line 904
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->checkBleDeviceEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 905
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onGpsNotOpen()V

    return v4

    :cond_15
    const-string v3, "\u84dd\u7259\uff1aconnectNoScanDo-start"

    .line 908
    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v3

    if-nez v3, :cond_2a

    const-string v0, "\u84dd\u7259\uff1aConnectConfig is null,not ready."

    .line 911
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v4

    .line 915
    :cond_2a
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v3

    iget-object v3, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 917
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c9

    iget-object v5, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_40

    goto/16 :goto_c9

    .line 923
    :cond_40
    :try_start_40
    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_57

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v4

    .line 930
    :cond_57
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v2

    if-eqz v2, :cond_6a

    .line 932
    iget-object v6, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v6}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const-string v2, "\u84dd\u7259\uff1a\u84dd\u7259\u505c\u6b62\u626b\u63cf\u542f\u52a8\u8fde\u63a5"

    .line 933
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_6f

    :cond_6a
    const-string v2, "\u84dd\u7259\uff1a-scanner=null-RuntimeException"

    .line 935
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 938
    :goto_6f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 939
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v2

    if-eq v1, v2, :cond_aa

    const-string v0, "\u84dd\u7259\uff1a----connect-start"

    .line 940
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEConnecting(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusHandler:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    invoke-virtual {v5, v0, v4, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 943
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    goto :goto_c7

    .line 945
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception v0

    .line 948
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c7
    const/4 v0, 0x1

    return v0

    :cond_c9
    :goto_c9
    const-string v0, "\u84dd\u7259\uff1a---macAddress=null-RuntimeException"

    .line 918
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v4
.end method

.method public static getClientInstance()Lcom/inuker/bluetooth/library/BluetoothClient;
    .registers 3

    .line 314
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mClient:Lcom/inuker/bluetooth/library/BluetoothClient;

    if-nez v0, :cond_1b

    .line 315
    const-class v0, Lcom/inuker/bluetooth/library/BluetoothClient;

    monitor-enter v0

    .line 316
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mClient:Lcom/inuker/bluetooth/library/BluetoothClient;

    if-nez v1, :cond_16

    .line 317
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothClient;

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v2, v2, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/inuker/bluetooth/library/BluetoothClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mClient:Lcom/inuker/bluetooth/library/BluetoothClient;

    .line 319
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 321
    :cond_1b
    :goto_1b
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mClient:Lcom/inuker/bluetooth/library/BluetoothClient;

    return-object v0
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;
    .registers 2

    .line 303
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    if-nez v0, :cond_17

    .line 304
    const-class v0, Lcn/baos/watch/sdk/bluetooth/BleService;

    monitor-enter v0

    .line 305
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    if-nez v1, :cond_12

    .line 306
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/BleService;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    .line 308
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 310
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    return-object v0
.end method

.method private getStatusChangeDef(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;
    .registers 10

    .line 361
    new-instance v6, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 362
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 363
    invoke-virtual {p2, v6}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p2

    .line 367
    :cond_24
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private synthetic lambda$bindDevice$23()V
    .registers 3

    .line 1482
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1483
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_12

    .line 1484
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    const/4 v0, 0x0

    .line 1485
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    :cond_12
    return-void
.end method

.method private synthetic lambda$bindDevice$24()V
    .registers 7

    .line 1460
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a--bindDevice"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1462
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->hasBleConnectError(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "\u84dd\u7259\uff1aconnect error happened. shouldn\'t call bindDevice at this time"

    .line 1463
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    goto :goto_99

    .line 1465
    :cond_29
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "\u84dd\u7259\uff1ainvalid status:%d. shouldn\'t call bindDevice at this time."

    .line 1466
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    goto :goto_99

    .line 1469
    :cond_38
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->getPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 1472
    iget-object v2, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    const-string v2, "W200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1474
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 1475
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c1940000000000L    # 9000.0

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 1476
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    if-eqz v2, :cond_7f

    .line 1477
    invoke-interface {v2, v1}, Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;->onBindStart(I)V

    goto :goto_7f

    :cond_7d
    const/16 v1, 0x378

    .line 1481
    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v2, v2, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda29;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1489
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendPhoneBindRequest(ILjava/lang/String;Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;)Z

    .line 1490
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    :goto_99
    return-void
.end method

.method private synthetic lambda$directConnect$13()V
    .registers 1

    .line 892
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->connectNoScanDo()Z

    return-void
.end method

.method private synthetic lambda$disconnect$9()V
    .registers 4

    .line 801
    :try_start_0
    new-instance v0, Lcn/baos/watch/sdk/util/AppUtils;

    invoke-direct {v0}, Lcn/baos/watch/sdk/util/AppUtils;-><init>()V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/util/AppUtils;->unregister(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259:disconnect"

    .line 805
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u84dd\u7259:disconnect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 809
    :cond_34
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_39

    return-void

    .line 812
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1a\u84dd\u7259:mBluetoothGatt()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_54

    .line 814
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_54
    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isManualCloseBl:Z

    .line 816
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 818
    :try_start_5c
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/BasSdk;->registerKeepLive(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_66
    return-void
.end method

.method private synthetic lambda$onBleConnected$12()V
    .registers 2

    const-string v0, "\u84dd\u7259\uff1a--onBleConnected--HB_BLE_CONNECT_SUCCESS"

    .line 877
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestMtuChange()V

    .line 880
    :try_start_8
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/BasSdk;->registerKeepLive(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 882
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method static synthetic lambda$onBleDisconnected$15()V
    .registers 3

    .line 1202
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a----disconnct---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1204
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_39

    .line 1205
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v0, v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify(BleNativeStatusEnum.HB_BLE_DISCONNECTED);="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private synthetic lambda$onBleDisconnected$16()V
    .registers 3

    .line 1229
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1230
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_f

    .line 1231
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    :cond_f
    return-void
.end method

.method private synthetic lambda$onBleDisconnected$17()V
    .registers 5

    .line 1214
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a---------------start--config :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_23

    return-void

    .line 1219
    :cond_23
    iget-boolean v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v1, :cond_42

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a---------------start--config isActive:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 1223
    :cond_42
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1224
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_52

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_6d

    :cond_52
    const-string v0, "\u84dd\u7259\uff1a---onBleDisconnected-startConnect"

    .line 1225
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "\u84dd\u7259\uff1a---------------end--time"

    .line 1226
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    .line 1228
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda17;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6d
    return-void
.end method

.method private synthetic lambda$onConnectFailed$10()V
    .registers 4

    .line 839
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aonConnectFailed-->onConnectFailed:= no :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 841
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_26

    const-string v0, "\u84dd\u7259\uff1aonConnectFailed-->onConnectFailed:= no :disabled"

    .line 842
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    :cond_26
    return-void
.end method

.method private synthetic lambda$onConnectFailed$11()V
    .registers 4

    .line 853
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aonConnectFailed-->mBluetoothGatt:= no :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 855
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_26

    const-string v0, "\u84dd\u7259\uff1aonConnectFailed-->mBluetoothGatt:= no :disabled"

    .line 856
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    :cond_26
    return-void
.end method

.method private synthetic lambda$removeBtDevice$22(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .line 1411
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 1413
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->removeBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_39

    .line 1415
    :cond_f
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 1416
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_39

    .line 1417
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_39

    const-string p1, "\u84dd\u7259\uff1aunbind failed."

    .line 1418
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception p1

    .line 1422
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u84dd\u7259\uff1a---requestRemoveBt--Exception"

    .line 1423
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private synthetic lambda$requestBleSuccess$14()V
    .registers 2

    .line 982
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iDeviceCallback:Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;->onBlePair()V

    return-void
.end method

.method private synthetic lambda$requestMtuChange$4()V
    .registers 4

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1a--requestMtuChange-start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->maxBleMtuSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 626
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 627
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_41

    const/16 v1, 0xf4

    .line 628
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result v0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a--requestMtu-mtu-status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private synthetic lambda$requestMtuChange$5()V
    .registers 4

    .line 634
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 635
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_23

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a--requestMtu-mtu-current="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    :cond_23
    return-void
.end method

.method private synthetic lambda$requestMtuChange$6()V
    .registers 5

    .line 614
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    const-string v1, "\u84dd\u7259\uff1a--requestMtuChange"

    .line 615
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a--requestMtuChange : curStatus :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 617
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_6b

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_6b

    .line 618
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 619
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 621
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a---HB_BLE_MTU_CHANGING--->>>currentStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda27;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda28;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6b
    return-void
.end method

.method private synthetic lambda$requestRemoveBt$18(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .line 1366
    :try_start_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsConnect()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1368
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->disConnectBt(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 1370
    :cond_15
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->removeBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1372
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "removeBond"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 1373
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_42

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_42

    const-string p1, "\u84dd\u7259\uff1aunbind failed."

    .line 1375
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    move-exception p1

    .line 1378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u84dd\u7259\uff1a---requestRemoveBt--Exception"

    .line 1379
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method private synthetic lambda$requestRemoveBt$19(Ljava/lang/String;)V
    .registers 2

    .line 1387
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->VerifyBtDel(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestRemoveBt$20()V
    .registers 7

    const-string v0, "\u84dd\u7259\uff1a--config--move--mac="

    const-string v1, "\u84dd\u7259\uff1a--config--move--mac=-start"

    .line 1351
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->cleanMessageQueue()V

    .line 1352
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->BLE_NETWORK_DOWN:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v2, v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v2}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->BLE_NETWORK_DOWN:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1355
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u84dd\u7259\uff1aBlueToothJniManager.config="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_b2

    .line 1357
    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_b2

    .line 1358
    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1361
    :try_start_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_85} :catch_86

    goto :goto_8f

    :catch_86
    move-exception v0

    .line 1383
    :try_start_87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u84dd\u7259\uff1a--config--move--mac=-end == error"

    .line 1384
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1387
    :goto_8f
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v2}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda13;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 1388
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    .line 1389
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    .line 1390
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->handleBleStatusBleUnbind()V

    .line 1391
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_ac} :catch_ad

    goto :goto_b2

    :catch_ad
    const-string v0, "\u84dd\u7259\uff1a---requestRemoveBt--RuntimeException"

    .line 1393
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_b2
    :goto_b2
    const-string v0, "\u84dd\u7259\uff1a--handleBleStatusBleUnbind"

    .line 1397
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestRemoveBt$21()V
    .registers 2

    .line 1400
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->handleBleStatusBleUnbind()V

    const/4 v0, 0x0

    .line 1401
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    return-void
.end method

.method private synthetic lambda$requestScanDevice$3()V
    .registers 1

    .line 606
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->scanDo()Z

    return-void
.end method

.method private synthetic lambda$scanDo$0()V
    .registers 2

    .line 484
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEConnectTimeOut()V

    return-void
.end method

.method private synthetic lambda$scanDo$1()V
    .registers 5

    .line 481
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 482
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_10

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_21

    .line 483
    :cond_10
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDisconnected()V

    .line 484
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda24;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return-void
.end method

.method private synthetic lambda$scanDoBt$2()V
    .registers 2

    .line 557
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 558
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    .line 559
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->scanFinish()V

    .line 560
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getClientInstance()Lcom/inuker/bluetooth/library/BluetoothClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/BluetoothClient;->stopSearch()V

    :cond_15
    return-void
.end method

.method private synthetic lambda$setTxWritable$7()V
    .registers 6

    .line 662
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_a3

    if-nez v0, :cond_10

    goto/16 :goto_a3

    .line 666
    :cond_10
    iget-object v2, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_8f

    .line 668
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u84dd\u7259\uff1a\u84dd\u7259characteristic.getUuid():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 672
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u84dd\u7259\uff1a\u84dd\u7259isEnableNotification:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 675
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    .line 676
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 677
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 678
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u84dd\u7259onServicesDiscovered--writeDescriptor=>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_a3

    .line 684
    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u84dd\u7259can\'t find service ->:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method private synthetic lambda$stopScan$8()V
    .registers 1

    .line 789
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->cancelScanDo()Z

    return-void
.end method

.method private synthetic lambda$unBindWatch$25()V
    .registers 5

    .line 1517
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->getPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1518
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 1519
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1520
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/BleService$4;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$4;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const/16 v3, 0x309

    invoke-virtual {v1, v3, v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendPhoneBindRequest(ILjava/lang/String;Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;)Z

    return-void
.end method

.method private synthetic lambda$unBindWatch$26()V
    .registers 7

    .line 1534
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->cancelScanDo()Z

    .line 1535
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V

    return-void
.end method

.method private removeBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    .line 1408
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda31;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scanDo()Z
    .registers 7

    .line 471
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 472
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    return v2

    :cond_e
    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBleStatus:Ljava/lang/Boolean;

    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259->scan()"

    .line 475
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->checkBleDeviceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    return v1

    .line 480
    :cond_1e
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda8;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u84dd\u7259\uff1a---isScanAuto> :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 490
    iget-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    if-eqz v0, :cond_49

    .line 491
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDeviceFound()V

    return v1

    .line 494
    :cond_49
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->scanDoBt()V

    .line 496
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 497
    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v3, :cond_5c

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v3, :cond_5f

    .line 498
    :cond_5c
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->cancelScanDo()Z

    .line 500
    :cond_5f
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 501
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanResultData:Z

    .line 502
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda9;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v0, :cond_b9

    .line 504
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const-string v1, "\u84dd\u7259\uff1a\u84dd\u7259scanner\u4e0d\u4e3a\u7a7a"

    .line 505
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "\u84dd\u7259\uff1a\u4f4e\u7248\u672c\u626b\u63cf\u56de\u8c03\u8fde\u63a5,\u84dd\u7259\u5f00\u59cb\u626b\u63cf"

    .line 506
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iget-object v4, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 508
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 509
    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isScan:Z

    if-nez v0, :cond_ac

    .line 510
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEConnecting(Ljava/lang/String;)V

    goto :goto_b3

    .line 512
    :cond_ac
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEStartScan()V

    .line 514
    :goto_b3
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    goto :goto_be

    :cond_b9
    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259scanner\u4e3a\u7a7aRuntimeException"

    .line 516
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_be
    return v2
.end method

.method private startScanError()V
    .registers 4

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1astartScanError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanResultData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1731
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1732
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1astartScanError->config="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1733
    iget-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanResultData:Z

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    const-string v0, "\u84dd\u7259\uff1astartScanError-start-connect"

    .line 1736
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->stopScan()Z

    .line 1738
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->connectNoScanDo()Z

    return-void
.end method

.method private unBindWatchFailed()V
    .registers 1

    .line 372
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onUnbindSuccess()V

    return-void
.end method


# virtual methods
.method public VerifyBtDel(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 1704
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a\u6821\u9a8cBT-mac\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getBondedDevices()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_50

    .line 1708
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 1709
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_26

    .line 1711
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1713
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v2, v0

    goto :goto_26

    :cond_50
    const/4 p1, 0x0

    .line 1718
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1719
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->cleaSessionAsyncDelayJob()V

    .line 1720
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\uff1a\u6821\u9a8cBT\u662f\u5426\u5220\u9664\uff1b"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v2, :cond_74

    .line 1722
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBtNoDelDialog()V

    :cond_74
    return-void
.end method

.method public bindDevice()Z
    .registers 3

    const-string v0, "\u84dd\u7259\uff1a--bindDevice"

    .line 1458
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda6;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public bindDeviceBindRequestByPhone()V
    .registers 6

    .line 1497
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->getPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c1940000000000L    # 9000.0

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 1499
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    if-eqz v2, :cond_1e

    .line 1500
    invoke-interface {v2, v1}, Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;->onBindStart(I)V

    .line 1501
    :cond_1e
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendPhoneBindRequest(ILjava/lang/String;Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;)Z

    .line 1502
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    return-void
.end method

.method protected checkBleDeviceEnabled()Z
    .registers 4

    .line 458
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "\u84dd\u7259\uff1a\u626b\u63cfscan:\u84dd\u7259\u672a\u6253\u5f00"

    .line 459
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mIBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 461
    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBleDeviceStateChanged(Z)V

    .line 462
    :cond_15
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    return v1

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public directConnect()V
    .registers 7

    const-string v0, "\u84dd\u7259\uff1acall direct connect."

    .line 889
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v4, 0x1

    const/16 v5, 0x7d0

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V

    .line 891
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda26;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnect()V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1adisconnect"

    .line 798
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda10;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBondedDevices()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 1695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getBtStatusCallback()Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;
    .registers 2

    .line 233
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBtStatusCallback:Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    return-object v0
.end method

.method public getManualConnectTime()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->manualConnectTime:J

    return-wide v0
.end method

.method public getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;
    .registers 2

    .line 221
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->notificationHandler:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    return-object v0
.end method

.method public getPairConnectTime()J
    .registers 3

    .line 200
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairConnectTime:J

    return-wide v0
.end method

.method public getPairPopTime()J
    .registers 3

    .line 208
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairPopTime:J

    return-wide v0
.end method

.method public getPairSuccessTime()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairSuccessTime:J

    return-wide v0
.end method

.method public getScanTime()J
    .registers 3

    .line 168
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->scanTime:J

    return-wide v0
.end method

.method public getSendDataTime()J
    .registers 3

    .line 176
    iget-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->sendDataTime:J

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    const-string v0, "\u84dd\u7259\uff1aBTClient-init"

    .line 377
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    const-string v0, "bluetooth"

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 381
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    if-nez p1, :cond_26

    .line 382
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    .line 383
    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->start()V

    .line 385
    :cond_26
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcn/baos/watch/sdk/bluetooth/BleService$DefaultConnectImpl;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/content/Context;)V

    invoke-direct {p1, v0, v1}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;-><init>(Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEventHandler;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusHandler:Landroid/bluetooth/BluetoothGattCallback;

    .line 386
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    invoke-direct {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    .line 387
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->intStatusHandlerMap()V

    .line 388
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/BleService$1;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    .line 404
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getClientInstance()Lcom/inuker/bluetooth/library/BluetoothClient;

    return-void
.end method

.method public initSppConnect()V
    .registers 5

    const-string v0, "initSppConnect start"

    .line 1302
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_SPP_IS_OPEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSppConnect start is not supported"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$3;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$3;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return-void
.end method

.method protected intStatusHandlerMap()V
    .registers 10

    .line 339
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    .line 340
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v5, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda33;

    invoke-direct {v5, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda33;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 341
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->setAutoStateChange(Z)V

    .line 342
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda2;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda3;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda4;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda5;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda34;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda34;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda36;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda36;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda35;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda37;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda37;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda38;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda38;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    new-instance v8, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    new-instance v6, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    new-instance v7, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-direct {p0, v0, v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->getStatusChangeDef(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->setAutoStateChange(Z)V

    return-void
.end method

.method public isBleOpen()Z
    .registers 2

    .line 1024
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_9

    .line 1025
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectSuccess()Z
    .registers 2

    .line 331
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v0

    return v0
.end method

.method public isModelVerify(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;Landroid/bluetooth/le/ScanResult;)V
    .registers 8

    const-string v0, "\u84dd\u7259\uff1aisModelVerify-isJLW6="

    const-string v1, "\u84dd\u7259\uff1aisModelVerify-huabaoCompany1="

    .line 1622
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 1623
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    const/4 v2, 0x0

    .line 1624
    iput-boolean v2, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    if-eqz p2, :cond_7e

    .line 1625
    array-length v2, p2

    const/16 v3, 0xf

    if-le v2, v3, :cond_7e

    .line 1627
    :try_start_1c
    invoke-static {p2}, Lcn/baos/watch/sdk/util/DeviceIdUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    .line 1628
    iget-object v2, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1629
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, -0x4

    add-int/lit8 v4, v2, -0x2

    .line 1630
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1631
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " huabaoCompany2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const-string v1, "16"

    .line 1634
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "18"

    .line 1635
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    const/4 p2, 0x1

    .line 1636
    iput-boolean p2, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    .line 1638
    :cond_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 1640
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V
    .registers 10

    .line 242
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 243
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusCallbackList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;

    .line 244
    invoke-interface {v2, p1}, Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;->onBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    goto :goto_8

    :cond_18
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "notifyBleStatusChange:%s->%s"

    .line 246
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 250
    iget-object v5, v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v5, v0, :cond_30

    .line 251
    iget-object v1, v4, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    .line 257
    :goto_44
    iget-object v4, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 258
    iget-object v6, v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v6, p1, :cond_4a

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a---->oldStatus:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a---->oldStatus-Sccess:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a---->status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a---->def:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    if-nez v1, :cond_af

    :goto_ad
    move v2, v3

    goto :goto_b7

    :cond_af
    if-ne v1, p1, :cond_b2

    goto :goto_ad

    .line 267
    :cond_b2
    sget-object v6, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne p1, v6, :cond_b7

    goto :goto_ad

    .line 270
    :cond_b7
    :goto_b7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u84dd\u7259\uff1a---->def isNext:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->isAutoStateChange()Z

    move-result v6

    if-eqz v6, :cond_4a

    if-eqz v2, :cond_4a

    .line 272
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object v1, v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->stateChangeHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-void

    .line 279
    :cond_dd
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e3
    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 280
    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v3, v0, :cond_e3

    iget-object v3, v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->failedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v3, p1, :cond_e3

    .line 281
    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v3, v3, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->stateChangeFailedHandler:Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e3

    .line 284
    :cond_101
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-void
.end method

.method public onBatchScanResultsData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aonBatchScanResults:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBindSuccess()V
    .registers 5

    const/4 v0, 0x1

    .line 1279
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isReConnect:Z

    const/4 v1, 0x0

    .line 1280
    iput v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBleConnectNum:I

    .line 1281
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->cleanMessageQueue()V

    .line 1282
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->cleaSessionAsyncDelayJob()V

    .line 1283
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    .line 1284
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v1, v2, :cond_4b

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v1, v2, :cond_4b

    .line 1287
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    if-eqz v1, :cond_29

    .line 1288
    invoke-interface {v1}, Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;->onBindSuccess()V

    .line 1289
    :cond_29
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1290
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    if-nez v1, :cond_39

    return-void

    .line 1293
    :cond_39
    iput-boolean v0, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    .line 1294
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_LAST_MAC:Ljava/lang/String;

    iget-object v3, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->saveCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z

    :cond_4b
    return-void
.end method

.method protected onBleConnected()V
    .registers 3

    .line 876
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda25;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleDisconnected()V
    .registers 5

    const-string v0, "\u84dd\u7259\uff1a----onBleDisconnected"

    .line 1196
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_f

    .line 1198
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 1199
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1201
    :cond_f
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1209
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1210
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEDisConnected()V

    const-string v0, "\u84dd\u7259\uff1a---------------start--time"

    .line 1212
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda15;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConnectFailed()V
    .registers 6

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    const-string v1, "\u84dd\u7259\uff1aonConnectFailed"

    .line 829
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v1

    invoke-interface {v1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEConnectFail()V

    .line 832
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aonConnectFailed-->mBluetoothGatt:= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4a

    const-string v1, "\u84dd\u7259\uff1aonConnectFailed-->mBluetoothGatt:= yes"

    .line 835
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 837
    :try_start_31
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 838
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda20;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_44} :catch_45

    goto :goto_5d

    :catch_45
    move-exception v1

    .line 847
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    :cond_4a
    const-string v1, "\u84dd\u7259\uff1aonConnectFailed-->mBluetoothGatt:= no"

    .line 850
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda21;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 863
    :goto_5d
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v1}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify(HB_BLE_DISCONNECTED)=;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 865
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isManualCloseBl:Z

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    sput-object p0, Lcn/baos/watch/sdk/bluetooth/BleService;->instance:Lcn/baos/watch/sdk/bluetooth/BleService;

    .line 104
    invoke-virtual {p0, p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCurrectStatusChangeFailed(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V
    .registers 6

    const-string v0, "\u84dd\u7259\uff1acall failed handler."

    .line 993
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->statusHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 995
    iget-object v2, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v2, p1, :cond_b

    iget-object v2, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v2, p2, :cond_b

    .line 996
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v2, v2, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->stateChangeFailedHandler:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 999
    :cond_29
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq p1, v0, :cond_35

    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq p1, v0, :cond_35

    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne p1, v0, :cond_57

    :cond_35
    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq p2, p1, :cond_3d

    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne p2, p1, :cond_57

    .line 1000
    :cond_3d
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 1002
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 1003
    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    const-string p1, "\u84dd\u7259\uff1a\u4f4e\u7248\u672cmMyScanCallBack,\u84dd\u7259\u505c\u6b62\u626b\u63cf"

    .line 1004
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1006
    :cond_54
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBleDisconnected()V

    :cond_57
    return-void
.end method

.method protected onDeviceFound()V
    .registers 7

    .line 1545
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1546
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v4, 0x1

    const/16 v5, 0x1770

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V

    return-void
.end method

.method public onDisconnected()V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259onDisconnected"

    .line 958
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 959
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->cancelScanDo()Z

    .line 960
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    .line 961
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 962
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v0, v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify();="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onScanFailedData(I)V
    .registers 4

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aonScanFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_34

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    goto :goto_39

    :cond_1f
    const-string p1, "\u84dd\u7259\uff1aerrorCode=4;Fails to start power optimized scan as this feature is not supported"

    .line 1679
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_39

    :cond_25
    const-string p1, "\u84dd\u7259\uff1aerrorCode=3;Fails to start scan due an internal error"

    .line 1676
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_39

    :cond_2b
    const-string p1, "\u84dd\u7259\uff1aerrorCode=2;Fails to start scan as app cannot be registered."

    .line 1672
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1673
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/utils/BleScanUtils;->releaseAllScanClient()Z

    goto :goto_39

    :cond_34
    const-string p1, "\u84dd\u7259\uff1aerrorCode=1;Fails to start scan as BLE scan with the same settings is already started by the app."

    .line 1669
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1682
    :goto_39
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 1684
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_46
    const-string p1, "\u84dd\u7259\uff1a---onScanFailed-"

    .line 1686
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onScanResultData(ILandroid/bluetooth/le/ScanResult;)V
    .registers 6

    .line 1557
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259Rssi\u4fe1\u53f7\u5f3a\u5ea6\u8db3\u591f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u8bbe\u5907\u540d\u79f0:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1558
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u8bbe\u5907\u5730\u5740:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1559
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u8bbe\u5907\u7ed1\u5b9a\u72b6\u6001:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1560
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1557
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1563
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {p1}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;-><init>()V

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->isHuabaoDevice(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1565
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEScanning(Landroid/bluetooth/le/ScanResult;)V

    :cond_70
    const/4 p1, 0x1

    .line 1569
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanResultData:Z

    .line 1570
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1571
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    .line 1572
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v1, v2, :cond_166

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v1, v2, :cond_8d

    goto/16 :goto_166

    :cond_8d
    if-eqz v0, :cond_bb

    .line 1576
    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bb

    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1577
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1aconnectConfig-sure="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_bb
    if-eqz v0, :cond_166

    .line 1580
    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_166

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1581
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 1582
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_166

    .line 1583
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-direct {v0}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;-><init>()V

    .line 1585
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1586
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    .line 1587
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceType:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    const/16 v1, 0xf4

    .line 1588
    iput v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->maxBleMtuSize:I

    .line 1589
    invoke-virtual {p0, v0, p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->isModelVerify(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;Landroid/bluetooth/le/ScanResult;)V

    .line 1590
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->SERVICE_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    .line 1591
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    .line 1592
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    .line 1593
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    .line 1594
    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    const-string v2, "W200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 1595
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->changeMacAddressToFourNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->deviceName:Ljava/lang/String;

    .line 1598
    :cond_13c
    iput-boolean p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanAuto:Z

    .line 1599
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->onBleDeviceDiscoverdAndAction(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)V

    .line 1601
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBleStatus:Ljava/lang/Boolean;

    .line 1603
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    if-eqz p1, :cond_15e

    .line 1605
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, p2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const-string p1, "\u84dd\u7259\uff1a\u84dd\u7259\u505c\u6b62\u626b\u63cf----\u7b49\u5f85BT\u626b\u63cf"

    .line 1606
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_163

    :cond_15e
    const-string p1, "\u84dd\u7259\uff1a-scanner=null-RuntimeException"

    .line 1608
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1610
    :goto_163
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->scanFinish()V

    :cond_166
    :goto_166
    return-void
.end method

.method public onServicesDiscovered()V
    .registers 3

    .line 1012
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 1013
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_15

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v0, v1, :cond_15

    .line 1014
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestMtuChange()V

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_high_priority_done

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    :cond_high_priority_done
    nop

    :cond_15
    return-void
.end method

.method public onUnbindSuccess()V
    .registers 7

    .line 1330
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->cleanMessageQueue()V

    const-string v0, "\u84dd\u7259\uff1acurrent status is wrongonUnbindSuccess"

    .line 1332
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    if-eqz v0, :cond_13

    .line 1334
    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;->onBindFail()V

    .line 1336
    :cond_13
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1338
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V

    return-void
.end method

.method public registerBlePairCallback(Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iDeviceCallback:Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    return-void
.end method

.method public registerBleStatusCallback(Lcn/baos/watch/sdk/interfac/ble/IBleStatusCallback;)V
    .registers 3

    .line 288
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusCallbackList:Ljava/util/Set;

    if-nez v0, :cond_15

    .line 289
    monitor-enter p0

    .line 290
    :try_start_5
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusCallbackList:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusCallbackList:Ljava/util/Set;

    .line 293
    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1

    .line 295
    :cond_15
    :goto_15
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->bleStatusCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestBleSuccess()V
    .registers 7

    .line 972
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBleConnectNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBleConnectNum:I

    .line 973
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEConnected()V

    .line 974
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v0, v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aBlueToothJniManager.bleWritableNotify(BleNativeStatusEnum.HB_BLE_WRITABLE);="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "\u84dd\u7259\uff1a--requestBleSuccess"

    .line 977
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->getPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x457

    .line 980
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendPhoneBindRequest111(ILjava/lang/String;)Z

    const-string v0, "\u84dd\u7259\uff1a---startConnect-onBlePair - send -llll"

    .line 981
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda11;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->monitor:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    sget-object v3, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v4, 0x0

    const/16 v5, 0x1770

    invoke-direct {v1, v2, v3, v4, v5}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;-><init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V

    return-void
.end method

.method public requestConnectBt(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "\u84dd\u7259\uff1arequestConnectBt"

    .line 1430
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1431
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_10

    const-string p1, "\u84dd\u7259\uff1arequestConnectBt--mContext--null"

    .line 1432
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v0

    .line 1435
    :cond_10
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    .line 1436
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    .line 1437
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 1438
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1439
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_already_bonding

    const/4 p1, 0x1

    return p1

    :cond_already_bonding
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "createBond"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 1441
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1442
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    return p1

    :catch_3e
    move-exception p1

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1arequestConnectBt---Exception-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1446
    sget-object p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    return v0
.end method

.method public requestDisconnerDevice()V
    .registers 2

    const-string v0, "\u84dd\u7259\uff1arequestDisconnerDevice"

    .line 598
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    return-void
.end method

.method protected requestMtuChange()V
    .registers 3

    .line 613
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda16;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestOpenBle()V
    .registers 2

    .line 1019
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7

    .line 1020
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_7
    return-void
.end method

.method protected requestRemoveBt()Z
    .registers 5

    const-string v0, "\u84dd\u7259\uff1a--requestRemoveBt"

    .line 1349
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda22;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1399
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda32;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestScanDevice()V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1arequestScanDevice"

    .line 604
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scanDoBt()V
    .registers 5

    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    .line 556
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda7;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    new-instance v0, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    invoke-direct {v0}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;-><init>()V

    const/16 v1, 0x3e8

    .line 564
    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->searchBluetoothClassicDevice(I)Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/search/SearchRequest$Builder;->build()Lcom/inuker/bluetooth/library/search/SearchRequest;

    move-result-object v0

    .line 566
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getClientInstance()Lcom/inuker/bluetooth/library/BluetoothClient;

    move-result-object v1

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/BleService$2;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$2;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v1, v0, v2}, Lcom/inuker/bluetooth/library/BluetoothClient;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V

    return-void
.end method

.method public scanFinish()V
    .registers 3

    .line 1647
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBleStatus:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    goto :goto_54

    .line 1650
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1a-=-scanFinish-isScanBtStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isScanBleStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBleStatus:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1651
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1652
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->isScan()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v0, :cond_4c

    const-string v0, "\u84dd\u7259\uff1a---startConnect-scan-> \u53d1\u8d77\u914d\u5bf9"

    .line 1653
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iDeviceCallback:Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IDeviceAdapter;->onBlePair()V

    goto :goto_54

    :cond_4c
    const-string v0, "\u84dd\u7259\uff1a---startConnect-scan-> normal - > pair"

    .line 1656
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->onDeviceFound()V

    :cond_54
    :goto_54
    return-void
.end method

.method public setDiscoverServices()V
    .registers 4

    .line 646
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a----setDiscoverServices=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 648
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_36

    .line 649
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVEREDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    const-string v0, "\u84dd\u7259\uff1a----setDiscoverServices==discoverServices"

    .line 650
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_36

    const-string v0, "\u84dd\u7259\uff1a----setDiscoverServices==real"

    .line 652
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    :cond_36
    return-void
.end method

.method public setIBleBindSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;)V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1aHbBtClientManager \u521d\u59cb\u5316 iBleClientCallback"

    .line 237
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    return-void
.end method

.method public setIBleClientSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mIBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    return-void
.end method

.method public setIBtBindSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;)V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1aHbBtClientManager \u521d\u59cb\u5316 iBtStatusCallback"

    .line 228
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBtStatusCallback:Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;

    return-void
.end method

.method public setManualConnectTime(J)V
    .registers 3

    .line 196
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->manualConnectTime:J

    return-void
.end method

.method public setPairConnectTime(J)V
    .registers 3

    .line 204
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairConnectTime:J

    return-void
.end method

.method public setPairPopTime(J)V
    .registers 3

    .line 212
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairPopTime:J

    return-void
.end method

.method public setPairSuccessTime(J)V
    .registers 3

    .line 188
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->pairSuccessTime:J

    return-void
.end method

.method public setScanTime(J)V
    .registers 3

    .line 172
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->scanTime:J

    return-void
.end method

.method public setSdkNotifcation(Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;)V
    .registers 3

    const-string v0, "\u84dd\u7259\uff1aHbBtClientManager \u521d\u59cb\u5316 setIBleClientSdkCallback"

    .line 216
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->notificationHandler:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    return-void
.end method

.method public setSendDataTime(J)V
    .registers 3

    .line 180
    iput-wide p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->sendDataTime:J

    return-void
.end method

.method public setTxWritable()V
    .registers 3

    .line 661
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda30;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startConnect()Z
    .registers 10

    const-string v0, "\u84dd\u7259\uff1a---startConnect--connectConfig.isPair:"

    const/4 v1, 0x1

    .line 705
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isReConnect:Z

    .line 706
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    .line 707
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_19

    return v4

    .line 711
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u84dd\u7259\uff1a---startConnect--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-----"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 712
    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-eq v3, v5, :cond_dc

    iget-boolean v5, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    if-nez v5, :cond_dc

    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v3, v5, :cond_45

    goto/16 :goto_dc

    .line 718
    :cond_45
    sget-object v5, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v3, v5, :cond_4f

    const-string v0, "\u84dd\u7259\uff1a\u914d\u5bf9\u72b6\u6001  start-: ing"

    .line 719
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v1

    .line 723
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v6

    iget-boolean v6, v6, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v5

    iget-boolean v5, v5, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectStatus:Z

    if-eqz v5, :cond_90

    .line 726
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->isConnectSuccess()Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v3, v0, :cond_8f

    .line 728
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->iBindAdapter:Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;

    if-eqz v0, :cond_8a

    .line 729
    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;->onBindSuccess()V

    :cond_8a
    const-string v0, "\u84dd\u7259\uff1a--- \u5df2\u5b8c\u6210\u914d\u5bf9"

    .line 730
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_8f
    return v1

    .line 735
    :cond_90
    iget-boolean v3, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-eqz v3, :cond_d3

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u84dd\u7259\uff1a---startConnect--connectConfig.isJLW6:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isJLW6:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 738
    :try_start_ae
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->isBondedDevices()Z

    move-result v2

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->directConnect()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_cd} :catch_ce

    goto :goto_db

    :catch_ce
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :cond_d3
    const-string v0, "\u84dd\u7259\uff1a---startConnect-scan"

    .line 746
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->requestScanDevice()V

    :goto_db
    return v1

    .line 713
    :cond_dc
    :goto_dc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1a---startConnect--\u8fde\u63a5\u4e2d-----"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v1
.end method

.method public startReConnect()Z
    .registers 2

    .line 691
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_start_reconnect_check

    const/4 v0, 0x0

    return v0

    :cond_start_reconnect_check
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 692
    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->isActive:Z

    if-nez v0, :cond_f

    goto :goto_14

    .line 694
    :cond_f
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    const/4 v0, 0x1

    return v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public startScan()V
    .registers 5

    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259->startScan()"

    .line 523
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "\u84dd\u7259\uff1a\u84dd\u7259scanner\u4e0d\u4e3a\u7a7a"

    .line 526
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "\u84dd\u7259\uff1a\u4f4e\u7248\u672c\u626b\u63cf\u56de\u8c03\u8fde\u63a5,\u84dd\u7259\u5f00\u59cb\u626b\u63cf"

    .line 527
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 530
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onBLEStartScan()V

    goto :goto_32

    :cond_2d
    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259scanner\u4e3a\u7a7aRuntimeException"

    .line 532
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public stopScan()Z
    .registers 3

    .line 788
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda23;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public stopScanOnly()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 429
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_d
    return-void
.end method

.method public stopSearchScan()V
    .registers 3

    .line 537
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 539
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mScanCallBack:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const-string v0, "\u84dd\u7259\uff1a\u84dd\u7259\u505c\u6b62\u626b\u63cf"

    .line 540
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    const-string v0, "\u84dd\u7259\uff1a-scanner=null-RuntimeException"

    .line 542
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 544
    :goto_18
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 545
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v0, v1, :cond_2b

    .line 546
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->notifyBleStatusChange(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    :cond_2b
    return-void
.end method

.method public unBindWatch()V
    .registers 5

    const/4 v0, 0x1

    .line 1507
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->isUnbind:Z

    .line 1508
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->cleanMessageQueue()V

    .line 1510
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1511
    new-instance v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    invoke-direct {v1}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;-><init>()V

    .line 1512
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    iput-object v0, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1513
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->deleteCurrentConfig(Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;)Z

    .line 1515
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda18;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1533
    :try_start_2e
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda19;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    .line 1538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1540
    :goto_41
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public writeCharacteristic([B)Z
    .registers 6

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    iget-boolean v0, v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->isConnectingClassical:Z

    if-eqz v0, :cond_skip_throttle

    const/4 v0, 0x0

    return v0

    :cond_skip_throttle
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 762
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 765
    :cond_18
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1d

    return v2

    .line 768
    :cond_1d
    iget-object v3, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 771
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 772
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\uff1asend-device: \u53d1\u9001\u7ed9\u8bbe\u5907\u7684\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 774
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/4 p1, 0x1

    return p1

    :cond_4b
    const-string p1, "\u84dd\u7259\uff1awrite characteristic failed, service no founded"

    .line 780
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v2
.end method
