.class public Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;
.super Ljava/lang/Thread;
.source "ReceiveBleTask.java"

# interfaces
.implements Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleDataReceiver;


# static fields
.field public static mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "bluetooth receive task"

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-string v0, "\u539f\u59cb\u6570\u636e\u6ce8\u5165so\u5e93\u7ebf\u7a0b\u542f\u52a8"

    .line 20
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearData()Z
    .registers 2

    .line 36
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public receiveData([B)Z
    .registers 4

    const-string v0, "\u63a5\u6536\u5230\u624b\u8868\u4f20\u6765\u7684byte\u6570\u7ec4,\u5b58\u5165\u961f\u5217,\u5f53\u524d\u63a5\u6536\u6d88\u606f\u961f\u5217\u957f\u5ea6:"

    .line 26
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6570\u636e\u957f\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_28} :catch_2a

    const/4 p1, 0x1

    return p1

    :catch_2a
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .registers 5

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 46
    :try_start_3
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/task/ReceiveBleTask;->mReceiveDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_27

    :catch_d
    move-exception v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u63a5\u6536\u6570\u636e\u7ebf\u7a0bInterruptedException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 51
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u539f\u59cb\u6570\u636e\u6ce8\u5165so\u5e93\u6570\u636e\u957f\u5ea6:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u539f\u59cb\u6570\u636e\u6ce8\u5165so\u5e93\u6570\u636e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    array-length v1, v0

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleFrameArrived([BI)Z

    const-wide/16 v0, 0xa

    .line 56
    :try_start_56
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5e
    const-string v0, "\u539f\u59cb\u6570\u636e\u6ce8\u5165\u5b8c\u6210"

    .line 60
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
