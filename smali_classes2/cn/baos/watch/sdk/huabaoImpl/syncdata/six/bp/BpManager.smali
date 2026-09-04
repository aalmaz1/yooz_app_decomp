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
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;
    .locals 2

    .line 26
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

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
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->close()V

    return-void
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/six/bp/BpHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/six/bp/BpHandler;->open()V

    return-void
.end method

.method public queryBpModeInInterval(II)Ljava/util/ArrayList;
    .locals 1
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    return-object v0
.end method

.method public queryBpModeToday(I)Ljava/util/ArrayList;
    .locals 3
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
    :try_start_0
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

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveBpModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
    .locals 0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

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
