.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "RhManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhModeInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;
    .locals 2

    .line 26
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->open()V

    return-void
.end method

.method public queryRhModeInInterval(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/rh/RhEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u538b\u529b\u548c\u547c\u5438\u9891\u7387\u6570\u636e:"

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->open()V

    .line 93
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->close()V

    .line 98
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queryRhModeToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/rh/RhEntity;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->open()V

    .line 72
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 74
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    .line 75
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->close()V

    .line 79
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public savRhModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_general_health;)V
    .locals 2

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u538b\u529b\u548c\u547c\u5438\u9891\u7387\u6570\u636e: success"

    .line 60
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->open()V

    .line 62
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->insert(Lcn/baos/watch/w100/messages/Sensor_data_general_health;)V

    .line 63
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->close()V

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/rh/RhHandler;

    .line 39
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/rh/RhHandler;->createDatabase()V

    return-void
.end method
