.class Lcn/yoozworld/watch/ui/SsManager$1;
.super Ljava/lang/Object;
.source "SsManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/SsManager;->initBleServiceManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/SsManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/SsManager;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$1;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    iput-object p2, p0, Lcn/yoozworld/watch/ui/SsManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBindFail$2()V
    .registers 3

    .line 291
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBindStart$0(I)V
    .registers 3

    .line 270
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleBindCode"

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$onBindSuccess$1()V
    .registers 3

    .line 278
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "bleStatus"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSON(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBindFail()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$1;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindStart(I)V
    .registers 4

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindSuccess()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$1;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V

    const-string v0, "-onBindSuccess-"

    .line 276
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 277
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->requestRebindNotificationService(Landroid/content/Context;)Z

    return-void
.end method
