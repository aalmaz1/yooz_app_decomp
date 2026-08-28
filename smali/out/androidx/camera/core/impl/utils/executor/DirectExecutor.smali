.class final Landroidx/camera/core/impl/utils/executor/DirectExecutor;
.super Ljava/lang/Object;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/util/concurrent/Executor;
    .registers 2

    .line 32
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    if-eqz v0, :cond_7

    .line 33
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    return-object v0

    .line 35
    :cond_7
    const-class v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    monitor-enter v0

    .line 36
    :try_start_a
    sget-object v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    if-nez v1, :cond_15

    .line 37
    new-instance v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/executor/DirectExecutor;-><init>()V

    sput-object v1, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    .line 39
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 41
    sget-object v0, Landroidx/camera/core/impl/utils/executor/DirectExecutor;->sDirectExecutor:Landroidx/camera/core/impl/utils/executor/DirectExecutor;

    return-object v0

    :catchall_19
    move-exception v1

    .line 39
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 46
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
