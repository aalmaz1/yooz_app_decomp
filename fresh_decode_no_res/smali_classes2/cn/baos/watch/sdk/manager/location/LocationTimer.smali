.class public Lcn/baos/watch/sdk/manager/location/LocationTimer;
.super Ljava/lang/Object;
.source "LocationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;,
        Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;
    }
.end annotation


# static fields
.field private static mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/location/LocationTimer;


# instance fields
.field private mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;

.field private mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneBind888TimerOutListener(Lcn/baos/watch/sdk/manager/location/LocationTimer;)Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/location/LocationTimer;
    .locals 2

    .line 14
    sget-object v0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcn/baos/watch/sdk/manager/location/LocationTimer;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcn/baos/watch/sdk/manager/location/LocationTimer;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/location/LocationTimer;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/location/LocationTimer;

    return-object v0
.end method


# virtual methods
.method public endWaitTimeOut()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->setRun(Z)V

    :cond_0
    return-void
.end method

.method public startWaitTimeOut(Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;)V
    .locals 3

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutListener;

    .line 30
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;->setRun(Z)V

    .line 33
    :cond_0
    new-instance p1, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;-><init>(Lcn/baos/watch/sdk/manager/location/LocationTimer;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/location/LocationTimer$PhoneBind888TimerOutRunnable;

    .line 34
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/location/LocationTimer;->mTimer:Ljava/util/Timer;

    const-wide/16 v1, 0x61a8

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
