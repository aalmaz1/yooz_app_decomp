.class public Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
.super Ljava/lang/Object;
.source "CbtManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/bluetooth/bt/CbtManager$CbtManagerHolder;
    }
.end annotation


# instance fields
.field private mBluetoothReceiver:Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;

.field private mBondCallBack:Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
    .locals 1

    .line 39
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager$CbtManagerHolder;->-$$Nest$sfgetCBT_MANAGER()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bondCallBack(Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mBondCallBack:Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;

    return-object p0
.end method

.method public enableLog(Z)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
    .locals 1

    .line 100
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->getConfig()Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->setLogSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;->setConsoleSwitch(Z)Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$Config;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mContext:Landroid/content/Context;

    .line 82
    new-instance p1, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;-><init>(Landroid/content/Context;Lcn/baos/watch/sdk/bluetooth/bt/callback/BaseConfigCallback;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mBluetoothReceiver:Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;

    :cond_0
    return-object p0
.end method

.method public onBondStatus(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mBondCallBack:Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;->bondStatus(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mBondCallBack:Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/bluetooth/bt/callback/BondDeviceCallback;->connectStatus(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;->mBluetoothReceiver:Lcn/baos/watch/sdk/bluetooth/bt/receiver/BluetoothReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFindDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onScanStop()V
    .locals 0

    return-void
.end method

.method public onStateSwitch(I)V
    .locals 0

    return-void
.end method
