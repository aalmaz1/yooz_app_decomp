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
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->open()V

    return-void
.end method

.method public queryDailyHrateInInterval(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 97
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->open()V

    .line 100
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    .line 101
    invoke-static {p2}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p2

    const v2, 0x15180

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    .line 103
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 105
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->close()V

    .line 108
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queryDailyHrateOnlyInterval(II)Ljava/util/ArrayList;
    .locals 3
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
    :try_start_0
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

    :catchall_0
    move-exception p1

    .line 126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queryDailyHrateToday(I)Ljava/util/ArrayList;
    .locals 3
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
    :try_start_0
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

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V
    .locals 5

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u5fc3\u7387\u8bb0\u5f55:"

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->open()V

    .line 65
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;-><init>()V

    const/4 v2, 0x0

    .line 66
    :goto_0
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 67
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;->setSensor_data_daily_hrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V

    .line 68
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v3

    .line 69
    iget-object v4, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    aget-object v4, v4, v2

    iget v4, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;->update_timestamp:I

    .line 70
    invoke-virtual {p0, v4, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->isRightData(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localDb->\u6570\u636e\u540c\u6b65->\u6570\u636e\u5e93\u63d2\u5165"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->close()V

    .line 76
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

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
