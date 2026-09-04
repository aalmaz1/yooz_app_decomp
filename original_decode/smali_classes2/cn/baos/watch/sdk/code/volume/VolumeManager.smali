.class public Lcn/baos/watch/sdk/code/volume/VolumeManager;
.super Ljava/lang/Object;
.source "VolumeManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/code/volume/VolumeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z

.field private mVolumeBroadcastReceiver:Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;

.field private mVolumeChangeListener:Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mRegistered:Z

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/volume/VolumeManager;
    .locals 2

    .line 23
    sget-object v0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->instance:Lcn/baos/watch/sdk/code/volume/VolumeManager;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcn/baos/watch/sdk/code/volume/VolumeManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/code/volume/VolumeManager;->instance:Lcn/baos/watch/sdk/code/volume/VolumeManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcn/baos/watch/sdk/code/volume/VolumeManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/code/volume/VolumeManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/code/volume/VolumeManager;->instance:Lcn/baos/watch/sdk/code/volume/VolumeManager;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->instance:Lcn/baos/watch/sdk/code/volume/VolumeManager;

    return-object v0
.end method


# virtual methods
.method public getVolumeChangeListener()Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeChangeListener:Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 3

    .line 51
    new-instance v0, Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;-><init>(Lcn/baos/watch/sdk/code/volume/VolumeManager;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeBroadcastReceiver:Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeBroadcastReceiver:Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mRegistered:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setVolumeChangeListener(Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeChangeListener:Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeBroadcastReceiver:Lcn/baos/watch/sdk/code/volume/VolumeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "\u53d6\u6d88\u58f0\u97f3\u76d1\u542c\u5e7f\u64ad"

    .line 65
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mVolumeChangeListener:Lcn/baos/watch/sdk/code/volume/VolumeChangeListener;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/baos/watch/sdk/code/volume/VolumeManager;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
