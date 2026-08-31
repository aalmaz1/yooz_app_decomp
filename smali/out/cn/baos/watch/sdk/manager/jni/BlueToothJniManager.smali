.class public Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;
.super Ljava/lang/Object;
.source "BlueToothJniManager.java"


# static fields
.field private static final notifier:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "JNIControl"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->notifier:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bleFrameArrived([BI)Z
.end method

.method public static native bleInit(Lcn/baos/watch/sdk/manager/jni/init/IDeviceStatusCallback;Lcn/baos/watch/sdk/manager/jni/init/IBleDataNotificationCallBack;)Z
.end method

.method public static native bleWritableNotify(I)Z
.end method

.method public static native bleWriteData(I[BILcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;)I
.end method

.method public static callByC()Ljava/lang/String;
    .registers 1

    const-string v0, "\u88abC\u4ee3\u7801\u56de\u8c03"

    return-object v0
.end method

.method public static native cancelCurrentSendingSession(II)Z
.end method

.method public static native cleanBleNativeContext()Z
.end method

.method public static deviceSendFn([BI)Z
    .registers 7

    .line 100
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->getBleWriteLockerForC()Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result p1

    .line 108
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->getConnectStatus()Z

    move-result v0

    .line 109
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->isSppTransLateData()Z

    move-result v1

    .line 110
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;

    sget-object v3, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_SPP_IS_OPEN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bluetooth: bleBond:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__sppConnect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "__sisSppTransLate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---isSppOpen-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_70

    if-eqz v0, :cond_70

    if-eqz v1, :cond_70

    if-eqz v2, :cond_70

    .line 113
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->send([B)V

    goto :goto_77

    .line 116
    :cond_70
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->writeData([B)Z

    :goto_77
    const/4 p0, 0x1

    return p0
.end method

.method public static native handleBleWrite()Z
.end method

.method public static notifyBleFlush()V
    .registers 2

    const-string v0, "enter notifyBleFlush"

    .line 123
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->getBleWriteLockerForC()Ljava/lang/Object;

    move-result-object v0

    .line 125
    monitor-enter v0

    .line 126
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 127
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

.method public static native printStringByJni()Ljava/lang/String;
.end method

.method public static native printStringByJniCallback()Ljava/lang/String;
.end method

.method public static native readFromBuffer(I[BI)I
.end method

.method public static threadSleep(I)V
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enter threadSleep,thread id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8fdb\u7a0bid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    int-to-long v0, p0

    .line 145
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method public static waitforBleWrite()V
    .registers 2

    const-string v0, "enter waitforBleWrite"

    .line 131
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/locker/LockerBleManager;->getBleWriteLockerForC()Ljava/lang/Object;

    move-result-object v0

    .line 134
    :try_start_9
    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_a} :catch_12

    .line 135
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 136
    monitor-exit v0

    goto :goto_16

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    :try_start_11
    throw v1
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_16
    return-void
.end method
