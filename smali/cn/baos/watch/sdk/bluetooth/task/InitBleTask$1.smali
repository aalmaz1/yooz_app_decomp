.class Lcn/baos/watch/sdk/bluetooth/task/InitBleTask$1;
.super Ljava/lang/Object;
.source "InitBleTask.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/jni/init/IDeviceStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask$1;->this$0:Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStatus(I)V
    .registers 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63a5\u6536\u5230\u7684status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2b

    .line 34
    sput p1, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->blueToothStatus:I

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u4f20\u8f93\u5f02\u5e38:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcn/baos/watch/sdk/bluetooth/task/InitBleTask;->blueToothStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method
