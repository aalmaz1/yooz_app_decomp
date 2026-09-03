.class public Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;
.super Ljava/lang/Thread;
.source "SendBleTask.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mFailTime:I

.field private mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

.field private mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mainHandler:Landroid/os/Handler;

.field private messageSendCallback:Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;

.field private timer:Ljava/util/Timer;

.field private waitConnect:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageSendCallback(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->messageSendCallback:Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "bluetooth send task"

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    .line 41
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->waitConnect:Z

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mainHandler:Landroid/os/Handler;

    .line 47
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public clearData()Z
    .locals 1

    const-string v0, "---->clearData"

    .line 314
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 316
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onWriteAckedAsyncCallback(IZ)V
    .locals 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8017\u65f6\u6d4b\u8bd5 write->finish:\u5bf9\u65b9\u786e\u8ba4\u6536\u5230\u8fd9\u6b21\u53d1\u9001:session_id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "success:%b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "\u53d1\u9001\u6210\u529f"

    .line 198
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 200
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->waitConnect:Z

    .line 201
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "\u53d1\u9001\u5931\u8d25\uff0c\u6d88\u606f\u91cd\u65b0\u53d1\u9001"

    .line 203
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u5931\u8d25\u91cd\u65b0\u53d1\u9001:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;-><init>(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    if-nez p2, :cond_1

    .line 225
    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    iput p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\u91cd\u53d1\u5931\u8d25\uff0c\u7d2f\u8ba1\u6b21\u6570:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    const/16 v2, 0xa

    if-lt p2, v2, :cond_2

    iget-boolean p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->waitConnect:Z

    if-nez p2, :cond_2

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "\u84dd\u7259\u91cd\u53d1\u5931\u8d25"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\u6b21\uff0c\u84dd\u7259\u81ea\u52a8\u65ad\u5f00\u91cd\u8fde"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 229
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    .line 230
    iput-boolean v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->waitConnect:Z

    .line 233
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$2;

    invoke-direct {p2, p0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$2;-><init>(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 245
    :cond_1
    iput v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    .line 246
    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iput-boolean v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->waitConnect:Z

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u84dd\u7259\u91cd\u53d1\u6210\u529f\uff0c\u5931\u8d25\u7d2f\u8ba1\u6b21\u6570\u91cd\u5236:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mFailTime:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 254
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 256
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 258
    :try_start_0
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    throw p1
.end method

.method public reSendMessage(IJLcn/baos/message/Serializable;)Z
    .locals 4

    const-string v0, "\u53d1\u9001\u961f\u5217\u52a0\u4e00,\u91cd\u65b0\u53d1\u9001\uff0c\u63d2\u5165\u961f\u5217\u5934\u4f4d\u7f6e\uff0c\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:"

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 106
    :try_start_0
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v3, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-direct {v3, p1, p2, p3, p4}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;-><init>(IJLcn/baos/message/Serializable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->putFirst(Ljava/lang/Object;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public run()V
    .locals 4

    const-string v0, "\u53d1\u9001\u7ebf\u7a0b\u542f\u52a8"

    .line 120
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 131
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 133
    :try_start_1
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->condition:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 135
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message\u53d1\u9001:mMessageAndTargetId=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    .line 141
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message\u53d1\u9001\u65e2\u5d29\u6e83:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    :goto_2
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u5f53\u524d\u84dd\u7259\u672a\u8fde\u63a5\uff0c\u7761\u7720\u4e94\u79d2\u540e\uff0c\u8f6e\u8be2\u7b49\u5f85\uff0c\u76f4\u63a5\u84dd\u7259\u72b6\u6001\u672a\u8fde\u63a5\u518d\u5b9e\u9645\u53d1\u9001"

    .line 145
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v0, 0x1388

    .line 147
    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 149
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 151
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message\u672a\u53d1\u9001\u91cd\u65b0\u653e\u5165\u961f\u5217:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 154
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 156
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v1, 0x190

    const-string v2, "\u8017\u65f6\u6d4b\u8bd5 \u53d1\u9001\u961f\u5217\u957f\u5ea6:"

    if-ge v0, v1, :cond_2

    .line 157
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message \u5185\u5bb9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 160
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message \u5185\u5bb9\u8fc7\u957f\u672c\u5730\u6253\u5370\u957f\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 163
    :goto_4
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    if-nez v0, :cond_3

    const-string v0, "bt client get send timeout--vmMessageAndTargetId==null"

    .line 164
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 189
    :goto_5
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 167
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getSerializable()Lcn/baos/message/Serializable;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9001\u5165jni\u4e4b\u524d\u7684\u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTargetId()I

    move-result v1

    array-length v2, v0

    invoke-virtual {p0, v1, v0, v2, p0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->writeBleData(I[BILcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7b49\u5f85\u53d1\u9001\u56de\u8c03\u7ed3\u679c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mSendCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v0, "\u84dd\u7259so\u5e93\u53cd\u9988session_id\u4e3a0\uff0cso\u5e93\u961f\u5217\u5df2\u6ee1.."

    .line 178
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 180
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->cleanMessageQueue()V

    goto :goto_5

    .line 183
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8be5\u6d88\u606f\u5df2\u8fc7\u671f,\u5f53\u524d\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6d88\u606f\u521b\u5efa\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8be5\u6d88\u606f\u5df2\u8fc7\u671f\uff0c\u76f4\u63a5\u4e22\u5f03:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageAndTargetId:Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 189
    :goto_6
    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 190
    throw v0
.end method

.method public sendMessage(ILcn/baos/message/Serializable;)Z
    .locals 6

    const-string v0, "\u53d1\u9001\u961f\u5217\u52a0\u4e00,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v3, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5, p2}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;-><init>(IJLcn/baos/message/Serializable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "SendBleTask,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:serializable =null"

    .line 68
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, "SendBleTask,:InterruptedException "

    .line 73
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v1
.end method

.method public sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z
    .locals 5

    const-string v0, "\u53d1\u9001\u961f\u5217\u52a0\u4e00,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:"

    const/4 v1, 0x0

    .line 86
    :try_start_0
    iput-object p3, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->messageSendCallback:Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;

    if-eqz p2, :cond_0

    .line 89
    iget-object p3, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v2, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4, p2}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;-><init>(IJLcn/baos/message/Serializable;)V

    invoke-virtual {p3, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->mMessageSenderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "SendBleTask,\u5f53\u524d\u53d1\u9001\u5bf9\u8c61\u961f\u5217\u957f\u5ea6:serializable =null"

    .line 92
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string p1, "SendBleTask,:InterruptedException "

    .line 97
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v1
.end method

.method public writeBleData(I[BILcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;)I
    .locals 3

    .line 274
    sget v0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->blueToothStatus:I

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u5305\u5199\u5165jni\u901a\u9053:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "____size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    new-instance v2, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;

    invoke-direct {v2, p0, p4, v0, v1}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;-><init>(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;J)V

    invoke-static {p1, p2, p3, v2}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWriteData(I[BILcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "\u84dd\u7259so\u5e93\u53cd\u9988\u5f02\u5e38\u6216\u672a\u521d\u59cb\u5316\u5b8c\u6210\uff0c\u4e0d\u53ef\u5199\u5165"

    .line 307
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
