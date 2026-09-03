.class public Lcn/yoozworld/watch/utils/UserDataUtils;
.super Ljava/lang/Object;
.source "UserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcn/yoozworld/watch/APP;

    .line 29
    invoke-virtual {p0}, Lcn/yoozworld/watch/APP;->getInstance()Lcn/yoozworld/watch/APP;

    move-result-object p0

    invoke-virtual {p0}, Lcn/yoozworld/watch/APP;->getAppLifecycleTrack()Lcn/yoozworld/watch/ui/AppLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/AppLifecycle;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static writeFlutterCrashToLocal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/yoozworld/watch/utils/UserDataUtils$1;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/utils/UserDataUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
