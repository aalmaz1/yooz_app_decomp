.class public Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBondReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;
    }
.end annotation


# instance fields
.field private mBletoothBondResultCallback:Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver;->mBletoothBondResultCallback:Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u8bbe\u5907\u7684\u72b6\u6001"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver;->mBletoothBondResultCallback:Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/broadcastreceiver/BluetoothBondReceiver$BletoothBondResultCallback;->bleBondResult(I)V

    return-void
.end method
