.class public Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;
.super Ljava/lang/Object;
.source "TimeSyncCacheManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;


# instance fields
.field commandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

.field private hasCacheTimeSync:Z

.field hasCheckNeedForceOta:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->hasCheckNeedForceOta:Z

    .line 28
    iput-boolean v0, p0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->hasCacheTimeSync:Z

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;
    .locals 2

    .line 17
    sget-object v0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->instance:Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->instance:Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->instance:Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->instance:Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    return-object v0
.end method


# virtual methods
.method public timeSyncToWatch(JI)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->commandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    .line 56
    :cond_0
    iget v0, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

    .line 58
    :goto_0
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->timeSyncToWatch(IJI)V

    return-void
.end method
