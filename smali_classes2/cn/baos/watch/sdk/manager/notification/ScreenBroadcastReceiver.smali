.class public Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenBroadcastReceiver.java"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "SUO_PING"

    if-eqz p1, :cond_0

    const-string p1, "ScreenBroadcastReceiver\u5f00\u5c4f"

    .line 19
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 21
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    const-string p1, "ScreenBroadcastReceiver\u9501\u5c4f"

    .line 24
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 25
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    const-string p1, "ScreenBroadcastReceiver\u89e3\u9501"

    .line 28
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
