.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailyActiveManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;
    .locals 2

    .line 32
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->open()V

    return-void
.end method

.method public queryDailyActiveInInterval(II)Ljava/util/ArrayList;
    .registers 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public queryDailyActiveToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->open()V

    .line 163
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 165
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    .line 166
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 168
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 169
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->close()V

    .line 170
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queryLastActiveToday(II)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;
    .locals 4

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185\u4e0a\u6b21\u904b\u52d5\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    const-string v1, "\u67e5\u8be2\u533a\u95f4\u5185\u4e0a\u6b21\u904b\u52d5\u7684\u5de6\u8fb9\u65f6\u95f4:"

    .line 194
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->open()V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u53f3\u8fb9\u65f6\u95f4:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    invoke-virtual {v1, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->queryActiveBetween(II)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    move-result-object p1

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->close()V

    .line 200
    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 201
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V
    .registers 2
    return-void
.end method

.method public saveData(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V
    .locals 10

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------\u4eca\u65e5\u6d3b\u52a8-saveDailyActiveEntitiesToDb ---start\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 65
    invoke-static {v0}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result v1

    .line 66
    invoke-static {v0}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result v0

    const v2, 0x15180

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 68
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->queryDailyActiveInInterval(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 70
    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    .line 76
    invoke-virtual {v8}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v8

    .line 77
    iget v9, v8, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    add-int/2addr v4, v9

    .line 78
    iget v9, v8, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    add-int/2addr v5, v9

    .line 79
    iget v9, v8, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    add-int/2addr v6, v9

    .line 80
    iget v8, v8, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    add-int/2addr v7, v8

    goto :goto_0

    .line 82
    :cond_0
    iput v4, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 83
    iput v5, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 84
    iput v6, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 85
    iput v7, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    :try_start_0
    const-string v2, "------\u4eca\u65e5\u6d3b\u52a8-\u524d\u4e2a\u6570\u636e"

    .line 89
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->queryLastActiveToday(II)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------\u4eca\u65e5\u6d3b\u52a8-lastEntity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v0

    if-nez v3, :cond_2

    .line 95
    new-instance v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    move-object v3, v1

    .line 97
    :cond_2
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    add-int/2addr v1, v2

    iput v1, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 98
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    add-int/2addr v1, v2

    iput v1, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 99
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    add-int/2addr v1, v2

    iput v1, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 100
    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iget v1, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    add-int/2addr v0, v1

    iput v0, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    .line 107
    iget-object v0, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 108
    iget-object v0, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 109
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 110
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 111
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 112
    iget v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iget v2, v3, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 113
    iget-object v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    iget-object v2, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------\u4eca\u65e5\u6d3b\u52a8-saveDailyActiveEntitiesToDb ---end\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;

    .line 45
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->createDatabase()V

    return-void
.end method
