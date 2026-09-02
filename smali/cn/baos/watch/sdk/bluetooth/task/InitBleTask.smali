.class public Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;
.super Ljava/lang/Thread;
.source "InitBleTask.java"


# static fields
.field public static blueToothStatus:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "bluetooth int task"

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "init status:"

    const-string v1, "\u521d\u59cb\u5316\u84dd\u7259\u7ebf\u7a0b\u542f\u52a8"

    .line 22
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 25
    :try_start_8
    sput v1, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->blueToothStatus:I

    .line 28
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask$1;-><init>(Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;)V

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/bledatahandler/BleDataNotificationCb;

    invoke-direct {v2}, Lcn/baos/watch/sdk/bluetooth/bledatahandler/BleDataNotificationCb;-><init>()V

    invoke-static {v1, v2}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleInit(Lcn/baos/watch/sdk/manager/jni/init/IDeviceStatusCallback;Lcn/baos/watch/sdk/manager/jni/init/IBleDataNotificationCallBack;)Z

    move-result v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    sput v0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->blueToothStatus:I

    const-string v0, "ble write thread begin to wait data "

    .line 50
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->handleBleWrite()Z

    const-string v0, "\u5e95\u5c42\u901a\u4fe1\u7ebf\u7a0b\u9000\u51fa\uff0c\u9700\u8981\u91cd\u65b0\u542f\u52a8app\u6765\u5efa\u7acb\u8fde\u63a5\uff01"

    .line 53
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 54
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u6570\u636e\u7ebf\u7a0b\u4e2d\u65ad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
