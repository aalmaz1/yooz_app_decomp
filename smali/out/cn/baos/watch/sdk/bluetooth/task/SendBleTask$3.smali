.class Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;
.super Ljava/lang/Object;
.source "SendBleTask.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->writeBleData(I[BILcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

.field final synthetic val$iWriteAckedAsyncCallback:Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;

.field final synthetic val$sendStart:J


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->val$iWriteAckedAsyncCallback:Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;

    iput-wide p3, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->val$sendStart:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWriteAckedAsyncCallback$0(Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;IZ)V
    .registers 3

    .line 291
    invoke-interface {p0, p1, p2}, Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;->onWriteAckedAsyncCallback(IZ)V

    return-void
.end method


# virtual methods
.method public onWriteAckedAsyncCallback(IZ)V
    .registers 7

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u5305\u5199\u5165jni\u901a\u9053:session_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->val$iWriteAckedAsyncCallback:Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;

    new-instance v2, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/manager/jni/write/IWriteAckedAsyncCallback;IZ)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 295
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmessageSendCallback(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 296
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmessageSendCallback(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;->IMessageSendStatus(IZ)V

    .line 298
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    iget-wide v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$3;->val$sendStart:J

    sub-long/2addr v0, v2

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u8017\u65f6\u6d4b\u8bd5 write->finish:\u8017\u65f6:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_64

    .line 302
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/baos/watch/sdk/bluetooth/utils/TimeManager;->initManager(J)V

    :cond_64
    return-void
.end method
