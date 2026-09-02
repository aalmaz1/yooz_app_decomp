.class Lcn/baos/watch/sdk/BasSdk$1;
.super Ljava/lang/Object;
.source "BasSdk.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/BasSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBLEConnectFail()V
    .registers 3

    .line 191
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 192
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ConnectListener;

    .line 193
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ConnectListener;->onBLEConnectFail()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onBLEConnectTimeOut()V
    .registers 3

    .line 209
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 210
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ConnectListener;

    .line 211
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ConnectListener;->onBLEConnectFail()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onBLEConnected()V
    .registers 3

    .line 177
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 178
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ConnectListener;

    .line 179
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ConnectListener;->onBLEConnected()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onBLEConnecting(Ljava/lang/String;)V
    .registers 3

    .line 168
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 169
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/manager/api/ConnectListener;

    .line 170
    invoke-interface {v0}, Lcn/baos/watch/sdk/manager/api/ConnectListener;->onBLEConnecting()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onBLEDisConnected()V
    .registers 3

    .line 200
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 201
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmConnectListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ConnectListener;

    .line 202
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ConnectListener;->onBLEDisConnected()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onBLEManualDisConnected()V
    .registers 1

    return-void
.end method

.method public onBLEScanning(Landroid/bluetooth/le/ScanResult;)V
    .registers 4

    .line 154
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmScannerListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ScannerListener;

    if-eqz v1, :cond_8

    .line 156
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/ScannerListener;->onScanning(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public onBLEStartConnect(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onBLEStartScan()V
    .registers 3

    .line 145
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmScannerListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ScannerListener;

    if-eqz v1, :cond_8

    .line 147
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ScannerListener;->onBLEStartScan()V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public onBleDeviceStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onBtNoDelDialog()V
    .registers 1

    return-void
.end method

.method public onGpsNotOpen()V
    .registers 3

    .line 136
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmScannerListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/ScannerListener;

    if-eqz v1, :cond_8

    .line 138
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/ScannerListener;->onGpsNotOpen()V

    goto :goto_8

    :cond_1a
    return-void
.end method
