.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "SportModeManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;
    .registers 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    if-nez v0, :cond_17

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    monitor-enter v0

    .line 32
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    if-nez v1, :cond_12

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

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
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .registers 2

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    return-object v0
.end method

.method public open()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->open()V

    return-void
.end method

.method public querySportModeInInterval(II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 128
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_b
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->open()V

    .line 136
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 138
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->close()V

    .line 141
    monitor-exit v1

    return-object p1

    :catchall_30
    move-exception p1

    .line 142
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public querySportModeInIntervalPhone(II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 147
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_b
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->open()V

    .line 155
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->queryArrayBetweenPhone(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 157
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->close()V

    .line 160
    monitor-exit v1

    return-object p1

    :catchall_30
    move-exception p1

    .line 161
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public querySportModeToday(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 106
    :try_start_9
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->open()V

    .line 108
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 110
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    .line 111
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 113
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->close()V

    .line 115
    monitor-exit v0

    return-object p1

    :catchall_24
    move-exception p1

    .line 116
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public saveSportModeEntitiesPhoneToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V
    .registers 5

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u624b\u673a\u8fd0\u52a8\u8bb0\u5f55:"

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 85
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

    .line 86
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->open()V

    .line 87
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->insertToPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V

    .line 88
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->close()V

    .line 89
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public saveSportModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;)V
    .registers 7

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u8fd0\u52a8\u8bb0\u5f55:"

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
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

    .line 67
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->open()V

    .line 68
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;-><init>()V

    const/4 v2, 0x0

    .line 69
    :goto_28
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    array-length v3, v3

    if-ge v2, v3, :cond_6a

    .line 70
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setSensor_data_sport_mode(Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;)V

    .line 71
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v3

    .line 72
    iget-object v4, p1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    aget-object v4, v4, v2

    iget v4, v4, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    .line 73
    invoke-virtual {p0, v4, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->isRightData(II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 74
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

    .line 75
    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 78
    :cond_6a
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->close()V

    .line 79
    monitor-exit v1

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_b .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;

    .line 43
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->createDatabase()V

    return-void
.end method
