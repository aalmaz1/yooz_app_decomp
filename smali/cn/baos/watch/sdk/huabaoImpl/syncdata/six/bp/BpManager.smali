.class public Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "BpManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpModeInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;
    .registers 2

    .line 26
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    if-nez v1, :cond_12

    .line 29
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    .line 31
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 33
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .registers 2

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    return-object v0
.end method

.method public open()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->open()V

    return-void
.end method

.method public queryBpModeInInterval(II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bp/BpEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684 \u8840\u538b:"

    .line 85
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_b
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->open()V

    .line 93
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v2, p1, p2}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->close()V

    .line 98
    monitor-exit v1

    return-object p1

    :catchall_30
    move-exception p1

    .line 99
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public queryBpModeToday(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bp/BpEntity;",
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
    :try_start_9
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->open()V

    .line 72
    invoke-static {p1}, Lcn/baos/watch/sdk/util/SyncDataUtils;->getZeroTimeStamp(I)I

    move-result p1

    const v1, 0x15180

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 74
    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    .line 75
    invoke-virtual {v2, p1, v1}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->queryArrayBetween(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->close()V

    .line 79
    monitor-exit v0

    return-object p1

    :catchall_24
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public saveBpModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
    .registers 4

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    const-string v1, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u6570\u636e->\u8fd0\u52a8\u8bb0\u5f55: success"

    .line 60
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->open()V

    .line 62
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->insert(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V

    .line 63
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->close()V

    .line 64
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    .line 39
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->createDatabase()V

    return-void
.end method
