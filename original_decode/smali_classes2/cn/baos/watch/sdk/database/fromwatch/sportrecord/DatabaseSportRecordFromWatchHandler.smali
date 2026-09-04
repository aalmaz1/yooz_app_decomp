.class public Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "DatabaseSportRecordFromWatchHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/fromwatch/sportrecord/IDatabaseSportRecordFromWatchHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mColumeTimeStamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearTable()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .locals 2

    .line 37
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object p1

    iget p1, p1, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
    .locals 4

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnBeginTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnEndTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnInitiator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportDistanceM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportCalories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->calories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportTimesS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->times_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportDistancePerM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->distance_per_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportTimesPerS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->times_per_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMaxPaceS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMinPaceS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->min_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMaxHeartrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_heartrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 79
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u63d2\u5165 insert \u8fd0\u52a8\u8bb0\u5f55 successfully:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public insertPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V
    .locals 4

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userid"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnBeginTimestamp()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->begin_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnEndTimestamp()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->end_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnTimezone()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->timezone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnInitiator()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->initiator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnMode()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnStatus()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u63d2\u5165 insert \u8fd0\u52a8\u8bb0\u5f55 successfully:"

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

    .line 42
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(I)Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;
    .locals 8

    .line 151
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 154
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 157
    new-instance p1, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;

    invoke-direct {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;-><init>()V

    const/4 v2, 0x0

    .line 158
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setId(I)V

    const/4 v2, 0x1

    .line 159
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setUserId(J)V

    const/4 v2, 0x2

    .line 160
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setDevId(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    .line 164
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    .line 165
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    .line 166
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    .line 167
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    .line 168
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    .line 169
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    .line 171
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->distance_m:I

    .line 172
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->calories:I

    .line 173
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->times_s:I

    .line 175
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->distance_per_m:I

    .line 176
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->times_per_s:I

    .line 177
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_pace_s:I

    .line 178
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->min_pace_s:I

    .line 179
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v2, 0x11

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_heartrate:I

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localDb->\u65f6\u95f4\u6233\u67e5\u8be2\u5355\u4e2a\u8fd0\u52a8\u8bb0\u5f55\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p1

    .line 184
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_0

    .line 187
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "localDb->db exception"

    .line 189
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryArrayBetween(II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 196
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

    .line 197
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :try_start_0
    iget-object v3, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 204
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 200
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 207
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;-><init>()V

    .line 209
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setId(I)V

    .line 210
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setUserId(J)V

    .line 211
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setDevId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    .line 215
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    .line 216
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    .line 217
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    .line 218
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    .line 219
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    .line 220
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    .line 222
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    new-instance v3, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;-><init>()V

    iput-object v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    .line 223
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->distance_m:I

    .line 224
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->calories:I

    .line 225
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->times_s:I

    .line 227
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    new-instance v3, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;-><init>()V

    iput-object v3, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    .line 228
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v3, 0xd

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->distance_per_m:I

    .line 229
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->times_per_s:I

    .line 230
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_pace_s:I

    .line 231
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->min_pace_s:I

    .line 232
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_heartrate:I

    const/16 v1, 0x12

    .line 234
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->mac:Ljava/lang/String;

    .line 236
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto/16 :goto_0

    .line 240
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 242
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 243
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
    .locals 7

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnBeginTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnEndTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnInitiator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportDistanceM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->distance_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportCalories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->calories:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportTimesS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->times_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportDistancePerM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->distance_per_m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportTimesPerS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->times_per_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMaxPaceS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMinPaceS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->min_pace_s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordFromWatchColumnSportMaxHeartrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    iget v2, v2, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->max_heartrate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac"

    .line 141
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->getSport_record()Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object v5

    iget v5, v5, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 142
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "localDb->\u66f4\u65b0\u8fd0\u52a8\u8bb0\u5f55\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
