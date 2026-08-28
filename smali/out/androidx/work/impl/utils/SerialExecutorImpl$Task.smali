.class Landroidx/work/impl/utils/SerialExecutorImpl$Task;
.super Ljava/lang/Object;
.source "SerialExecutorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/SerialExecutorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/SerialExecutorImpl;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialExecutor",
            "runnable"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 90
    iput-object p2, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 96
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_14

    .line 98
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object v0, v0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_a
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {v1}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1

    :catchall_14
    move-exception v0

    .line 98
    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    iget-object v1, v1, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_1a
    iget-object v2, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-virtual {v2}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    .line 100
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    .line 101
    throw v0

    :catchall_21
    move-exception v0

    .line 100
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method
