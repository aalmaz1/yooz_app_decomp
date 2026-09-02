.class public Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;
.super Ljava/lang/Object;
.source "NotificationDbManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/notification/db/INotificationDbManager;


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    if-nez v0, :cond_16

    .line 56
    new-instance v0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    .line 57
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->createDatabase()V

    .line 58
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->initNotificationDb()V

    :cond_16
    return-void
.end method

.method private getAppNotificationListDefaultEntities()Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/baos/watch/sdk/R$array;->str_app_name_list_default_check:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/baos/watch/sdk/R$array;->str_app_name_list:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/baos/watch/sdk/R$array;->str_app_package_name_list:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "smsto:"

    .line 291
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v6, 0x10000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const-string v5, "com.android.mms"

    if-eqz v4, :cond_5e

    .line 294
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 295
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_5f

    :cond_5e
    move-object v4, v5

    :goto_5f
    const/4 v6, 0x0

    .line 298
    :goto_60
    array-length v7, v1

    if-ge v6, v7, :cond_7d

    .line 300
    aget-object v7, v3, v6

    .line 301
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6c

    move-object v7, v4

    .line 304
    :cond_6c
    new-instance v8, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    aget-object v9, v1, v6

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v8, v7, v9, v10}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    :cond_7d
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;
    .registers 3

    .line 43
    sget-object v0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->instance:Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->instance:Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->instance:Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    .line 48
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 50
    :cond_17
    :goto_17
    sget-object p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->instance:Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    return-object p0
.end method

