.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "DailySpoManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;
    .locals 2

    .line 29
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->open()V

    return-void
.end method

.method public queryDailySpoInInterval(II)Ljava/util/ArrayList;
    .registers 3
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public queryDailySpoToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->open()V

    .line 83
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 85
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    .line 86
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 88
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 89
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->close()V

    .line 90
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveDailySpoEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;)V
    .registers 2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 40
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;

    .line 42
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DatabaseDailySpoHandler;->createDatabase()V

    return-void
.end method
