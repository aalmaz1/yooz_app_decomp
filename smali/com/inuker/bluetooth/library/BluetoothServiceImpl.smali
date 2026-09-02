.class public Lcom/inuker/bluetooth/library/BluetoothServiceImpl;
.super Lcom/inuker/bluetooth/library/IBluetoothService$Stub;
.source "BluetoothServiceImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/IBluetoothService$Stub;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/inuker/bluetooth/library/BluetoothServiceImpl;
    .registers 2

    .line 58
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    if-nez v0, :cond_17

    .line 59
    const-class v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    monitor-enter v0

    .line 60
    :try_start_7
    sget-object v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    if-nez v1, :cond_12

    .line 61
    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    invoke-direct {v1}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;-><init>()V

    sput-object v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    .line 63
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 65
    :cond_17
    :goto_17
    sget-object v0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->sInstance:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    return-object v0
.end method


# virtual methods
.method public callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;-><init>(Lcom/inuker/bluetooth/library/BluetoothServiceImpl;Lcom/inuker/bluetooth/library/IResponse;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra.mac"

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "extra.service.uuid"

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/UUID;

    const-string v1, "extra.character.uuid"

    .line 97
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/UUID;

    const-string v1, "extra.descriptor.uuid"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/UUID;

    const-string v1, "extra.byte.value"

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 100
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_94

    :pswitch_35
    goto :goto_92

    :pswitch_36
    const-string p1, "extra.mtu"

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 159
    invoke-static {v2, p1, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->requestMtu(Ljava/lang/String;ILcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 168
    :pswitch_40
    invoke-static {v2}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->refreshCache(Ljava/lang/String;)V

    goto :goto_92

    :pswitch_44
    const-string p1, "extra.type"

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 164
    invoke-static {v2, p1}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->clearRequest(Ljava/lang/String;I)V

    goto :goto_92

    .line 129
    :pswitch_4f
    invoke-static/range {v2 .. v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->writeDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 125
    :pswitch_53
    invoke-static {v2, v3, v4, v5, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->readDescriptor(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 150
    :pswitch_57
    invoke-static {}, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;->stopSearch()V

    goto :goto_92

    :pswitch_5b
    const-string p1, "extra.request"

    .line 145
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/search/SearchRequest;

    .line 146
    invoke-static {p1, v7}, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 154
    :pswitch_67
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->indicate(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 141
    :pswitch_6b
    invoke-static {v2, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 137
    :pswitch_6f
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->unnotify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 133
    :pswitch_73
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->notify(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 121
    :pswitch_77
    invoke-static {v2, v3, v4, v6, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->writeNoRsp(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 117
    :pswitch_7b
    invoke-static {v2, v3, v4, v6, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->write(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[BLcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 113
    :pswitch_7f
    invoke-static {v2, v3, v4, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->read(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    goto :goto_92

    .line 109
    :pswitch_83
    invoke-static {v2}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->disconnect(Ljava/lang/String;)V

    goto :goto_92

    :pswitch_87
    const-string p1, "extra.options"

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;

    .line 105
    invoke-static {v2, p1, v7}, Lcom/inuker/bluetooth/library/connect/BleConnectManager;->connect(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/options/BleConnectOptions;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    :goto_92
    const/4 p1, 0x1

    return p1

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_35
        :pswitch_67
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_44
        :pswitch_40
        :pswitch_36
    .end packed-switch
.end method