.method private initDefaultAppList()V
    .registers 6

    const-string v0, "notificationInitFinishKeys"

    .line 92
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryCheckStateLightDb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "NOTIFICATION DB INIT START"

    .line 93
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAppNotificationListDefaultEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 97
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "int notification db add:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto :goto_15

    .line 101
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "int notification db add but has already:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_15

    :cond_58
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0, v0, v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->saveCheckStateLightDb(Ljava/lang/String;Z)V

    goto :goto_9b

    .line 106
    :cond_5d
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.incallui"

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/util/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v2, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-direct {v2, v1, v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->queryNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object v1

    if-nez v1, :cond_96

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phone notificationAppListEntity \u4e22\u5931\u91cd\u65b0\u63d2\u5165:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "unknown"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "Phone"

    .line 113
    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 115
    :cond_93
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    :cond_96
    const-string v0, "NOTIFICATION DB HAS BEEN INITED"

    .line 117
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

.method private updateAppName(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 129
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "update name:"

    const-string v3, "unknown"

    const-string v4, "get app new name:"

    if-nez v1, :cond_68

    .line 130
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/baos/watch/sdk/util/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 133
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->deleteNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto :goto_4

    .line 134
    :cond_46
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto :goto_4

    .line 139
    :cond_68
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/baos/watch/sdk/util/W100Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u5f53\u524d\u4e3a\u6765\u7535\u5305\u540d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    goto/16 :goto_4

    .line 142
    :cond_90
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto/16 :goto_4

    :cond_b3
    return-void
.end method


# virtual methods
.method public deleteNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 4

    .line 225
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 226
    :try_start_9
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 227
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->delete(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    .line 228
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 229
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getAllNotification()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "notification-"

    .line 255
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 256
    :try_start_b
    iget-object v2, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 257
    iget-object v2, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->getAllNotificationAppListEntities()Ljava/util/ArrayList;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 259
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 261
    iget-object v3, v3, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 262
    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 263
    iget-object v4, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 265
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$2;

    invoke-direct {v4, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$2;-><init>(Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;)V

    invoke-virtual {v4}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_63

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    move-object v2, v0

    .line 272
    :cond_63
    monitor-exit v1

    return-object v2

    :catchall_65
    move-exception v0

    .line 273
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_b .. :try_end_67} :catchall_65

    throw v0
.end method

.method public hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z
    .registers 4

    .line 245
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 246
    :try_start_9
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 247
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z

    move-result p1

    .line 248
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 249
    monitor-exit v0

    return p1

    :catchall_1b
    move-exception p1

    .line 250
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public initNotificationDb()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->initDefaultAppList()V

    .line 85
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAllNotification()Ljava/util/ArrayList;

    return-void
.end method

.method public insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 5

    const-string v0, "insertNotification:"

    .line 152
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 153
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 155
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->insert(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    .line 156
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 157
    monitor-exit v1

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 64
    :try_start_1
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 66
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v3, "android"

    .line 69
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz p1, :cond_28

    .line 72
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_28

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v0

    .line 73
    invoke-virtual {v1, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_25} :catch_28

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    :catch_28
    :cond_28
    return v0
.end method

.method public queryCheckStateLightDb(Ljava/lang/String;)Z
    .registers 7

    const-string v0, "manager_"

    .line 342
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v2, "notificationLiteDb"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notificationManageKey"

    .line 344
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 347
    :try_start_13
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 349
    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 350
    invoke-static {v2}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_38

    const/4 v2, 0x1

    goto :goto_3e

    :catch_38
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    move v0, v3

    move v2, v0

    :goto_3e
    if-nez v2, :cond_49

    .line 359
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_49

    .line 361
    :cond_45
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    :cond_49
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryCheckStateLightDb \u901a\u77e5\u603b\u5f00\u5173->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method

.method public queryNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
    .registers 4

    .line 235
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 236
    :try_start_9
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 237
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->query(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    move-result-object p1

    .line 238
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 239
    monitor-exit v0

    return-object p1

    :catchall_1b
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public querySwitchOnlyNotice()Z
    .registers 6

    const-string v0, "switch_only"

    .line 369
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v2, "SWITCH_ONLY_NOTICE_NOTIFICATION"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 372
    :try_start_b
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 374
    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 375
    invoke-static {v2}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 376
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryBooleanByKeySetBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_32

    move v1, v0

    goto :goto_36

    :catch_32
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    return v1
.end method

.method public saveCheck(Ljava/lang/String;Z)V
    .registers 9

    const-string v0, "saveCheck->"

    const-string v1, "manager_"

    .line 323
    :try_start_4
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 325
    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 326
    invoke-static {v2}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 327
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v4, "notificationLiteDb"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 328
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 331
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    .line 335
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_55
    :goto_55
    return-void
.end method

.method public saveCheckStateLightDb(Ljava/lang/String;Z)V
    .registers 6

    .line 312
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v1, "notificationLiteDb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveCheckStateLightDb->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->saveCheck(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveSwitchOnlyNotice(Z)V
    .registers 6

    const-string v0, "switch_only"

    .line 386
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    const-string v2, "SWITCH_ONLY_NOTICE_NOTIFICATION"

    invoke-static {v1, v2, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 389
    :try_start_9
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 391
    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 392
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 393
    iget-object v2, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    return-void
.end method

.method public updateAllNotifications(Z)V
    .registers 6

    .line 212
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAllNotification()Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_d
    iget-object v2, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 216
    invoke-virtual {v2, p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    .line 217
    iget-object v3, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v3, v2}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->update(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto :goto_16

    .line 219
    :cond_2b
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 220
    monitor-exit v1

    return-void

    :catchall_32
    move-exception p1

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw p1
.end method

.method public updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 8

    .line 162
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_9
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 164
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->update(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    .line 165
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 166
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_b8

    .line 168
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 170
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 172
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notification-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->queryStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 175
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$1;

    invoke-direct {v3, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$1;-><init>(Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;)V

    invoke-virtual {v3}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_65

    .line 177
    :cond_5b
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAllNotification()Ljava/util/ArrayList;

    move-result-object v1

    :goto_65
    if-eqz v1, :cond_b7

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b7

    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_71
    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 182
    invoke-virtual {v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 183
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    .line 184
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setEnabled(Z)V

    goto :goto_71

    .line 187
    :cond_9a
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notification-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->saveStringByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    return-void

    :catchall_b8
    move-exception p1

    .line 166
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public updateNotifications(Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;Z)V"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_9
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->open()V

    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    .line 199
    invoke-virtual {v1, p2}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    .line 200
    iget-object v2, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {v2, v1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->update(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    goto :goto_12

    .line 202
    :cond_27
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->close()V

    .line 203
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p1
.end method
