.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "SportRecordFromWatchManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

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
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    return-object v0
.end method

.method private querySportRecordInIntervalNoOpenClose(II)Ljava/util/ArrayList;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method private querySportRecordTodayNoOpenClose(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v0, 0x15180

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 161
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    .line 162
    invoke-virtual {v1, p1, v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 164
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->open()V

    return-void
.end method

.method public querySportRecordFromWatchInInterval(II)Ljava/util/ArrayList;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public querySportRecordFromWatchToday(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->open()V

    .line 125
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->querySportRecordTodayNoOpenClose(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->close()V

    .line 127
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveSportRecordFromPhoneEntitiesToDb(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V
    .locals 0
    return-void
.end method

.method public saveSportRecordFromWatchEntitiesToDb(Lcn/baos/watch/w100/messages/Sport_record_array;)V
    .locals 0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    .line 43
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->createDatabase()V

    return-void
.end method
