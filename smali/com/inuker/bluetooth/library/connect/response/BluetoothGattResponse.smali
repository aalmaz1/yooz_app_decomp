.class public Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothGattResponse.java"


# instance fields
.field private response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 43
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 33
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 38
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGattCharacteristic;I[B)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 23
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-interface {p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onConnectionStateChange(II)V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 5

    .line 53
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onDescriptorRead(Landroid/bluetooth/BluetoothGattDescriptor;I[B)V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 48
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-interface {p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 63
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-interface {p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onMtuChanged(II)V

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 58
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-interface {p1, p2, p3}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onReadRemoteRssi(II)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    .line 28
    iget-object p1, p0, Lcom/inuker/bluetooth/library/connect/response/BluetoothGattResponse;->response:Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;

    invoke-interface {p1, p2}, Lcom/inuker/bluetooth/library/connect/listener/IBluetoothGattResponse;->onServicesDiscovered(I)V

    return-void
.end method
