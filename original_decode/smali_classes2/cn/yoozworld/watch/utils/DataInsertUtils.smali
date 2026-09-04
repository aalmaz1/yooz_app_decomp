.class public Lcn/yoozworld/watch/utils/DataInsertUtils;
.super Ljava/lang/Object;
.source "DataInsertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertData(Landroid/content/Context;)V
    .locals 13

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 26
    invoke-static {p0}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p0

    const v0, 0xa8c0

    sub-int v0, p0, v0

    const v1, 0x15180

    add-int/2addr v1, p0

    sub-int/2addr v1, v0

    .line 32
    div-int/lit16 v2, v1, 0x12c

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    const/4 v7, 0x1

    if-ge v4, v2, :cond_0

    mul-int/lit8 v8, v4, 0x5

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v0

    .line 35
    new-instance v9, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;

    invoke-direct {v9}, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;-><init>()V

    .line 36
    new-instance v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    invoke-direct {v10}, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;-><init>()V

    .line 37
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v5

    double-to-int v5, v11

    add-int/lit8 v5, v5, 0x3c

    iput v5, v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;->heartrate:I

    .line 38
    iput v8, v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;->update_timestamp:I

    new-array v5, v7, [Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    aput-object v10, v5, v3

    .line 39
    iput-object v5, v9, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    .line 40
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x708

    .line 46
    div-int/2addr v1, v2

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_1

    mul-int/lit8 v8, v4, 0x1e

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v0

    .line 49
    new-instance v9, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;

    invoke-direct {v9}, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;-><init>()V

    .line 50
    new-instance v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    invoke-direct {v10}, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;-><init>()V

    .line 51
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v11, v5

    double-to-int v11, v11

    add-int/lit8 v11, v11, 0x3c

    iput v11, v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->spo:I

    .line 52
    iput v8, v10, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->update_timestamp:I

    new-array v8, v7, [Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    aput-object v10, v8, v3

    .line 53
    iput-object v8, v9, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    .line 54
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->saveDailySpoEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit16 v0, p0, -0x1c20

    add-int/lit16 v1, p0, 0x5460

    .line 64
    new-instance v4, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;

    invoke-direct {v4}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;-><init>()V

    .line 65
    new-instance v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    invoke-direct {v5}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;-><init>()V

    add-int/lit8 v6, v1, 0x1

    .line 66
    iput v6, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->update_timestamp:I

    .line 67
    iput v0, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->begin_timestamp:I

    .line 68
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->end_timestamp:I

    sub-int/2addr v1, v0

    .line 69
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->total_sec:I

    const/16 v1, 0x2a30

    .line 70
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->light_sec:I

    .line 71
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->deep_sec:I

    const/16 v1, 0xe10

    .line 72
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->wakeup_sec:I

    const/16 v1, 0x1c20

    .line 73
    iput v1, v5, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->eyesmove_sec:I

    new-array v1, v7, [Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aput-object v5, v1, v3

    .line 74
    iput-object v1, v4, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V

    move v1, v3

    :goto_2
    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ge v1, v5, :cond_3

    mul-int/lit16 v5, v1, 0xe10

    add-int/2addr v5, v0

    .line 81
    new-instance v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;-><init>()V

    .line 82
    new-instance v8, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    invoke-direct {v8}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;-><init>()V

    if-ne v1, v4, :cond_2

    add-int/lit16 v5, v5, 0x4650

    .line 85
    :cond_2
    iput v5, v8, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->update_timestamp:I

    .line 86
    iput v7, v8, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->sleep_status:I

    new-array v4, v7, [Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    aput-object v8, v4, v3

    .line 87
    iput-object v4, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    .line 88
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->saveSleepStatusEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit16 v0, p0, 0x7080

    const v1, 0x8ca0

    add-int/2addr p0, v1

    .line 98
    new-instance v1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;-><init>()V

    .line 99
    new-instance v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;-><init>()V

    add-int/lit8 v8, p0, 0x1

    .line 100
    iput v8, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->update_timestamp:I

    .line 101
    iput v0, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->begin_timestamp:I

    .line 102
    iput p0, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->end_timestamp:I

    sub-int/2addr p0, v0

    .line 103
    iput p0, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->total_sec:I

    .line 104
    iput v2, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->light_sec:I

    .line 105
    iput v2, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->deep_sec:I

    .line 106
    iput v2, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->wakeup_sec:I

    .line 107
    iput v2, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->eyesmove_sec:I

    new-array p0, v7, [Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aput-object v6, p0, v3

    .line 108
    iput-object p0, v1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    .line 109
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V

    move p0, v3

    :goto_3
    if-ge p0, v5, :cond_7

    mul-int/lit16 v1, p0, 0x708

    add-int/2addr v1, v0

    .line 115
    new-instance v2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;-><init>()V

    .line 116
    new-instance v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;-><init>()V

    if-ne p0, v4, :cond_4

    int-to-double v8, v1

    const-wide v10, 0x40b5180000000000L    # 5400.0

    add-double/2addr v8, v10

    double-to-int v1, v8

    .line 119
    :cond_4
    iput v1, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->update_timestamp:I

    if-eqz p0, :cond_6

    if-le p0, v5, :cond_5

    goto :goto_4

    :cond_5
    move v1, p0

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v7

    .line 120
    :goto_5
    iput v1, v6, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->sleep_status:I

    new-array v1, v7, [Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    aput-object v6, v1, v3

    .line 121
    iput-object v1, v2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    .line 122
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->saveSleepStatusEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
