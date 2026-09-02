.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;
.super Ljava/lang/Object;
.source "SyncDataImpl.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/syncdata/SyncDataInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;,
        Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;
    }
.end annotation


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;


# instance fields
.field private mSyncDataCurrentCategoryId:I

.field private mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

.field private mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

.field private mSyncStatusCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;
    .registers 2

    .line 89
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    if-nez v0, :cond_17

    .line 90
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    monitor-enter v0

    .line 91
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    if-nez v1, :cond_12

    .line 92
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    .line 94
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 96
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    return-object v0
.end method


# virtual methods
.method public getSyncDataCurrentIndex()I
    .registers 2

    .line 468
    iget v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    return v0
.end method

.method public getSyncStatus()I
    .registers 2

    .line 392
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->ordinal()I

    move-result v0

    return v0
.end method

.method public onGetSyncDataFromWatch(Landroid/content/Context;Lcn/baos/message/Serializable;)V
    .registers 13

    .line 214
    iget p1, p2, Lcn/baos/message/Serializable;->catagory:I

    const/16 v0, 0x7595

    const v1, 0x1606a

    const v2, 0x16069

    const v3, 0x16068

    const v4, 0x16067

    const v5, 0x16066

    const v6, 0x16065

    const v7, 0x16064

    const v8, 0x16063

    if-eq p1, v0, :cond_314

    const-string v0, " \u7ed3\u675f\u65f6\u95f4:"

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_4e8

    goto/16 :goto_4e6

    .line 293
    :pswitch_26
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_RHR_ARRAY:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 294
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_RHR_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    aget-object v2, v2, v9

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    iget-object v2, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->saveDailyRhrEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;)V

    .line 298
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 285
    :pswitch_79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_SPO_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_SPO_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->saveDailySpoEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;)V

    .line 290
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 277
    :pswitch_cc
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_HRATE_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 278
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_HRATE_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V

    .line 282
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 260
    :pswitch_11f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATUS_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATUS_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_status;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->saveSleepStatusEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;)V

    .line 265
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 252
    :pswitch_172
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATS_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 253
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATS_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V

    .line 257
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 269
    :pswitch_1c5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_ACTIVE_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 270
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_ACTIVE_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->saveData(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    .line 274
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 232
    :pswitch_218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_HRATE_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_HRATE_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->saveSportHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate_array;)V

    .line 237
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 224
    :pswitch_26b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_MODE_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 225
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_MODE_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->saveSportModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;)V

    .line 229
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 216
    :pswitch_2be
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SPORT_RECORD_ARRAY:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 217
    check-cast p2, Lcn/baos/watch/w100/messages/Sport_record_array;

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SPORT_RECORD_ARRAY \u5f00\u59cb\u65f6\u95f4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    aget-object v1, v1, v9

    iget v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    iget-object v1, p2, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->saveSportRecordFromWatchEntitiesToDb(Lcn/baos/watch/w100/messages/Sport_record_array;)V

    .line 221
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16062

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 302
    :cond_314
    check-cast p2, Lcn/baos/watch/w100/messages/Response_no_data;

    .line 303
    iget p1, p2, Lcn/baos/watch/w100/messages/Response_no_data;->data_catagary:I

    const v0, 0x1607b

    if-eq p1, v0, :cond_443

    packed-switch p1, :pswitch_data_4fe

    goto/16 :goto_4e6

    .line 337
    :pswitch_322
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_RHR_ARRAY \u6574\u4f53\u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->getPairCode()I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_34e

    .line 341
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16076

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto/16 :goto_4e6

    .line 343
    :cond_34e
    sget-object p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    .line 344
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncStatusCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;

    if-eqz p1, :cond_4e6

    .line 345
    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;->onSyncFinish()V

    goto/16 :goto_4e6

    .line 333
    :pswitch_35b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_SPO_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 329
    :pswitch_378
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_HRATE_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 321
    :pswitch_395
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATUS_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 317
    :pswitch_3b2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SLEEP_STATS_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 325
    :pswitch_3cf
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_ACTIVE_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 313
    :pswitch_3ec
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_HRATE_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 309
    :pswitch_409
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_SPORT_MODE_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 305
    :pswitch_426
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SPORT_RECORD_ARRAY \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    goto/16 :goto_4e6

    .line 351
    :cond_443
    iget p1, p2, Lcn/baos/watch/w100/messages/Response_no_data;->enum_param:I

    packed-switch p1, :pswitch_data_514

    goto/16 :goto_4e6

    .line 373
    :pswitch_44a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_BLOOD_SUGAR \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 374
    sget-object p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    .line 375
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncStatusCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;

    if-eqz p1, :cond_4e6

    .line 376
    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;->onSyncFinish()V

    goto/16 :goto_4e6

    .line 368
    :pswitch_46b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_TEMPERATURE \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x1607a

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto :goto_4e6

    .line 363
    :pswitch_48a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_BLOOD_PRESSURE \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16079

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto :goto_4e6

    .line 358
    :pswitch_4a9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_GENERAL_HEALTH \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16078

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto :goto_4e6

    .line 353
    :pswitch_4c8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_DAILY_ACTIVE_SUM_V2 \u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16077

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    :cond_4e6
    :goto_4e6
    return-void

    nop

    :pswitch_data_4e8
    .packed-switch 0x16062
        :pswitch_2be
        :pswitch_26b
        :pswitch_218
        :pswitch_1c5
        :pswitch_172
        :pswitch_11f
        :pswitch_cc
        :pswitch_79
        :pswitch_26
    .end packed-switch

    :pswitch_data_4fe
    .packed-switch 0x16062
        :pswitch_426
        :pswitch_409
        :pswitch_3ec
        :pswitch_3cf
        :pswitch_3b2
        :pswitch_395
        :pswitch_378
        :pswitch_35b
        :pswitch_322
    .end packed-switch

    :pswitch_data_514
    .packed-switch 0x16076
        :pswitch_4c8
        :pswitch_4a9
        :pswitch_48a
        :pswitch_46b
        :pswitch_44a
    .end packed-switch
