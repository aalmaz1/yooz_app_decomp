.class public Lcn/baos/watch/sdk/manager/notification/NotificationHandler;
.super Landroid/os/Handler;
.source "NotificationHandler.java"


# instance fields
.field contentResetRunnable:Ljava/lang/Runnable;

.field private mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

.field private mNotificationContents:Ljava/util/ArrayList;

.field private mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

.field private mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNotificationContents(Lcn/baos/watch/sdk/manager/notification/NotificationHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationContents:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Lcn/baos/watch/sdk/util/NotificationListener;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationContents:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler$1;-><init>(Lcn/baos/watch/sdk/manager/notification/NotificationHandler;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->contentResetRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    return-void
.end method

.method private logSbn(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |key:("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")  |package name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 273
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |app name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |title:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 274
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |category:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 275
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |content:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " |tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "\u7cfb\u7edf\u7c7bAPP:\u9ed8\u8ba4\u4e0d\u901a\u77e5: "

    const-string v1, "\u7cfb\u7edf\u7c7bAPP "

    const-string v2, "\u91cd\u590d\u5185\u5bb9\u901a\u77e5,\u8fc7\u6ee4:"

    const-string v3, "content\u4e3a\u7a7a\uff0c\u91cd\u65b0\u8d4b\u503c:"

    const-string v4, "\u662f\u5426\u9501\u5c4f-suoping:"

    const-string v5, "\u6d88\u606f\u901a\u77e5tittle:"

    const-string v6, "\u662f\u5426\u9501\u5c4f:"

    const-string v7, "\u901a\u77e5\u9501\u5c4f\u901a\u77e5:"

    .line 56
    iget-object v8, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    if-nez v8, :cond_0

    const-string p1, "\u7cfb\u7edf\u76d1\u542c\u901a\u77e5\u63a5\u53e3\u4e3a\u7a7a"

    .line 57
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    if-eqz v8, :cond_1

    .line 61
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    iput-object v8, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    .line 63
    :cond_1
    invoke-static {}, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected()Z

    move-result v8

    if-nez v8, :cond_2

    const-string p1, "\u7cfb\u7edf\u76d1\u542c\u901a\u77e5\u63a5\u53e3\u672a\u8fde\u63a5"

    .line 64
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "trying to snooze"

    .line 264
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "MSG_LAUNCH"

    .line 261
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "MSG_DISMISS"

    .line 258
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    const-string p1, "onUpdate--order"

    .line 254
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    const-string p1, "MSG_STARTUP"

    .line 69
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 249
    :pswitch_5
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    if-eqz p1, :cond_1f

    const-string p1, "removed_cancel:"

    .line 250
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->logSbn(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_4

    :pswitch_6
    const-string p1, "posted_notify:"

    .line 72
    iget-object v8, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v8}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->logSbn(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    .line 73
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-static {p1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object p1

    const-string v8, "notificationManageKey"

    invoke-virtual {p1, v8}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryCheckStateLightDb(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u901a\u77e5\u603b\u5f00\u5173\u88ab\u5173\u95ed\u4e86\uff0c\u4e0d\u901a\u77e5,\u5305\u540d:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    const-string v8, "power"

    invoke-virtual {p1, v8}, Lcn/baos/watch/sdk/util/NotificationListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 79
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    .line 81
    iget-object v8, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Lcn/baos/watch/sdk/util/NotificationListener;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    .line 83
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcn/baos/watch/sdk/base/AppDataConfig;->isDeviceLock()Z

    move-result v8

    .line 88
    iget-object v9, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-virtual {v9}, Lcn/baos/watch/sdk/util/NotificationListener;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v9

    invoke-virtual {v9}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->querySwitchOnlyNotice()Z

    move-result v9

    .line 89
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :cond_4
    const-class p1, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;

    monitor-enter p1

    .line 99
    :try_start_1
    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    .line 100
    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v0, "\u65e0\u7528\u901a\u77e5\u63a8\u9001"

    .line 101
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 102
    monitor-exit p1

    return-void

    .line 104
    :cond_5
    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v4}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    iget-object v6, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v6}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 107
    iget-object v7, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v7}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 108
    iget-object v6, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v6}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",content:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    .line 116
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "\u201d\u6b63\u5728\u8fd0\u884c"

    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, "\u6807\u9898\u5305\u542bXX\u6b63\u5728\u8fd0\u884c,\u4e0d\u901a\u77e5"

    .line 118
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    monitor-exit p1

    return-void

    .line 122
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "\u6b63\u5728\u540e\u53f0\u8fd0\u884c"

    .line 123
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v0, "\u5185\u5bb9\u5305\u542b\u6b63\u5728\u540e\u53f0\u8fd0\u884c,\u4e0d\u901a\u77e5"

    .line 124
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 125
    monitor-exit p1

    return-void

    .line 128
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "\u5df2\u8fde\u63a5"

    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "\u5df2\u65ad\u5f00"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const-string v0, "\u5185\u5bb9\u5305\u542b\u5df2\u8fde\u63a5,\u4e0d\u901a\u77e5"

    .line 130
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 131
    monitor-exit p1

    return-void

    .line 134
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\u4eca\u65e5"

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "\u6b65"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v0, "\u5185\u5bb9\u542b\u4eca\u65e5\uff1f\u6b65,\u4e0d\u901a\u77e5"

    .line 136
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    monitor-exit p1

    return-void

    .line 156
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "\u8bed\u97f3\u901a\u8bdd"

    .line 157
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "["

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v0, "\u5185\u5bb9\u5305\u542b\u8bed\u97f3\u901a\u8bdd(\u975e\u672a\u63a5),\u4e0d\u901a\u77e5"

    .line 158
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    monitor-exit p1

    return-void

    :cond_d
    const-string v3, "\u89c6\u9891\u901a\u8bdd"

    .line 160
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "["

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v0, "\u5185\u5bb9\u5305\u542b\u89c6\u9891\u901a\u8bdd(\u975e\u672a\u63a5),\u4e0d\u901a\u77e5"

    .line 161
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    monitor-exit p1

    return-void

    :cond_e
    const-string v3, "\u6b63\u5728\u547c\u53eb\u4f60"

    .line 163
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, "\u5185\u5bb9\u5305\u542b\u6b63\u5728\u547c\u53eb\u4f60,\u4e0d\u901a\u77e5"

    .line 164
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 165
    monitor-exit p1

    return-void

    :cond_f
    const-string v3, "\u5730\u7406\u4f4d\u7f6e"

    .line 166
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v0, "\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e,\u4e0d\u901a\u77e5"

    .line 167
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    monitor-exit p1

    return-void

    .line 172
    :cond_10
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v3}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.incallui"

    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_16

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string v4, "com.android.systemui"

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.mfashiongallery.emag"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.android.deskclock"

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "cn.baos.watch.w100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.xiaomi.bsp.gps.nps"

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.xiaomi.market"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.xiaomi.simactivate.service"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.xiaomi.mi_connect_service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "com.android"

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "com.samsung.android.messaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "com.android.mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "com.android.server.telecom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_12
    const-string v4, "com.tencent.qqmusic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_0

    .line 198
    :cond_13
    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-static {v4}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_14

    const-string v1, "com.android.server.telecom"

    .line 200
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.android.mms"

    .line 201
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.samsung.android.messaging"

    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "com.samsung.android.dialer"

    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    monitor-exit p1

    return-void

    :cond_14
    const-string v0, "com.kugou.android"

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "\u7cfb\u7edf\u7c7bAPP:\u9ed8\u8ba4\u4e0d\u901a\u77e5: \u9177\u72d7\u97f3\u4e50"

    .line 209
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    monitor-exit p1

    return-void

    :cond_15
    :goto_0
    const-string v0, "\u9ed1\u540d\u5355:\u9ed8\u8ba4\u4e0d\u901a\u77e5app"

    .line 195
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    monitor-exit p1

    return-void

    .line 175
    :cond_16
    :goto_1
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    const-string v1, "SWITCH_CALL_PHONE_NOTIFICATION"

    invoke-static {v0, v1, v5}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "\u6765\u7535\u63d0\u9192\u529f\u80fd\u5df2\u88ab\u7528\u6237\u5173\u95ed"

    .line 177
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    monitor-exit p1

    return-void

    :cond_17
    const-string v0, "phone \u6765\u7535\u63d0\u9192\u901a\u77e5\u548c\u672a\u63a5\u6765\u7535\uff0c\u76ee\u524d\u9700\u8981\u5904\u7406"

    .line 180
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    sget-boolean v0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->phoneState:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 183
    sput-boolean v0, Lcn/baos/watch/sdk/code/callcontroller/CallListenService;->phoneState:Z

    .line 213
    :cond_18
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    monitor-exit p1

    return-void

    .line 218
    :cond_19
    new-instance v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    .line 219
    invoke-static {v1, v3}, Lcn/baos/watch/sdk/util/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 220
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "notification has already"

    .line 221
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "notification isCheck is true"

    .line 223
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->pushNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_2

    :cond_1a
    const-string v0, "notification isCheck is false"

    .line 226
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_1b
    const-string v0, "can not find notification so add (default true)"

    .line 229
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v0, v5}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 232
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationAppListEntity:Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    .line 238
    :cond_1c
    :goto_2
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationEntity:Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->contentResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->contentResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.yoozworld.watch.ui.NotificationManageActivity.UpdateNotificationUIBroadcastReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;->mNotificationListener:Lcn/baos/watch/sdk/util/NotificationListener;

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/util/NotificationListener;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    monitor-exit p1

    goto :goto_4

    :cond_1d
    const-string v0, "phone \u6ca1\u6709\u6765\u7535\u8fdb\u6765\u4e0d\u901a\u77e5\u8be5\u6761\u6d88\u606f"

    .line 185
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    monitor-exit p1

    return-void

    :cond_1e
    :goto_3
    const-string v0, "content\u6216\u7740tittle\u4e3a\u7a7a,\u4e0d\u63a8\u9001"

    .line 113
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 114
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 246
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1f
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
