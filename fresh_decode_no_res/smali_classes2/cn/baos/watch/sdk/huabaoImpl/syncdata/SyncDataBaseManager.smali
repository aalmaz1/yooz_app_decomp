.class public abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.super Ljava/lang/Object;
.source "SyncDataBaseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
.end method

.method public isRightData(II)Z
    .locals 2

    if-gt p1, p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->localDb->\u6570\u636e\u5e93\u63d2\u5165\u5931\u8d25:\u539f\u56e0\u65f6\u95f4\u6233\u6bd4\u6570\u636e\u5e93\u4e2d\u7684\u6700\u665a\u65f6\u95f4\u6233\u8981\u65e9\u6216\u76f8\u7b49\uff0c\u6570\u636e\u65f6\u95f4\u6233:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6570\u636e\u5e93\u6700\u665a\u65f6\u95f4\u6233:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract open()V
.end method

.method public queryLatestTime()I
    .locals 3

    .line 16
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->open()V

    .line 18
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime()I

    move-result v1

    const-string v2, "\u67e5\u8be2\u533a\u95f4\u5185\u6700\u8fd1\u4e00\u5929\u7684\u65f6\u95f4\u6233"

    .line 19
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->close()V

    .line 21
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryLatestTime(I)I
    .locals 2

    .line 26
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->open()V

    .line 28
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;->queryLatestTime(I)I

    move-result p1

    const-string v1, "\u67e5\u8be2\u533a\u95f4\u5185\u6700\u8fd1\u4e00\u5929\u7684\u65f6\u95f4\u6233"

    .line 29
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;->close()V

    .line 31
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
