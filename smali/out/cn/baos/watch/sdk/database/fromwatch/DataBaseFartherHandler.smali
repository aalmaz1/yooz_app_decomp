.class public abstract Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.super Ljava/lang/Object;
.source "DataBaseFartherHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public queryLatestTime()I
    .registers 9

    .line 17
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1f

    const v1, 0x5ea7d491

    goto :goto_24

    :cond_1f
    const/4 v1, 0x3

    .line 39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 42
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public queryLatestTime(I)I
    .registers 10

    .line 48
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1f

    const p1, 0x5ea7d491

    goto :goto_23

    .line 70
    :cond_1f
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 73
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p1
.end method
