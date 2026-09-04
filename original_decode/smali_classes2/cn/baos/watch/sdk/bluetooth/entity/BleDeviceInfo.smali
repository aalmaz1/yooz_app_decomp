.class public Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;
.super Ljava/lang/Object;
.source "BleDeviceInfo.java"


# instance fields
.field private bondState:I

.field private deviceAddress:Ljava/lang/String;

.field private deviceAddressBt:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private is300Or200Other:I

.field private rssi:I

.field private timeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBondState()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->bondState:I

    return v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAddressBt()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceAddressBt:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIs300Or200Other()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->is300Or200Other:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 45
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->rssi:I

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->timeStamp:I

    return v0
.end method

.method public setBondState(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->bondState:I

    return-void
.end method

.method public setDeviceAddress(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setDeviceAddressBt(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceAddressBt:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setIs300Or200Other(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->is300Or200Other:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->rssi:I

    return-void
.end method

.method public setTimeStamp(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;->timeStamp:I

    return-void
.end method
