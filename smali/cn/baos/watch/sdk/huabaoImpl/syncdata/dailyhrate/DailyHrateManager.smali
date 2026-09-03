.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailyHrateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;
    .registers 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    .line 35
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 37
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    return-object v0
.end method

.method public open()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->open()V

    return-void
.end method

.method public queryDailyHrateInInterval(II)Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public queryDailyHrateOnlyInterval(II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 114
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_b
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->open()V

    .line 120
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 122
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->close()V

    .line 125
    monitor-exit v1

    return-object p1

    :catchall_30
    move-exception p1

    .line 126
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public queryDailyHrateToday(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_9
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->open()V

    .line 84
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 86
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    .line 87
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 89
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->close()V

    .line 91
    monitor-exit v0

    return-object p1

    :catchall_24
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V
    .registers 2

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    .line 43
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->createDatabase()V

    return-void
.end method
