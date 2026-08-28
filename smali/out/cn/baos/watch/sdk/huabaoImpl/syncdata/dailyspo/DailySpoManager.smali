.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailySpoManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;
    .registers 2

    .line 29
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    .line 34
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 36
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    return-object v0
.end method

.method public open()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->open()V

    return-void
.end method

.method public queryDailySpoInInterval(II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 96
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_b
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->open()V

    .line 99
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    .line 100
    invoke-static {p2}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p2

    const v2, 0x15180

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    .line 102
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 104
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->close()V

    .line 107
    monitor-exit v1

    return-object p1

    :catchall_3e
    move-exception p1

    .line 108
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public queryDailySpoToday(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_9
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->open()V

    .line 83
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 85
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    .line 86
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 88
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->close()V

    .line 90
    monitor-exit v0

    return-object p1

    :catchall_24
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public saveDailySpoEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;)V
    .registers 8

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u8fd0\u52a8\u8bb0\u5f55:"

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->open()V

    .line 64
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;-><init>()V

    const/4 v2, 0x0

    .line 65
    :goto_28
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    array-length v3, v3

    if-ge v2, v3, :cond_88

    .line 66
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;->setSensor_data_daily_spo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V

    .line 67
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v3

    .line 68
    iget-object v4, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    aget-object v4, v4, v2

    iget v4, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->update_timestamp:I

    .line 69
    invoke-virtual {p0, v4, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->isRightData(II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localDb->\u6570\u636e\u540c\u6b65->\u6570\u636e\u5e93\u63d2\u5165"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;->getSensor_data_daily_spo()Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u5f53\u524d\u65f6\u95f4\u6233:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    aget-object v5, v5, v2

    iget v5, v5, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->update_timestamp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6570\u636e\u5e93\u6700\u665a\u65f6\u95f4\u6233:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;)V

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 74
    :cond_88
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->close()V

    .line 75
    monitor-exit v1

    return-void

    :catchall_8d
    move-exception p1

    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_b .. :try_end_8f} :catchall_8d

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    .line 42
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->createDatabase()V

    return-void
.end method
