.class public Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;
.super Ljava/lang/Object;
.source "BleReloadManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;
    .registers 2

    .line 16
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->instance:Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    if-nez v0, :cond_17

    .line 17
    const-class v0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->instance:Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    if-nez v1, :cond_12

    .line 19
    new-instance v1, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->instance:Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    .line 21
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 23
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->instance:Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    return-object v0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public startService()V
    .registers 5

    .line 31
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-startService-isBindWatch-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopService()V
    .registers 5

    .line 37
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
