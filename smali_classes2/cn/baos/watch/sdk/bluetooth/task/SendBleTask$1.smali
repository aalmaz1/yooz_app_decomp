.class Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;
.super Ljava/lang/Object;
.source "SendBleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->onWriteAckedAsyncCallback(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 209
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getSerializable()Lcn/baos/message/Serializable;

    move-result-object v0

    .line 210
    instance-of v1, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;

    .line 212
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v1

    iget v0, v0, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->index:I

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isReceiveIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTargetId()I

    move-result v1

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTimeStamp()J

    move-result-wide v2

    iget-object v4, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v4}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getSerializable()Lcn/baos/message/Serializable;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->reSendMessage(IJLcn/baos/message/Serializable;)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTargetId()I

    move-result v1

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getTimeStamp()J

    move-result-wide v2

    iget-object v4, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-static {v4}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->-$$Nest$fgetmMessageAndTargetId(Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;)Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;

    move-result-object v4

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/MessageAndTargetId;->getSerializable()Lcn/baos/message/Serializable;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;->reSendMessage(IJLcn/baos/message/Serializable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
