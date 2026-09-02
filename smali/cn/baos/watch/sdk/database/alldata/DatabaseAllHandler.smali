.class public Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;
.super Ljava/lang/Object;
.source "DatabaseAllHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/alldata/IDatabaseAllHandler;


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearTable()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getSportRecordTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->close()V

    return-void
.end method

.method public createDatabase()V
    .registers 3

    .line 24
    new-instance v0, Lcn/baos/watch/sdk/database/DatabaseHelper;

    iget-object v1, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getAlEntities()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSportRecordEntity(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public insert(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public open()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->dbHelper:Lcn/baos/watch/sdk/database/DatabaseHelper;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/database/alldata/DatabaseAllHandler;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public query(J)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public queryArrayBetween(JJ)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
