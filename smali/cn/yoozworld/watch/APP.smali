.class public final Lcn/yoozworld/watch/APP;
.super Lio/flutter/app/FlutterApplication;
.source "APP.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0008\u0010)\u001a\u0004\u0018\u00010\u0004J\u0008\u0010*\u001a\u0004\u0018\u00010\u0000J\u0008\u0010+\u001a\u00020&H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006,"
    }
    d2 = {
        "Lcn/yoozworld/watch/APP;",
        "Lio/flutter/app/FlutterApplication;",
        "()V",
        "appLifecycleTracker",
        "Lcn/yoozworld/watch/ui/AppLifecycle;",
        "getAppLifecycleTracker",
        "()Lcn/yoozworld/watch/ui/AppLifecycle;",
        "setAppLifecycleTracker",
        "(Lcn/yoozworld/watch/ui/AppLifecycle;)V",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "getBuilder",
        "()Landroidx/core/app/NotificationCompat$Builder;",
        "setBuilder",
        "(Landroidx/core/app/NotificationCompat$Builder;)V",
        "isAppSysTimeBle",
        "",
        "()Z",
        "setAppSysTimeBle",
        "(Z)V",
        "mApp",
        "getMApp",
        "()Lcn/yoozworld/watch/APP;",
        "setMApp",
        "(Lcn/yoozworld/watch/APP;)V",
        "mNowTrackId",
        "",
        "getMNowTrackId",
        "()J",
        "setMNowTrackId",
        "(J)V",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "getNotificationManager",
        "()Landroid/app/NotificationManager;",
        "setNotificationManager",
        "(Landroid/app/NotificationManager;)V",
        "attachBaseContext",
        "",
        "base",
        "Landroid/content/Context;",
        "getAppLifecycleTrack",
        "getInstance",
        "onCreate",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private isAppSysTimeBle:Z

.field private mApp:Lcn/yoozworld/watch/APP;

.field private mNowTrackId:J

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public static synthetic $r8$lambda$lHLjYqcLvGrMUM2Tp7xzO55ChxA()V
    .registers 0

    invoke-static {}, Lcn/yoozworld/watch/APP;->onCreate$lambda$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Lio/flutter/app/FlutterApplication;-><init>()V

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcn/yoozworld/watch/APP;->mNowTrackId:J

    return-void
.end method

.method private static final onCreate$lambda$0()V
    .registers 1

    .line 50
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startReConnect()Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lio/flutter/app/FlutterApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 33
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public final getAppLifecycleTrack()Lcn/yoozworld/watch/ui/AppLifecycle;
    .registers 2

    .line 59
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

    return-object v0
.end method

.method public final getAppLifecycleTracker()Lcn/yoozworld/watch/ui/AppLifecycle;
    .registers 2

    .line 19
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

    return-object v0
.end method

.method public final getBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .registers 2

    .line 28
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->builder:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public final getInstance()Lcn/yoozworld/watch/APP;
    .registers 2

    .line 25
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->mApp:Lcn/yoozworld/watch/APP;

    return-object v0
.end method

.method public final getMApp()Lcn/yoozworld/watch/APP;
    .registers 2

    .line 18
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->mApp:Lcn/yoozworld/watch/APP;

    return-object v0
.end method

.method public final getMNowTrackId()J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcn/yoozworld/watch/APP;->mNowTrackId:J

    return-wide v0
.end method

.method public final getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    .line 29
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public final isAppSysTimeBle()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcn/yoozworld/watch/APP;->isAppSysTimeBle:Z

    return v0
.end method

.method public onCreate()V
    .registers 6

    .line 38
    invoke-super {p0}, Lio/flutter/app/FlutterApplication;->onCreate()V

    const-string v0, "AppApplication \u4e3b\u7a0b\u5e8f onCreate start"

    .line 39
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 40
    iput-object p0, p0, Lcn/yoozworld/watch/APP;->mApp:Lcn/yoozworld/watch/APP;

    .line 41
    new-instance v0, Lcn/yoozworld/watch/ui/AppLifecycle;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/AppLifecycle;-><init>()V

    iput-object v0, p0, Lcn/yoozworld/watch/APP;->appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcn/yoozworld/watch/ui/AppLifecycle;->AppLifecycles(Lcn/yoozworld/watch/APP;)V

    .line 44
    iget-object v0, p0, Lcn/yoozworld/watch/APP;->appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/APP;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 45
    new-instance v0, Lcn/baos/watch/sdk/util/AppUtils;

    invoke-direct {v0}, Lcn/baos/watch/sdk/util/AppUtils;-><init>()V

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/baos/watch/sdk/util/AppUtils;->registerKeepLive(ZLandroid/content/Context;)V

    .line 46
    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/yoozworld/watch/APP;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---AppApplication--onCreate--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "----"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->getAppProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/yoozworld/watch/APP;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 48
    invoke-static {}, Lcn/yoozworld/watch/ui/SsManager;->getInstance()Lcn/yoozworld/watch/ui/SsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/ui/SsManager;->initBleServiceManager(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/APP$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/APP$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_72
    new-instance v0, Lcn/baos/watch/sdk/code/CrashHandler;

    invoke-direct {v0}, Lcn/baos/watch/sdk/code/CrashHandler;-><init>()V

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "AppApplication \u4e3b\u7a0b\u5e8f onCreate finish"

    .line 55
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppLifecycleTracker(Lcn/yoozworld/watch/ui/AppLifecycle;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/yoozworld/watch/APP;->appLifecycleTracker:Lcn/yoozworld/watch/ui/AppLifecycle;

    return-void
.end method

.method public final setAppSysTimeBle(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcn/yoozworld/watch/APP;->isAppSysTimeBle:Z

    return-void
.end method

.method public final setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcn/yoozworld/watch/APP;->builder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public final setMApp(Lcn/yoozworld/watch/APP;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/yoozworld/watch/APP;->mApp:Lcn/yoozworld/watch/APP;

    return-void
.end method

.method public final setMNowTrackId(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcn/yoozworld/watch/APP;->mNowTrackId:J

    return-void
.end method

.method public final setNotificationManager(Landroid/app/NotificationManager;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcn/yoozworld/watch/APP;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method
