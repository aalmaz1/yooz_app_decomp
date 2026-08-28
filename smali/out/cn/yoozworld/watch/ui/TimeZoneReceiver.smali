.class public Lcn/yoozworld/watch/ui/TimeZoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeZoneReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0()V
    .registers 3

    .line 24
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "getWeather"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "\u65f6\u533a/\u65f6\u95f4/\u65e5\u671f\u53d1\u751f\u53d8\u5316"

    .line 22
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    new-instance v1, Lcn/yoozworld/watch/ui/TimeZoneReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/TimeZoneReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string p1, "\u65f6\u533a\u53d8\u5316"

    .line 27
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p1

    if-eqz p1, :cond_78

    .line 30
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->responseTimeZoneModify()V

    goto :goto_78

    .line 31
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_4d
    const-string v0, "\u65f6\u95f4\u5236\u53d8\u5316"

    .line 33
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 37
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->responseTimeModify()V

    .line 38
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->setTimeFormat(Landroid/content/Context;)V

    :cond_78
    :goto_78
    return-void
.end method
