.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "GpsModeManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;
    .locals 2

    .line 25
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->close()V

    return-void
.end method

.method public deleteGpsModeInInterval(II)V
    .locals 3

    .line 103
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->open()V

    .line 108
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v1, p1, p2}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    .line 112
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v2, v1}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->delete(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u67e5\u8be2\u5e76\u5220\u9664\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->close()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->open()V

    return-void
.end method

.method public queryGpsModeInInterval(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 84
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->open()V

    .line 92
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 94
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->close()V

    .line 97
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queryGpsModeToday(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->open()V

    .line 71
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 73
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    .line 74
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 77
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->close()V

    .line 78
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveGpsModeEntitiesToDb(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V
    .locals 2

    .line 57
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u8fd0\u52a8\u8bb0\u5f55: success"

    .line 59
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->open()V

    .line 61
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->insert(Lcn/baos/watch/sdk/database/gps/GpslocEntity;)V

    .line 62
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->close()V

    .line 63
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

    .line 36
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/gps/GpsModeManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/gps/GpsLocHandler;

    .line 38
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/gps/GpsLocHandler;->createDatabase()V

    return-void
.end method
