.class public abstract Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.super Ljava/lang/Object;
.source "BleRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;
.implements Lcom/inuker/bluetooth/library/connect/request/IBleRequest;
.implements Landroid/os/Handler$Callback;
.implements Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;
.implements Lcom/inuker/bluetooth/library/RuntimeChecker;


# static fields
.field protected static final MSG_REQUEST_TIMEOUT:I = 0x20


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

.field protected mExtra:Landroid/os/Bundle;

.field private mFinished:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mRequestTimeout:Z

.field protected mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

.field protected mResponseHandler:Landroid/os/Handler;

.field private mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

.field protected mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    .line 46
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 267
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "request canceled"

    .line 269
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    const/4 v0, -0x2

    .line 274
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V

    return-void
.end method

.method public checkRuntime()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/RuntimeChecker;->checkRuntime()V

    return-void
.end method

.method public clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    return-void
.end method

.method public closeGatt()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "close gatt"

    .line 187
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->closeGatt()V

    return-void
.end method

.method public discoverService()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->discoverService()Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;

    move-result-object v0

    return-object v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getStatusText()Ljava/lang/String;
    .registers 2

    .line 119
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getCurrentStatus()I

    move-result v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/Constants;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutInMillis()J
    .registers 3

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_d

    .line 195
    :cond_8
    iput-boolean v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRequestTimeout:Z

    .line 196
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->closeGatt()V

    :goto_d
    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s %s >>> %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectStatusChanged(Z)V
    .registers 2

    if-nez p1, :cond_c

    .line 284
    iget-boolean p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRequestTimeout:Z

    if-eqz p1, :cond_8

    const/4 p1, -0x7

    goto :goto_9

    :cond_8
    const/4 p1, -0x1

    :goto_9
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    :cond_c
    return-void
.end method

.method protected onRequestCompleted(I)V
    .registers 5

    .line 173
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "request complete: code = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->clearGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V

    .line 182
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

    invoke-interface {p1, p0}, Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;->onRequestCompleted(Lcom/inuker/bluetooth/library/connect/request/BleRequest;)V

    return-void
.end method

.method public onResponse(I)V
    .registers 4

    .line 69
    iget-boolean v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mFinished:Z

    .line 75
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponseHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;-><init>(Lcom/inuker/bluetooth/library/connect/request/BleRequest;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openGatt()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->openGatt()Z

    move-result v0

    return v0
.end method

.method public final process(Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;)V
    .registers 4

    .line 151
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->checkRuntime()V

    .line 153
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mDispatcher:Lcom/inuker/bluetooth/library/connect/IBleConnectDispatcher;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getStatusText()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Process %s, status = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, -0x4

    .line 158
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    goto :goto_49

    .line 159
    :cond_2e
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBluetoothEnabled()Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, -0x5

    .line 160
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    goto :goto_49

    .line 163
    :cond_39
    :try_start_39
    invoke-virtual {p0, p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    .line 164
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->processRequest()V
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_40

    goto :goto_49

    :catchall_40
    move-exception p1

    .line 166
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    const/16 p1, -0xa

    .line 167
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onRequestCompleted(I)V

    :goto_49
    return-void
.end method

.method public abstract processRequest()V
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public putIntExtra(Ljava/lang/String;I)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public readRemoteRssi()Z
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->readRemoteRssi()Z

    move-result v0

    return v0
.end method

.method public refreshDeviceCache()Z
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->refreshDeviceCache()Z

    move-result v0

    return v0
.end method

.method public registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->registerGattResponseListener(Lcom/inuker/bluetooth/library/connect/listener/GattResponseListener;)V

    return-void
.end method

.method public requestMtu(I)Z
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->requestMtu(I)Z

    move-result p1

    return p1
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->setCharacteristicIndication(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result p1

    return p1
.end method

.method public setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->setCharacteristicNotification(Ljava/util/UUID;Ljava/util/UUID;Z)Z

    move-result p1

    return p1
.end method

.method public setRuntimeChecker(Lcom/inuker/bluetooth/library/RuntimeChecker;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mRuntimeChecker:Lcom/inuker/bluetooth/library/RuntimeChecker;

    return-void
.end method

.method public setWorker(Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    return-void
.end method

.method protected startRequestTiming()V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->getTimeoutInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected stopRequestTiming()V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method

.method public writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeCharacteristicWithNoRsp(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method

.method public writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mWorker:Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inuker/bluetooth/library/connect/IBleConnectWorker;->writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result p1

    return p1
.end method
