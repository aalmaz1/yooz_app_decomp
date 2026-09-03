.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailyHrateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->open()V

    return-void
.end method

.method public queryDailyHrateInInterval(II)Ljava/util/ArrayList;
    .registers 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public queryDailyHrateOnlyInterval(II)Ljava/util/ArrayList;
    .registers 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public queryDailyHrateToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->open()V

    .line 84
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 86
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    .line 87
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 89
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 90
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->close()V

    .line 91
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V
    .registers 2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;

    .line 43
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DatabaseDailyHrateHandler;->createDatabase()V

    return-void
.end method
