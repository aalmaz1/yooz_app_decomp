.class public Lcom/inuker/bluetooth/library/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# static fields
.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMainThread()Z
    .registers 2

    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static closeBluetooth()Z
    .registers 1

    .line 109
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 111
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .registers 1

    .line 128
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    .line 129
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 131
    :cond_a
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .registers 2

    .line 117
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 118
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_18

    .line 119
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 122
    :cond_18
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBluetoothState()I
    .registers 1

    .line 96
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 97
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static getBondState(Ljava/lang/String;)I
    .registers 2

    .line 172
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 175
    :try_start_6
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    return p0

    :catchall_f
    move-exception p0

    .line 178
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_13
    const/16 p0, 0xa

    return p0
.end method

.method public static getBondedBluetoothClassicDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_14

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    return-object v1
.end method

.method public static getConnectStatus(Ljava/lang/String;)I
    .registers 3

    .line 159
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 162
    :try_start_6
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/4 v1, 0x7

    .line 163
    invoke-virtual {v0, p0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    return p0

    :catchall_10
    move-exception p0

    .line 165
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public static getConnectedBluetoothLeDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v2, 0x7

    .line 151
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_13
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 37
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothContext;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 2

    .line 41
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    .line 44
    :cond_f
    sget-object v0, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 136
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 138
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBleSupported()Z
    .registers 2

    .line 86
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 87
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static isBluetoothEnabled()Z
    .registers 2

    .line 92
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isDeviceConnected(Ljava/lang/String;)Z
    .registers 4

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->isBleSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 199
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 200
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public static openBluetooth()Z
    .registers 1

    .line 101
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2

    .line 48
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static refreshGattCache(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    .line 213
    :try_start_4
    const-class v2, Landroid/bluetooth/BluetoothGatt;

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    move-exception p0

    .line 220
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_24
    move p0, v1

    :goto_25
    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "refreshDeviceCache return %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return p0
.end method

.method private static registerGlobalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    .line 57
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 2

    .line 52
    invoke-static {p0, p1}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->registerGlobalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;)V
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendGlobalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcast(Ljava/lang/String;)V
    .registers 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->sendGlobalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendGlobalBroadcast(Landroid/content/Intent;)V
    .registers 2

    .line 81
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static unregisterGlobalReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 69
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 1

    .line 65
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/BluetoothUtils;->unregisterGlobalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