.end method

.method public onGetSyncDataFromWatchSix(Landroid/content/Context;Lcn/baos/message/Serializable;)V
    .registers 8

    .line 125
    move-object p1, p2

    check-cast p1, Lcn/baos/watch/w100/messages/Sensor_data_array;

    .line 126
    iget v0, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->data_catagory:I

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_GENERAL_HEALTH:"

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_206

    goto/16 :goto_204

    .line 195
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_BLOOD_SUGAR:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    :goto_23
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length p2, p2

    const v0, 0x1607a

    if-ge v2, p2, :cond_6a

    .line 197
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object p2, p2, v2

    .line 198
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    .line 199
    invoke-static {p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p2

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-->>>-bs>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 201
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_blood_sugar;

    .line 202
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_67

    .line 203
    iget v3, p2, Lcn/baos/watch/w100/messages/Sensor_data_blood_sugar;->update_timestamp:I

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_67

    .line 204
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->saveBsModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_sugar;)V

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 207
    :cond_6a
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto/16 :goto_204

    .line 178
    :pswitch_73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_TEMPERATURE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 179
    :goto_89
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length p2, p2

    const v0, 0x16079

    if-ge v2, p2, :cond_d0

    .line 180
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object p2, p2, v2

    .line 181
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    .line 182
    invoke-static {p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p2

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-->>>-temp>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 184
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_temperature;

    .line 185
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_cd

    .line 186
    iget v3, p2, Lcn/baos/watch/w100/messages/Sensor_data_temperature;->update_timestamp:I

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_cd

    .line 187
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->savTempModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_temperature;)V

    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 190
    :cond_d0
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto/16 :goto_204

    .line 161
    :pswitch_d9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65From\u624b\u8868->SENSOR_DATA_BLOOD_PRESSURE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    :goto_ef
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length p2, p2

    const v0, 0x16078

    if-ge v2, p2, :cond_136

    .line 163
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object p2, p2, v2

    .line 164
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    .line 165
    invoke-static {p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p2

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-->>>-bp>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 167
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;

    .line 168
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_133

    .line 169
    iget v3, p2, Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;->update_timestamp:I

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_133

    .line 170
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->saveBpModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V

    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto :goto_ef

    .line 173
    :cond_136
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto/16 :goto_204

    .line 145
    :pswitch_13f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    :goto_153
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length p2, p2

    const v0, 0x16077

    if-ge v2, p2, :cond_19a

    .line 147
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object p2, p2, v2

    .line 148
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    .line 149
    invoke-static {p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p2

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-->>>-rh>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 151
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_general_health;

    .line 152
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_197

    .line 153
    iget v3, p2, Lcn/baos/watch/w100/messages/Sensor_data_general_health;->update_timestamp:I

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_197

    .line 154
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->savRhModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_general_health;)V

    :cond_197
    add-int/lit8 v2, v2, 0x1

    goto :goto_153

    .line 157
    :cond_19a
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    goto :goto_204

    .line 129
    :pswitch_1a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 130
    :goto_1b6
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length p2, p2

    const v0, 0x16076

    if-ge v2, p2, :cond_1fd

    .line 131
    iget-object p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object p2, p2, v2

    .line 132
    iget-object p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    .line 133
    invoke-static {p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p2

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-->>>-meto>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 135
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;

    .line 136
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result v0

    int-to-long v0, v0

    if-eqz p2, :cond_1fa

    .line 137
    iget v3, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->update_timestamp:I

    int-to-long v3, v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_1fa

    .line 138
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->saveMetoModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;)V

    :cond_1fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b6

    .line 141
    :cond_1fd
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatchSix(I)V

    :goto_204
    return-void

    nop

    :pswitch_data_206
    .packed-switch 0x16076
        :pswitch_1a2
        :pswitch_13f
        :pswitch_d9
        :pswitch_73
        :pswitch_d
    .end packed-switch
.end method

.method public onGetSyncRightNowDataFromWatch(Landroid/content/Context;Lcn/baos/message/Serializable;)V
    .registers 7

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u65f6\u6570\u636e\u8fd4\u56de:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 428
    iget p1, p2, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16076

    const-string v2, ""

    if-ne p1, v1, :cond_74

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    if-eqz p1, :cond_74

    .line 432
    move-object p1, p2

    check-cast p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;

    .line 434
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 435
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_times:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 436
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_step:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 437
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_calorie:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 438
    iget v1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_distance_m:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 439
    iget p1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->update_timestamp:I

    iput p1, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    .line 441
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;->onDailyActiveSum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V

    .line 442
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_STEP_SUM:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_74
    iget p1, p2, Lcn/baos/message/Serializable;->catagory:I

    const v0, 0x1606f

    if-ne p1, v0, :cond_a1

    .line 449
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    if-eqz p1, :cond_c2

    .line 450
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 451
    invoke-interface {p1, p2}, Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;->onDailyActiveSum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V

    .line 452
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    sget-object v0, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_STEP_SUM:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    .line 454
    :cond_a1
    iget p1, p2, Lcn/baos/message/Serializable;->catagory:I

    const v0, 0x16070

    if-ne p1, v0, :cond_b2

    .line 456
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    if-eqz p1, :cond_c2

    .line 457
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    invoke-interface {p1, p2}, Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;->onDailyHrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V

    goto :goto_c2

    .line 459
    :cond_b2
    iget p1, p2, Lcn/baos/message/Serializable;->catagory:I

    const v0, 0x16072

    if-ne p1, v0, :cond_c2

    .line 461
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    if-eqz p1, :cond_c2

    .line 462
    check-cast p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    invoke-interface {p1, p2}, Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;->onDailySpo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public queryLastedTime(I)I
    .registers 3

    packed-switch p1, :pswitch_data_8c

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_a2

    const p1, 0x5ea7d491

    goto/16 :goto_8b

    .line 518
    :pswitch_c
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsManager;->queryLatestTime(I)I

    move-result p1

    goto/16 :goto_8b

    .line 515
    :pswitch_16
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempManager;->queryLatestTime(I)I

    move-result p1

    goto/16 :goto_8b

    .line 512
    :pswitch_20
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->queryLatestTime(I)I

    move-result p1

    goto :goto_8b

    .line 509
    :pswitch_29
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->queryLatestTime(I)I

    move-result p1

    goto :goto_8b

    .line 506
    :pswitch_32
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoManager;->queryLatestTime(I)I

    move-result p1

    goto :goto_8b

    .line 503
    :pswitch_3b
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 500
    :pswitch_44
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 497
    :pswitch_4d
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 491
    :pswitch_56
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 488
    :pswitch_5f
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 494
    :pswitch_68
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 485
    :pswitch_71
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 482
    :pswitch_7a
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->queryLatestTime()I

    move-result p1

    goto :goto_8b

    .line 479
    :pswitch_83
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->queryLatestTime()I

    move-result p1

    :goto_8b
    return p1

    :pswitch_data_8c
    .packed-switch 0x16062
        :pswitch_83
        :pswitch_7a
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x16076
        :pswitch_32
        :pswitch_29
        :pswitch_20
        :pswitch_16
        :pswitch_c
    .end packed-switch
.end method

.method public setSyncDataCurrentCategoryId(I)V
    .registers 2

    .line 472
    iput p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataCurrentCategoryId:I

    return-void
.end method

.method public startSyncDateFromWatch(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;)V
    .registers 3

    .line 102
    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncStatusCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;

    .line 103
    sget-object p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_START:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncDataStatus:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    .line 104
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncStatusCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;

    if-eqz p1, :cond_d

    .line 105
    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;->onStartSync()V

    .line 116
    :cond_d
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    const p2, 0x16062

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncDataFromWatch(I)V

    return-void
.end method

.method public startSyncRightNowData(Landroid/content/Context;ILcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;)V
    .registers 9

    .line 397
    iput-object p3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->mSyncRightNowDataCallback:Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;

    .line 398
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->getPairCode()I

    move-result p1

    .line 399
    sget-object p3, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->ordinal()I

    move-result p3

    const v0, 0x16072

    const v1, 0x16070

    const v2, 0x16076

    const v3, 0x1606f

    const/16 v4, 0x14

    if-ne p2, p3, :cond_52

    if-lt p1, v4, :cond_31

    const-string p1, "\u540c\u6b65\u5b9e\u65f6\u6570\u636e\u5f00\u59cbV2"

    .line 401
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v2, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    goto :goto_3f

    :cond_31
    const-string p1, "\u540c\u6b65\u5b9e\u65f6\u6570\u636e\u5f00\u59cb"

    .line 404
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v3, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    .line 407
    :goto_3f
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    .line 408
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    goto :goto_86

    .line 409
    :cond_52
    sget-object p3, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->ordinal()I

    move-result p3

    if-ne p2, p3, :cond_86

    const-string p2, "\u540c\u6b65\u5b9e\u65f6\u6570\u636e\u7ed3\u675f"

    .line 410
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-lt p1, v4, :cond_6b

    .line 412
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v2, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    goto :goto_74

    .line 414
    :cond_6b
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v3, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    .line 416
    :goto_74
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    .line 417
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    sget-object p2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {p1, v0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V

    :cond_86
    :goto_86
    return-void
.end method
