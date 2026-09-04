.class public Lcn/baos/watch/sdk/manager/ota/OtaManager;
.super Ljava/lang/Object;
.source "OtaManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/ota/OtaManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMaxOtaTime:I

.field private mOtaVersion:Ljava/lang/String;

.field otaTimeOutStartRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcn/baos/watch/sdk/manager/ota/OtaManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b7740

    .line 20
    iput v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mMaxOtaTime:I

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcn/baos/watch/sdk/manager/ota/OtaManager$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/ota/OtaManager$1;-><init>(Lcn/baos/watch/sdk/manager/ota/OtaManager;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->otaTimeOutStartRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/ota/OtaManager;
    .locals 2

    .line 25
    sget-object v0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->instance:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcn/baos/watch/sdk/manager/ota/OtaManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/manager/ota/OtaManager;->instance:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcn/baos/watch/sdk/manager/ota/OtaManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/ota/OtaManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/ota/OtaManager;->instance:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->instance:Lcn/baos/watch/sdk/manager/ota/OtaManager;

    return-object v0
.end method


# virtual methods
.method public endWaitOtaResult()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->updateOtaState(I)V

    return-void
.end method

.method public handleWatchVersion(Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;)V
    .locals 2

    .line 56
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->catagory:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->otaTimeOutStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "ota\u72b6\u6001:\u7ed3\u679c\u53cd\u9988"

    .line 66
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5347\u7ea7\u524d\u7248\u672c:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mOtaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5347\u7ea7\u540e\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 69
    iget-object p1, p1, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mOtaVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u5347\u7ea7\u5931\u8d25"

    .line 70
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string p1, "\u5347\u7ea7\u6210\u529f"

    .line 73
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->endWaitOtaResult()V

    goto :goto_1

    :cond_2
    const-string v0, "ota\u72b6\u6001:\u5f00\u59cb\uff0c\u5f00\u59cb\u83b7\u53d6\u670d\u52a1\u5668\u5217\u8868"

    .line 58
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->updateOtaState(I)V

    .line 62
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    const-string p1, "ota\u72b6\u6001:\u521d\u59cb\u9ed8\u8ba4\u72b6\u6001"

    .line 80
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 37
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mOtaVersion:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->updateOtaState(I)V

    return-void
.end method

.method public startOta()V
    .locals 4

    const-string v0, "ota\u72b6\u6001\u8fdb\u5165\u5f00\u59cb\u72b6\u6001"

    .line 45
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->updateOtaState(I)V

    .line 48
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestWatchVersion()V

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->otaTimeOutStartRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcn/baos/watch/sdk/manager/ota/OtaManager;->mMaxOtaTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWaitOtaResult()V
    .locals 1

    const-string v0, "ota\u72b6\u6001:\u8fdb\u5165\u7b49\u5f85\u7ed3\u679c"

    .line 92
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 93
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->updateOtaState(I)V

    return-void
.end method

.method public updateOtaState(I)V
    .locals 0

    return-void
.end method
