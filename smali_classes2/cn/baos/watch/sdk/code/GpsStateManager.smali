.class public Lcn/baos/watch/sdk/code/GpsStateManager;
.super Ljava/lang/Object;
.source "GpsStateManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/code/GpsStateManager;


# instance fields
.field private mReceiver:Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;

    invoke-direct {v0}, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/code/GpsStateManager;->mReceiver:Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/GpsStateManager;
    .locals 2

    .line 21
    sget-object v0, Lcn/baos/watch/sdk/code/GpsStateManager;->instance:Lcn/baos/watch/sdk/code/GpsStateManager;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcn/baos/watch/sdk/code/GpsStateManager;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/code/GpsStateManager;->instance:Lcn/baos/watch/sdk/code/GpsStateManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcn/baos/watch/sdk/code/GpsStateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/code/GpsStateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/code/GpsStateManager;->instance:Lcn/baos/watch/sdk/code/GpsStateManager;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/code/GpsStateManager;->instance:Lcn/baos/watch/sdk/code/GpsStateManager;

    return-object v0
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcn/baos/watch/sdk/code/GpsStateManager;->mReceiver:Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/baos/watch/sdk/code/GpsStateManager;->mReceiver:Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
