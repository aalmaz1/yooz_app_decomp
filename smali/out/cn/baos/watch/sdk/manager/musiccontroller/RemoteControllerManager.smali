.class public Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;
.super Ljava/lang/Object;
.source "RemoteControllerManager.java"


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;


# instance fields
.field private remoteController:Landroid/media/RemoteController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;
    .registers 2

    .line 22
    sget-object v0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    if-nez v0, :cond_17

    .line 23
    const-class v0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    monitor-enter v0

    .line 24
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    if-nez v1, :cond_12

    .line 25
    new-instance v1, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    .line 27
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 29
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    return-object v0
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method public registerRemoteController(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 5

    const-string v0, "\u6ce8\u518c registerRemoteController"

    .line 43
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/media/RemoteController;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    const/4 p2, 0x0

    :try_start_d
    const-string v0, "audio"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    .line 48
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    move-result p2
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :catch_24
    :goto_24
    if-eqz p2, :cond_4f

    const-string p2, "\u6ce8\u518c registerRemoteController registered:true"

    .line 56
    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    :try_start_2b
    iget-object p2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/baos/watch/sdk/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/baos/watch/sdk/R$dimen;->dp_10:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 58
    invoke-virtual {p2, v0, p1}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 61
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public unRegisterRemoteController(Landroid/content/Context;)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_1f

    const-string v0, "\u53d6\u6d88\u6ce8\u518c registerRemoteController"

    .line 70
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :try_start_9
    const-string v0, "audio"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->remoteController:Landroid/media/RemoteController;

    .line 73
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_16} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :catch_1f
    :cond_1f
    :goto_1f
    return-void
.end method
