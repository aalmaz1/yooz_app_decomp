.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "SleepStatsManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;
    .locals 2

    .line 29
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->open()V

    return-void
.end method

.method public querySleepAll(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->querySleepStatsToday(I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;

    .line 117
    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->getSensor_data_sleep_stats()Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->begin_timestamp:I

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->getSensor_data_sleep_stats()Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    move-result-object v3

    iget v3, v3, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->end_timestamp:I

    invoke-virtual {p0, v2, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->querySleepStatsInInterval(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->setSleepStatusArr(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public querySleepStatsInInterval(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u7761\u7720\u6982\u51b5\u9759\u6001\u6570\u636e:"

    .line 97
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->open()V

    .line 100
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    add-int/lit16 p1, p1, -0x2a30

    .line 101
    invoke-static {p2}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p2

    const v2, 0x12750

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    .line 103
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->close()V

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

.method public querySleepStatsToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
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
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->open()V

    .line 84
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 86
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    .line 87
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 89
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->close()V

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

.method public saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V
    .locals 5

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u7761\u7720\u6982\u51b5:"

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 62
    :try_start_0
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
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->open()V

    .line 64
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;-><init>()V

    const/4 v2, 0x0

    .line 65
    :goto_0
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 66
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->setSensor_data_sleep_stats(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;)V

    .line 67
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v3

    .line 68
    iget-object v4, p1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aget-object v4, v4, v2

    iget v4, v4, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->update_timestamp:I

    .line 69
    invoke-virtual {p0, v4, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->isRightData(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localDb->\u6570\u636e\u540c\u6b65->\u6570\u636e\u5e93\u63d2\u5165"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->close()V

    .line 75
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

    .line 40
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    .line 42
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->createDatabase()V

    return-void
.end method
