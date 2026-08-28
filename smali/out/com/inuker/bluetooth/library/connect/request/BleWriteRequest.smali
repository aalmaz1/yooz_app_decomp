.class public Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleWriteRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/WriteCharacterListener;


# instance fields
.field private mBytes:[B

.field private mCharacterUUID:Ljava/util/UUID;

.field private mServiceUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .registers 5

    .line 20
    invoke-direct {p0, p4}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 21
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mServiceUUID:Ljava/util/UUID;

    .line 22
    iput-object p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mCharacterUUID:Ljava/util/UUID;

    .line 23
    iput-object p3, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mBytes:[B

    return-void
.end method

.method private startWrite()V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mServiceUUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mCharacterUUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->mBytes:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->writeCharacteristic(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, -0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->onRequestCompleted(I)V

    goto :goto_14

    .line 51
    :cond_11
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->startRequestTiming()V

    :goto_14
    return-void
.end method


# virtual methods
.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->stopRequestTiming()V

    if-nez p2, :cond_a

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->onRequestCompleted(I)V

    goto :goto_e

    :cond_a
    const/4 p1, -0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->onRequestCompleted(I)V

    :goto_e
    return-void
.end method

.method public processRequest()V
    .registers 4

    .line 28
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/16 v2, 0x13

    if-eq v0, v2, :cond_12

    .line 42
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->onRequestCompleted(I)V

    goto :goto_1d

    .line 38
    :cond_12
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->startWrite()V

    goto :goto_1d

    .line 34
    :cond_16
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->startWrite()V

    goto :goto_1d

    .line 30
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleWriteRequest;->onRequestCompleted(I)V

    :goto_1d
    return-void
.end method
