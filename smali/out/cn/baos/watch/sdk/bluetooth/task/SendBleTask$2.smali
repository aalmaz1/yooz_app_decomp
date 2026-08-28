.class Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$2;
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
    .registers 2

    .line 234
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/task/SendBleTask$2;->this$0:Lcn/baos/watch/sdk/bluetooth/task/SendBleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 238
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    const-string v0, "200ms\u540e\u81ea\u52a8\u65ad\u5f00\u84dd\u7259"

    .line 240
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
