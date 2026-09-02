.class public Landroidx/media3/common/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ConditionVariable;-><init>(Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_9

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 87
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized block(J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 99
    :try_start_7
    iget-boolean p1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_32

    monitor-exit p0

    return p1

    .line 101
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1a

    .line 105
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->block()V

    goto :goto_2e

    .line 107
    :cond_1a
    :goto_1a
    iget-boolean v2, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    if-nez v2, :cond_2e

    cmp-long v2, v0, p1

    if-gez v2, :cond_2e

    sub-long v0, p1, v0

    .line 108
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 109
    iget-object v0, p0, Landroidx/media3/common/util/ConditionVariable;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_1a

    .line 112
    :cond_2e
    :goto_2e
    iget-boolean p1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_32

    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blockUninterruptible()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    :goto_2
    :try_start_2
    iget-boolean v1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_17

    if-nez v1, :cond_c

    .line 124
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    goto :goto_2

    :catch_a
    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_15

    .line 131
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    .line 133
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()Z
    .registers 3

    monitor-enter p0

    .line 73
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 75
    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .registers 2

    monitor-enter p0

    .line 59
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    .line 60
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    .line 62
    :try_start_9
    iput-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->isOpen:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    .line 64
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
