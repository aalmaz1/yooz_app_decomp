.class public Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;
.super Ljava/lang/Object;
.source "PhoneBind888Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;,
        Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;
    }
.end annotation


# static fields
.field private static mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;


# instance fields
.field private mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;

.field private mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneBind888TimerOutListener(Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;)Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;
    .registers 2

    .line 14
    sget-object v0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    if-nez v0, :cond_17

    .line 15
    const-class v0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    monitor-enter v0

    .line 16
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    if-nez v1, :cond_12

    .line 17
    new-instance v1, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    .line 19
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 21
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888Timer:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    return-object v0
.end method


# virtual methods
.method public endWaitTimeOut()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;->setRun(Z)V

    :cond_8
    return-void
.end method

.method public startWaitTimeOut(Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;)V
    .registers 5

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888TimerOutListener:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutListener;

    .line 30
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;->setRun(Z)V

    .line 33
    :cond_a
    new-instance p1, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;

    invoke-direct {p1, p0}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;-><init>(Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;)V

    iput-object p1, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mPhoneBind888TimerOutRunnable:Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer$PhoneBind888TimerOutRunnable;

    .line 34
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->mTimer:Ljava/util/Timer;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
