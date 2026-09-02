.class public Lcn/baos/watch/sdk/code/time/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, "\u65f6\u533a\u53d8\u5316"

    .line 17
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 20
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->responseTimeZoneModify()V

    goto :goto_3d

    .line 21
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    const-string p2, "\u65f6\u95f4\u5236\u53d8\u5316"

    .line 22
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 25
    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->setTimeFormat(Landroid/content/Context;)V

    :cond_3d
    :goto_3d
    return-void
.end method
