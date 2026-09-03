.class public Lcom/inuker/bluetooth/library/channel/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
    }
.end annotation


# static fields
.field private static mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfputmCallback(Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V
    .locals 0

    sput-object p0, Lcom/inuker/bluetooth/library/channel/Timer;->mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/Timer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getName()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/inuker/bluetooth/library/channel/Timer;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/Timer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/inuker/bluetooth/library/channel/Timer;->mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isRunning()Z
    .locals 2

    const-class v0, Lcom/inuker/bluetooth/library/channel/Timer;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/channel/Timer;->mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized start(Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;J)V
    .locals 3

    const-class v0, Lcom/inuker/bluetooth/library/channel/Timer;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/channel/Timer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 66
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/inuker/bluetooth/library/channel/Timer;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    sput-object p0, Lcom/inuker/bluetooth/library/channel/Timer;->mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stop()V
    .locals 3

    const-class v0, Lcom/inuker/bluetooth/library/channel/Timer;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/inuker/bluetooth/library/channel/Timer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    sput-object v2, Lcom/inuker/bluetooth/library/channel/Timer;->mCallback:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
