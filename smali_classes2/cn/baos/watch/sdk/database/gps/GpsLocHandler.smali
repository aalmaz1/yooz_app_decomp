.class public Lcn/baos/watch/sdk/database/gps/GpsLocHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "GpsLocHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/gps/IDatabaseGpsLocHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mColumeTimeStamp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .locals 2

    .line 32
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v4, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    .line 63
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V
    .locals 4

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationTime()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationLat()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationLon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    iget-wide v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationSource()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localDb->\u63d2\u5165 insert successfully:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(I)Lcn/baos/watch/sdk/database/gps/GpslocEntity;
    .locals 8

    .line 83
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 86
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 87
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 88
    new-instance p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    invoke-direct {p1}, Lcn/baos/watch/sdk/database/gps/GpslocEntity;-><init>()V

    const/4 v2, 0x0

    .line 89
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->id:I

    const/4 v2, 0x1

    .line 90
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    const/4 v2, 0x2

    .line 91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    const/4 v1, 0x4

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
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

    .line 98
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "localDb->db exception"

    .line 103
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
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 110
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

    .line 111
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :try_start_0
    iget-object v3, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 114
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/gps/GpslocEntity;-><init>()V

    .line 123
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->id:I

    .line 124
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    iput-wide v7, v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    .line 125
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    const/4 v1, 0x3

    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    const/4 v1, 0x4

    .line 127
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 134
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 135
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V
    .locals 7

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationTime()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationLat()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationLon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->lon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    iget-wide v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getGpsLocationSource()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;->timeStamp:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 76
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
