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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    .line 174
    invoke-static {p2}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p2

    const v0, 0x15180

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 176
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-virtual {v0, p1, p2}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 178
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->open()V

    .line 142
    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->querySportRecordInIntervalNoOpenClose(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->close()V

    .line 144
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    .locals 4

    const-string v0, "localDb->\u6570\u636e\u540c\u6b65->\u6570\u636e\u5e93\u63d2\u5165"

    const-string v1, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u624b\u673a\u8fd0\u52a8\u8bb0\u5f55:"

    .line 62
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 63
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->open()V

    .line 66
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v1

    .line 67
    iget v3, p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;->update_timestamp:I

    .line 68
    invoke-virtual {p0, v3, v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->isRightData(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->insertPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->close()V

    .line 74
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveSportRecordFromWatchEntitiesToDb(Lcn/baos/watch/w100/messages/Sport_record_array;)V
    .locals 5

    const-string v0, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u8fd0\u52a8\u8bb0\u5f55:"

    .line 82
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->open()V

    .line 85
    new-instance v0, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;-><init>()V

    const/4 v2, 0x0

    .line 86
    :goto_0
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 87
    iget-object v3, p1, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;->setSport_record(Lcn/baos/watch/w100/messages/Sport_record;)V

    .line 103
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v3

    .line 104
    iget-object v4, p1, Lcn/baos/watch/w100/messages/Sport_record_array;->datas:[Lcn/baos/watch/w100/messages/Sport_record;

    aget-object v4, v4, v2

    iget v4, v4, Lcn/baos/watch/w100/messages/Sport_record;->update_timestamp:I

    .line 105
    invoke-virtual {p0, v4, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->isRightData(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localDb->\u6570\u636e\u540c\u6b65->\u6570\u636e\u5e93\u63d2\u5165"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;

    invoke-virtual {v3, v0}, Lcn/baos/watch/sdk/database/fromwatch/sportrecord/DatabaseSportRecordFromWatchHandler;->insert(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->close()V

    .line 112
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
