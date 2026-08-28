.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "DatabaseSportModeHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/IDatabaseSportModeHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mColumeTimeStamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeColumnTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 332
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .registers 3

    .line 36
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
    .registers 7

    .line 127
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object p1

    iget p1, p1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
    .registers 6

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_longitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_latitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_distance_m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_action_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_calories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_times_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_source()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
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

.method public insertToPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V
    .registers 8

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sportModeEntity.getUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sportModeEntity.getDevId()"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_longitude()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_latitude()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_hrate()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_hrate()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_hrate()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_hrate()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_step_len_cm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_step_len_cm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_step_len_cm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_step_len_cm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_pace_s()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_pace_s()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_pace_s()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_pace_s()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_distance_m()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_action_count()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_action_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_calories()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_calories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_times_s()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_times_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_mode()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_status()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_source()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(I)Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;
    .registers 10

    .line 171
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 174
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_184

    const/4 v1, 0x3

    .line 175
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne p1, v2, :cond_17f

    .line 176
    new-instance p1, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;

    invoke-direct {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;-><init>()V

    const/4 v2, 0x0

    .line 177
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setId(I)V

    const/4 v2, 0x1

    .line 178
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setUserId(J)V

    const/4 v2, 0x2

    .line 179
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setDevId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    .line 181
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    .line 182
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    .line 183
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    .line 184
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    .line 185
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    .line 186
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    .line 187
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    .line 188
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    .line 189
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    .line 190
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    .line 191
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    .line 192
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    .line 193
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    .line 194
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    .line 195
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    .line 196
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x13

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    .line 197
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    .line 198
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x15

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    .line 199
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    .line 200
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    .line 201
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    .line 202
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    .line 203
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    .line 204
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localDb->\u65f6\u95f4\u6233\u67e5\u8be2\u5355\u4e2a\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p1

    .line 210
    :cond_17f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_11

    .line 213
    :cond_184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_187} :catch_188

    goto :goto_18d

    :catch_188
    const-string p1, "localDb->db exception"

    .line 215
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_18d
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryArrayBetween(II)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 222
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

    .line 223
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :try_start_2d
    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 228
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 226
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 231
    :goto_7c
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_1d3

    .line 232
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;-><init>()V

    .line 233
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setId(I)V

    .line 234
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setUserId(J)V

    .line 235
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->setDevId(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    .line 237
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    .line 238
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    .line 239
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    .line 240
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    .line 241
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    .line 242
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    .line 243
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    .line 244
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    .line 245
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    .line 246
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    .line 247
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    .line 248
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    .line 249
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    .line 250
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    .line 251
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x12

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    .line 252
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x13

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    .line 253
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    .line 254
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x15

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    .line 255
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x16

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    .line 256
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x17

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    .line 257
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x18

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    .line 258
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x19

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    .line 259
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x1a

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    .line 260
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v1

    const/16 v3, 0x1b

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    const/16 v1, 0x1c

    .line 261
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->mac:Ljava/lang/String;

    .line 262
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_7c

    .line 266
    :cond_1d3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_1d6} :catch_1d7

    return-object v2

    :catch_1d7
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 268
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 269
    throw p1
.end method

.method public queryArrayBetweenPhone(II)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 276
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

    .line 277
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :try_start_2d
    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 284
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 280
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 285
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 287
    :goto_7c
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 288
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;-><init>()V

    .line 289
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->id:I

    .line 290
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->userId:J

    .line 291
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->devId:Ljava/lang/String;

    const/4 v1, 0x3

    .line 292
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->update_timestamp:I

    const/4 v1, 0x4

    .line 293
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->longitude:I

    const/4 v1, 0x5

    .line 294
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->latitude:I

    const/4 v1, 0x6

    .line 295
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_hrate:I

    const/4 v1, 0x7

    .line 296
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_hrate:I

    const/16 v1, 0x8

    .line 297
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_hrate:I

    const/16 v1, 0x9

    .line 298
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_hrate:I

    const/16 v1, 0xa

    .line 299
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_step_len_cm:I

    const/16 v1, 0xb

    .line 300
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_step_len_cm:I

    const/16 v1, 0xc

    .line 301
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_step_len_cm:I

    const/16 v1, 0xd

    .line 302
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_step_len_cm:I

    const/16 v1, 0xe

    .line 303
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_frequency_cpm:I

    const/16 v1, 0xf

    .line 304
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_frequency_cpm:I

    const/16 v1, 0x10

    .line 305
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_frequency_cpm:I

    const/16 v1, 0x11

    .line 306
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_frequency_cpm:I

    const/16 v1, 0x12

    .line 307
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->avg_pace_s:I

    const/16 v1, 0x13

    .line 308
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->max_pace_s:I

    const/16 v1, 0x14

    .line 309
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->min_pace_s:I

    const/16 v1, 0x15

    .line 310
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->cur_pace_s:I

    const/16 v1, 0x16

    .line 311
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_distance_m:I

    const/16 v1, 0x17

    .line 312
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_action_count:I

    const/16 v1, 0x18

    .line 313
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_calories:I

    const/16 v1, 0x19

    .line 314
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->sum_times_s:I

    const/16 v1, 0x1a

    .line 315
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->mode:I

    const/16 v1, 0x1b

    .line 316
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->status:I

    const/16 v1, 0x1c

    .line 317
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;->source:I

    .line 318
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_7c

    .line 322
    :cond_16c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_16f} :catch_170

    return-object v2

    :catch_170
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 324
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 325
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
    .registers 9

    .line 133
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 134
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportModeDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_longitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_latitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_hrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_step_len_cm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_frequency_cpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_avg_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_max_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_min_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_cur_pace_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_distance_m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_action_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_calories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_sum_times_s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSPORT_MODE_COLUMN_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 161
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/DatabaseSportModeHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;->getSensor_data_sport_mode()Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object v5

    iget v5, v5, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->update_timestamp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 162
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
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
