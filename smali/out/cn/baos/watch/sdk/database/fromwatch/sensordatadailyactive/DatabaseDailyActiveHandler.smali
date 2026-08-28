.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "DatabaseDailyActiveHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/IDatabaseDailyActiveHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mColumeTimeStamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveColumnTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .registers 3

    .line 35
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
    .registers 7

    .line 73
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p1

    iget p1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
    .registers 6

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_distance_m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_step()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_calorie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_times()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 66
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u63d2\u5165 insert successfully:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public open()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public queryActiveBetween(II)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;
    .registers 10

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, " where mac != \'"

    const-string v2, "select * from "

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "localDb->queryArrayBetween left:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    invoke-direct {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;-><init>()V

    .line 135
    :try_start_2f
    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " between ? and ? ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC  LIMIT 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 135
    invoke-virtual {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setId(I)V

    .line 145
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setUserId(J)V

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setDevId(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    .line 148
    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 149
    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p2

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 150
    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p2

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 151
    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object p2

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    const/16 p2, 0x8

    .line 152
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->mac:Ljava/lang/String;

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_f0} :catch_f1

    return-object v3

    :catch_f1
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "localDb->db exception queryActiveBetween "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 159
    throw p1
.end method

.method public queryArrayBetween(II)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localDb->queryArrayBetween left:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :try_start_2d
    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 99
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 106
    :goto_7c
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_e2

    .line 107
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;-><init>()V

    .line 108
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setId(I)V

    .line 109
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setUserId(J)V

    .line 110
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->setDevId(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    .line 112
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 113
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 114
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 115
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    const/16 v1, 0x8

    .line 116
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->mac:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_7c

    .line 121
    :cond_e2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_e5} :catch_e6

    return-object v2

    :catch_e6
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 123
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 124
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
    .registers 9

    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyActiveDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_distance_m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_step()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_calorie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_ACTIVE_COLUMN_sum_times()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 87
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DatabaseDailyActiveHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    move-result-object v5

    iget v5, v5, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 88
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u66f4\u65b0\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
