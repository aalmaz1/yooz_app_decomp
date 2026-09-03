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
    .registers 1

    .line 23
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;
    .registers 2

    .line 29
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

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
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    return-object v0
.end method

.method public open()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/DatabaseSleepStatsHandler;->open()V

    return-void
.end method

.method public querySleepAll(I)Ljava/util/ArrayList;
    .registers 6
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

    if-eqz p1, :cond_30

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

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

    goto :goto_10

    :cond_30
    return-object p1
.end method

.method public querySleepStatsInInterval(II)Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public querySleepStatsToday(I)Ljava/util/ArrayList;
    .registers 5
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
    :try_start_9
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

    :catchall_24
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V
    .registers 2

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

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
