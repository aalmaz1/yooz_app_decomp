.class public Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScanReceiver.java"


# instance fields
.field private mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;)V
    .registers 4

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
    .registers 5

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 45
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_5c

    goto :goto_33

    :sswitch_13
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_33

    :cond_1c
    const/4 v1, 0x2

    goto :goto_33

    :sswitch_1e
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_33

    :cond_27
    const/4 v1, 0x1

    goto :goto_33

    :sswitch_29
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    packed-switch v1, :pswitch_data_6a

    goto :goto_5a

    :pswitch_37
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 65
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onFindDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_5a

    :pswitch_45
    const-string p1, "\u84dd\u7259\u5f00\u59cb\u641c\u7d22"

    .line 50
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onScanStart()V

    goto :goto_5a

    :pswitch_50
    const-string p1, "\u84dd\u7259\u626b\u63cf\u7ed3\u675f"

    .line 57
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothScanReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/ScanDeviceCallback;->onScanStop()V

    :goto_5a
    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x6a269925 -> :sswitch_29
        0x6724d8 -> :sswitch_1e
        0x459717c3 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_50
        :pswitch_45
        :pswitch_37
    .end packed-switch
.end method
