.class Lcn/baos/watch/sdk/manager/ota/OtaManager$1$1;
.super Ljava/lang/Object;
.source "OtaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/manager/ota/OtaManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/manager/ota/OtaManager$1;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/ota/OtaManager$1;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/ota/OtaManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "\u5347\u7ea7\u5931\u8d25\u8d85\u65f6"

    .line 118
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/ota/OtaManager$1;

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1;->this$0:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->endWaitOtaResult()V

    .line 120
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1$1;->this$1:Lcn/baos/watch/sdk/manager/ota/OtaManager$1;

    iget-object v0, v0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1;->this$0:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->-$$Nest$fgethandler(Lcn/baos/watch/sdk/manager/ota/OtaManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
