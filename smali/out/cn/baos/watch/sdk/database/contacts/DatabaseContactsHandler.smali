.class public Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;
.super Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.source "DatabaseContactsHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/contacts/IDatabaseContactsHandler;


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
    iput-object p1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .registers 3

    .line 35
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
    .registers 8

    .line 71
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v4, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->time:J

    .line 72
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteAll()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
    .registers 6

    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsNote()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->note:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsTel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    iget-object v3, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
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

    .line 40
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(I)Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;
    .registers 10

    .line 97
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 100
    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_67

    const/4 v1, 0x3

    .line 101
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne p1, v2, :cond_63

    .line 102
    new-instance p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;

    invoke-direct {p1}, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;-><init>()V

    const/4 v2, 0x0

    .line 103
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->id:I

    const/4 v2, 0x1

    .line 104
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->time:J

    const/4 v2, 0x2

    .line 105
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    .line 106
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->note:Ljava/lang/String;

    const/4 v1, 0x4

    .line 107
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
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

    .line 112
    :cond_63
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_11

    .line 115
    :cond_67
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_70

    :catch_6b
    const-string p1, "localDb->db exception"

    .line 117
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_70
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryArrayAll()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    :try_start_9
    iget-object v3, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 160
    :goto_36
    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 161
    new-instance v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;-><init>()V

    const/4 v3, 0x0

    .line 162
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->id:I

    const/4 v3, 0x1

    .line 163
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->time:J

    const/4 v3, 0x2

    .line 164
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    const/4 v3, 0x3

    .line 165
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->note:Ljava/lang/String;

    const/4 v3, 0x4

    .line 166
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_36

    .line 172
    :cond_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6e} :catch_6f

    return-object v2

    :catch_6f
    move-exception v0

    const-string v1, "localDb->db exception"

    .line 174
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 175
    throw v0
.end method

.method public queryArrayBetween(II)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "localDb->queryArrayBetween cursor num:"

    const-string v1, "select * from "

    .line 124
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

    .line 125
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    :try_start_2d
    iget-object v3, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " where "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " between ? and ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 130
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v5, p2

    .line 128
    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    :goto_7c
    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 134
    new-instance v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;-><init>()V

    .line 135
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->id:I

    .line 136
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->time:J

    .line 137
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 138
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->note:Ljava/lang/String;

    const/4 v1, 0x4

    .line 139
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_7c

    .line 145
    :cond_ae
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_b1} :catch_b2

    return-object v2

    :catch_b2
    move-exception p1

    const-string p2, "localDb->db exception"

    .line 147
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 148
    throw p1
.end method

.method public update(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
    .registers 9

    .line 82
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsNote()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->note:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getContactsTel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mTableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->mColumeTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p1, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->time:J

    .line 89
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 88
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
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
