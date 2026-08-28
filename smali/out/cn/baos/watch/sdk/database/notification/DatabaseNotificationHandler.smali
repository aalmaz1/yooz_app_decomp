.class public Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;
.super Ljava/lang/Object;
.source "DatabaseNotificationHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/notification/IDatabaseNotificationHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearTable()V
    .registers 4

    .line 148
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .registers 3

    .line 32
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 7

    .line 94
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getAllNotificationAppListEntities()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "get all cursor num:"

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    :try_start_7
    iget-object v2, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 123
    :goto_2e
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_77

    .line 124
    new-instance v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>()V

    const/4 v3, 0x0

    .line 125
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setId(I)V

    const/4 v3, 0x1

    .line 126
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppPackageName(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 127
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    const/4 v3, 0x3

    .line 128
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    const/4 v3, 0x4

    .line 129
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setSynchronizeNetwork(Z)V

    const/4 v3, 0x5

    .line 130
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->mac:Ljava/lang/String;

    .line 131
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2e

    .line 135
    :cond_77
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7a} :catch_7b

    goto :goto_80

    :catch_7b
    const-string v0, "db exception"

    .line 137
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_80
    return-object v1
.end method

.method public hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z
    .registers 10

    .line 100
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_30

    .line 103
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    .line 107
    :cond_2c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    .line 109
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_39

    :catch_34
    const-string p1, "db exception"

    .line 111
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_39
    const/4 p1, 0x0

    return p1
.end method

.method public insert(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 5

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 43
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnIsChecked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnIsSynchronizeNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "mac"

    .line 47
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string p1, "notification added successfully."

    .line 50
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

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
    .registers 10

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_64

    .line 72
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 73
    new-instance p1, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    invoke-direct {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;-><init>()V

    const/4 v1, 0x0

    .line 74
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setId(I)V

    .line 75
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppPackageName(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 76
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setAppName(Ljava/lang/String;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;

    const/4 v1, 0x3

    .line 77
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setChecked(Z)V

    const/4 v1, 0x4

    .line 78
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->setSynchronizeNetwork(Z)V

    .line 79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 82
    :cond_60
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_13

    .line 85
    :cond_64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_6d

    :catch_68
    const-string p1, "db exception"

    .line 87
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_6d
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
    .registers 8

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnIsChecked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnIsSynchronizeNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->isSynchronizeNetwork()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "mac"

    .line 60
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcn/baos/watch/sdk/database/notification/DatabaseNotificationHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getNotificationColumnAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
