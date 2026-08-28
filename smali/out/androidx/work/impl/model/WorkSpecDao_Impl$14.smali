.class Landroidx/work/impl/model/WorkSpecDao_Impl$14;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
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
        "Ljava/lang/String;",
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

    .line 795
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 795
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 800
    :try_start_9
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_51

    .line 802
    :try_start_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 805
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object v4, v2

    goto :goto_32

    .line 808
    :cond_2e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    :goto_32
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 812
    :cond_36
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_4c

    .line 815
    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_51

    .line 818
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v1

    :catchall_4c
    move-exception v1

    .line 815
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 816
    throw v1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    .line 818
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 819
    throw v0
.end method

.method protected finalize()V
    .registers 2

    .line 824
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
