.class Landroidx/work/impl/model/WorkSpecDao_Impl$16;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1264
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1264
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1267
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1269
    :try_start_b
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_ec

    .line 1276
    :try_start_19
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1277
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1278
    :cond_23
    :goto_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_53

    .line 1279
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1280
    invoke-virtual {v0, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_3e

    .line 1282
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    invoke-virtual {v0, v6, v8}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_3e
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1286
    invoke-virtual {v5, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_23

    .line 1288
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    invoke-virtual {v5, v6, v7}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_53
    const/4 v6, -0x1

    .line 1292
    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1293
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v6, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 1294
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v6, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V

    .line 1295
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1296
    :goto_6a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 1299
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_78

    move-object v10, v4

    goto :goto_7d

    .line 1302
    :cond_78
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 1306
    :goto_7d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1307
    sget-object v9, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v8}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v11

    const/4 v8, 0x2

    .line 1310
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_90

    move-object v8, v4

    goto :goto_94

    .line 1313
    :cond_90
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1315
    :goto_94
    invoke-static {v8}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v12

    const/4 v8, 0x3

    .line 1317
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v8, 0x4

    .line 1319
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1321
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1322
    invoke-virtual {v0, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_b3

    .line 1324
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_b3
    move-object v15, v8

    .line 1327
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1328
    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_c5

    .line 1330
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_c5
    move-object/from16 v16, v8

    .line 1332
    new-instance v8, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    .line 1333
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 1335
    :cond_d1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_da
    .catchall {:try_start_19 .. :try_end_da} :catchall_e7

    .line 1338
    :try_start_da
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_ec

    .line 1341
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v6

    :catchall_e7
    move-exception v0

    .line 1338
    :try_start_e8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1339
    throw v0
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v0

    .line 1341
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1342
    throw v0
.end method

.method protected finalize()V
    .registers 2

    .line 1347
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
