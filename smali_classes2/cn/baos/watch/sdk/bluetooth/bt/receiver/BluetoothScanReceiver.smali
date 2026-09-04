.class public Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScanReceiver.java"


# instance fields
.field private mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    .line 25
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 65
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onFindDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "\u84dd\u7259\u5f00\u59cb\u641c\u7d22"

    .line 50
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onScanStart()V

    goto :goto_1

    :pswitch_2
    const-string p1, "\u84dd\u7259\u626b\u63cf\u7ed3\u675f"

    .line 57
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onScanStop()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a269925 -> :sswitch_2
        0x6724d8 -> :sswitch_1
        0x459717c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
