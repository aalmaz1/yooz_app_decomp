.class public Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.java"


# instance fields
.field private mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    .line 28
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 46
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 48
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 50
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string v0, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bt_pairing_done

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_bt_pairing_done

    :try_start_pairing
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "setPairingConfirmation"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Auto-confirmed pairing request"

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_pairing
    .catch Ljava/lang/Exception; {:try_start_pairing .. :try_end_pairing} :catch_pairing
    :goto_pairing_done
    nop

    :catch_pairing
    :cond_bt_pairing_done

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_1be

    goto/16 :goto_89

    :sswitch_16
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_89

    :cond_20
    const/16 v3, 0x9

    goto/16 :goto_89

    :sswitch_24
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_89

    :cond_2e
    const/16 v3, 0x8

    goto/16 :goto_89

    :sswitch_32
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_89

    :cond_3b
    const/4 v3, 0x7

    goto :goto_89

    :sswitch_3d
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_89

    :cond_46
    const/4 v3, 0x6

    goto :goto_89

    :sswitch_48
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_89

    :cond_51
    const/4 v3, 0x5

    goto :goto_89

    :sswitch_53
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_89

    :cond_5c
    const/4 v3, 0x4

    goto :goto_89

    :sswitch_5e
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_89

    :cond_67
    const/4 v3, 0x3

    goto :goto_89

    :sswitch_69
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_89

    :cond_72
    const/4 v3, 0x2

    goto :goto_89

    :sswitch_74
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_89

    :cond_7d
    move v3, v1

    goto :goto_89

    :sswitch_7f
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto :goto_89

    :cond_88
    move v3, v2

    :goto_89
    const-string p1, "android.bluetooth.profile.extra.STATE"

    const-string v0, ", "

    const-string v4, "BluetoothDevice: "

    const-string v5, "STATE: "

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    packed-switch v3, :pswitch_data_1e8

    goto/16 :goto_1bd

    .line 102
    :pswitch_98
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 104
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;->onBondStatus(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1bd

    .line 121
    :pswitch_a5
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_1bd

    .line 147
    :pswitch_ad
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    new-array v6, v1, [Ljava/lang/Object;

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v6}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->i([Ljava/lang/Object;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->i([Ljava/lang/Object;)V

    goto/16 :goto_1bd

    .line 92
    :pswitch_f1
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 93
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;->onFindDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1bd

    .line 129
    :pswitch_fe
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_1bd

    .line 138
    :pswitch_13c
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1bd

    :pswitch_177
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "\u84dd\u7259\u5f00\u59cb\u641c\u7d22"

    aput-object p2, p1, v2

    .line 79
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->i([Ljava/lang/Object;)V

    goto :goto_1bd

    .line 113
    :pswitch_181
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u5907\u5efa\u7acb\u8fde\u63a5\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;->onConnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1bd

    :pswitch_1a3
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 72
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 73
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;->onStateSwitch(I)V

    goto :goto_1bd

    :pswitch_1af
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "\u84dd\u7259\u626b\u63cf\u7ed3\u675f"

    aput-object p2, p1, v2

    .line 85
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->i([Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;->mCallback:Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;->onScanStop()V

    :goto_1bd
    return-void

    :sswitch_data_1be
    .sparse-switch
        -0x6a269925 -> :sswitch_7f
        -0x5b36f014 -> :sswitch_74
        -0x11f77b4b -> :sswitch_69
        0x6724d8 -> :sswitch_5e
        0x2083ec2d -> :sswitch_53
        0x42f3be3f -> :sswitch_48
        0x459717c3 -> :sswitch_3d
        0x4a286686 -> :sswitch_32
        0x6c9330ef -> :sswitch_24
        0x7e2cc189 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_1af
        :pswitch_1a3
        :pswitch_181
        :pswitch_177
        :pswitch_13c
        :pswitch_fe
        :pswitch_f1
        :pswitch_ad
        :pswitch_a5
        :pswitch_98
    .end packed-switch
.end method
