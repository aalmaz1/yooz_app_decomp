.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailyActivePhoneManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

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
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;->open()V

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

    .line 158
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->open()V

    .line 161
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 163
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    .line 164
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 166
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 167
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->close()V

    .line 168
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V
    .registers 2
    return-void
.end method

.method public saveData(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 62
    iget-object v2, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 63
    new-instance v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v4}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 64
    iget v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iput v5, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 65
    iget v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iput v5, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 66
    iget v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iput v5, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 67
    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iput v2, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    iput v2, v4, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    aput-object v4, v1, v3

    .line 70
    new-instance v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;-><init>()V

    .line 71
    iput-object v1, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 74
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v7

    long-to-int p1, v4

    .line 78
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result v1

    .line 79
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v4, 0x15180

    add-int/2addr p1, v4

    sub-int/2addr p1, v0

    .line 81
    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    aget-object v2, v2, v3

    .line 103
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object v4

    invoke-virtual {v4, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->queryDailyActiveInInterval(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 110
    :goto_0
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iget v4, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    add-int/2addr v1, v4

    iput v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 111
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iget v4, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    add-int/2addr v1, v4

    iput v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 112
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iget v4, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    add-int/2addr v1, v4

    iput v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 113
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    add-int/2addr v1, v2

    iput v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    long-to-int v1, v1

    iput v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    .line 115
    new-instance v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;-><init>()V

    new-array v0, v0, [Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    aput-object p1, v0, v3

    .line 118
    iput-object v0, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 119
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;

    .line 43
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/phone/active/DatabaseDailyActivePhoneHandler;->createDatabase()V

    return-void
.end method
