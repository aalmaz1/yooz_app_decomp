.class public Lcn/baos/watch/sdk/bluetooth/BlueToothManager;
.super Ljava/lang/Object;
.source "BlueToothManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/bluetooth/BlueToothManager;


# instance fields
.field public mInitTask:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

.field public mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

.field public mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

.field public mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->startBleTask()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;
    .locals 2

    .line 20
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->instance:Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->instance:Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->instance:Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->instance:Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    return-object v0
.end method


# virtual methods
.method public cleanMessageQueue()V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mInitTask:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mInitTask:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    .line 96
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    .line 99
    :cond_2
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    if-nez v0, :cond_3

    .line 100
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    .line 102
    :cond_3
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->clearData()Z

    .line 103
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->clearData()Z

    .line 104
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;->clearData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public receiveData([B)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->receiveData([B)Z

    move-result p1

    return p1
.end method

.method public sendMessage(ILcn/baos/message/Serializable;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    if-eqz v0, :cond_0

    const-string v0, "BlueToothManager,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:mSendTask != null"

    .line 36
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-virtual {v0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->sendMessage(ILcn/baos/message/Serializable;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "BlueToothManager,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:mSendTask == null"

    .line 39
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    if-eqz v0, :cond_0

    const-string v0, "BlueToothManager,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:mSendTask != null"

    .line 46
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-virtual {v0, p1, p2, p3}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "BlueToothManager,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:mSendTask == null"

    .line 49
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public startBleTask()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mInitTask:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mInitTask:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    .line 65
    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->start()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mSendTask:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    .line 69
    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->start()V

    .line 71
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mReceiveTask:Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;

    .line 73
    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->start()V

    .line 75
    :cond_2
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    if-nez v0, :cond_3

    .line 76
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    .line 77
    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;->start()V

    :cond_3
    return-void
.end method

.method public writeData([B)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->mWriteBleTask:Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/task/WriteBleTask;->writeData([B)Z

    move-result p1

    return p1
.end method
