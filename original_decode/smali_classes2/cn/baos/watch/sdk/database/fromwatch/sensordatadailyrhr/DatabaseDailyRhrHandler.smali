.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "DatabaseDailyRhrHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/IDatabaseDailyRhrHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mColumeTimeStamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrColumnTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .locals 2

    .line 35
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object p1

    iget p1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;)V
    .locals 4

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_DAILY_COLUMN_rhr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->rhr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u63d2\u5165 insert successfully:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public queryArrayBetween(II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 84
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

    .line 85
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_0
    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 88
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;-><init>()V

    .line 97
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->setId(I)V

    .line 98
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->setUserId(J)V

    .line 99
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->setDevId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    .line 101
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->rhr:I

    const/4 v1, 0x5

    .line 102
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->mac:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 109
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;)V
    .locals 7

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDailyRhrDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getDAILY_DAILY_COLUMN_rhr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->rhr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 76
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DatabaseDailyRhrHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    move-result-object v5

    iget v5, v5, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;->update_timestamp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 77
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u66f4\u65b0\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
