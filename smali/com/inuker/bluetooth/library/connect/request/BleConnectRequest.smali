.class public Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleConnectRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/ServiceDiscoverListener;


# static fields
.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_CONNECT_TIMEOUT:I = 0x3

.field private static final MSG_DISCOVER_SERVICE:I = 0x2

.field private static final MSG_DISCOVER_SERVICE_TIMEOUT:I = 0x4

.field private static final MSG_RETRY_DISCOVER_SERVICE:I = 0x5


# instance fields
.field private mConnectCount:I

.field private mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

.field private mServiceDiscoverCount:I


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .registers 3

    .line 29
    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    if-eqz p1, :cond_6

    goto :goto_f

    .line 30
    :cond_6
    new-instance p1, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;

    invoke-direct {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions$Builder;->build()Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    return-void
.end method

.method private doDiscoverService()Z
    .registers 2

    .line 67
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mServiceDiscoverCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mServiceDiscoverCount:I

    .line 68
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->discoverService()Z

    move-result v0

    return v0
.end method

.method private doOpenNewGatt()Z
    .registers 2

    .line 62
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectCount:I

    .line 63
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->openGatt()Z

    move-result v0

    return v0
.end method

.method private onConnectSuccess()V
    .registers 3

    .line 200
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->getGattProfile()Lcom/inuker/bluetooth/library/model/BleGattProfile;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "extra.gatt.profile"

    .line 202
    invoke-virtual {p0, v1, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_b
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onRequestCompleted(I)V

    return-void
.end method

.method private onServiceDiscoverFailed()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onServiceDiscoverFailed"

    .line 88
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->refreshDeviceCache()Z

    .line 90
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private processConnect()V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mServiceDiscoverCount:I

    .line 42
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->getCurrentStatus()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x13

    if-eq v0, v1, :cond_17

    goto :goto_36

    .line 56
    :cond_17
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onConnectSuccess()V

    goto :goto_36

    .line 44
    :cond_1b
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processDiscoverService()V

    goto :goto_36

    .line 48
    :cond_1f
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->doOpenNewGatt()Z

    move-result v0

    if-nez v0, :cond_29

    .line 49
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->closeGatt()V

    goto :goto_36

    .line 51
    :cond_29
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->getConnectTimeout()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_36
    return-void
.end method

.method private processConnectTimeout()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "connect timeout"

    .line 128
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->log(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->closeGatt()V

    return-void
.end method

.method private processDiscoverService()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->getStatusText()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "processDiscoverService, status = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->getCurrentStatus()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/16 v1, 0x13

    if-eq v0, v1, :cond_21

    goto :goto_40

    .line 110
    :cond_21
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onConnectSuccess()V

    goto :goto_40

    .line 98
    :cond_25
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->doDiscoverService()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 99
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onServiceDiscoverFailed()V

    goto :goto_40

    .line 101
    :cond_2f
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->getServiceDiscoverTimeout()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_40

    .line 106
    :cond_3d
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->retryConnectIfNeeded()V

    :goto_40
    return-void
.end method

.method private processDiscoverServiceTimeout()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "service discover timeout"

    .line 134
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->log(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->closeGatt()V

    return-void
.end method

.method private retryConnectIfNeeded()V
    .registers 3

    .line 72
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectCount:I

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->getConnectRetry()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_10

    .line 73
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->retryConnectLater()V

    goto :goto_14

    :cond_10
    const/4 v0, -0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onRequestCompleted(I)V

    :goto_14
    return-void
.end method

.method private retryConnectLater()V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "retry connect later"

    .line 116
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->log(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private retryDiscoverServiceIfNeeded()V
    .registers 3

    .line 80
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mServiceDiscoverCount:I

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;->getServiceDiscoverRetry()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_10

    .line 81
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->retryDiscoverServiceLater()V

    goto :goto_13

    .line 83
    :cond_10
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->closeGatt()V

    :goto_13
    return-void
.end method

.method private retryDiscoverServiceLater()V
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "retry discover service later"

    .line 122
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->log(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_25

    .line 151
    :cond_12
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->retryDiscoverServiceIfNeeded()V

    goto :goto_25

    .line 159
    :cond_16
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processDiscoverServiceTimeout()V

    goto :goto_25

    .line 155
    :cond_1a
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processConnectTimeout()V

    goto :goto_25

    .line 147
    :cond_1e
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processDiscoverService()V

    goto :goto_25

    .line 143
    :cond_22
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processConnect()V

    .line 162
    :goto_25
    invoke-super {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onConnectStatusChanged(Z)V
    .registers 5

    .line 174
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->checkRuntime()V

    .line 176
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_14

    .line 179
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d

    .line 181
    :cond_14
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->retryConnectIfNeeded()V

    :goto_1d
    return-void
.end method

.method public onServicesDiscovered(ILcom/inuker/bluetooth/library/model/BleGattProfile;)V
    .registers 4

    .line 188
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->checkRuntime()V

    .line 190
    iget-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_f

    .line 193
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onConnectSuccess()V

    goto :goto_12

    .line 195
    :cond_f
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->onServiceDiscoverFailed()V

    :goto_12
    return-void
.end method

.method public processRequest()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->processConnect()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleConnectRequest{options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleConnectRequest;->mConnectOptions:Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
