.class public Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;
.super Ljava/lang/Object;
.source "NotificationHuabaoManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/notification/INotificationManager;


# static fields
.field private static final TIME_DURATION:J = 0xea60L

.field private static mNotificationHuabaoManager:Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCollectorRunning(Landroid/content/Context;)V
    .registers 10

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notification service \u542f\u52a8\u6d88\u606f\u901a\u77e5\u76d1\u542c\u7c7bensureCollectorRunning collectorComponent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "activity"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_30

    const-string p1, "notification service ensureCollectorRunning() runningServices is NULL"

    .line 49
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 53
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notification service \u7cfb\u7edf\u6d88\u606f\u901a\u77e5\u76d1\u542c\u670d\u52a1ensureCollectorRunning service - pid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentPID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientLabel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 56
    iget v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v5, :cond_89

    const-string v5, "0"

    goto :goto_a8

    :cond_89
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    iget v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_35

    const/4 v2, 0x1

    goto/16 :goto_35

    :cond_be
    if-eqz v2, :cond_c6

    const-string p1, "notification service ensureCollectorRunning: collector is running"

    .line 63
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_c6
    const-string v0, "notification service ensureCollectorRunning: collector not running, reviving..."

    .line 66
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->toggleNotificationListenerService(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;
    .registers 2

    .line 28
    sget-object v0, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->mNotificationHuabaoManager:Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    if-nez v0, :cond_17

    .line 29
    const-class v0, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    monitor-enter v0

    .line 30
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->mNotificationHuabaoManager:Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    if-nez v1, :cond_12

    .line 31
    new-instance v1, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->mNotificationHuabaoManager:Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    .line 33
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 35
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->mNotificationHuabaoManager:Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    return-object v0
.end method

.method private toggleNotificationListenerService(Landroid/content/Context;)V
    .registers 5

    const-string v0, "notification service \u6d88\u606f\u901a\u77e5toggleNotificationListenerService() called"

    .line 71
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 75
    invoke-virtual {p1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public cancelNotification(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 140
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/service/notification/NotificationListenerService;->cancelNotification(Ljava/lang/String;)V

    return-void
.end method

.method public isNotificationListenerEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 128
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "\u6d88\u606f\u901a\u77e5\u76d1\u542c\u670d\u52a1\u5df2\u6253\u5f00"

    .line 130
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_15
    const-string p1, "\u6d88\u606f\u901a\u77e5\u76d1\u542c\u670d\u52a1\u672a\u6253\u5f00"

    .line 133
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public openNotificationListenSettings(Landroid/content/Context;)V
    .registers 4

    const-string v0, "\u6253\u5f00\u6d88\u606f\u76d1\u542c\u901a\u77e5\u7684\u7533\u8bf7"

    .line 110
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->isNotificationListenerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 115
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public requestRebindNotificationService(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "\u6d88\u606f\u901a\u77e5request rebind notification service inter"

    .line 81
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->isNotificationListenerEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 83
    invoke-static {}, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "\u6d88\u606f\u901a\u77e5request rebind notification service start"

    .line 84
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->ensureCollectorRunning(Landroid/content/Context;)V

    return v1

    :cond_1b
    const/4 p1, 0x1

    return p1

    :cond_1d
    return v1
.end method

.method public requestStopNotificationService(Landroid/content/Context;)V
    .registers 5

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 101
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string p1, "\u5173\u95ed\u6d88\u606f\u901a\u77e5\u76d1\u542c\u7c7bCOMPONENT_ENABLED_STATE_DISABLED"

    .line 102
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
