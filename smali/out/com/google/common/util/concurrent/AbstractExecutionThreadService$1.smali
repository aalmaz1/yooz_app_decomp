.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractExecutionThreadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doStop()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->triggerShutdown()V

    return-void
.end method

.method synthetic lambda$doStart$0$com-google-common-util-concurrent-AbstractExecutionThreadService$1()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->serviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$doStart$1$com-google-common-util-concurrent-AbstractExecutionThreadService$1()V
    .registers 6

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 51
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 54
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_3e

    if-eqz v0, :cond_35

    .line 56
    :try_start_e
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_14

    goto :goto_35

    :catchall_14
    move-exception v0

    .line 58
    :try_start_15
    invoke-static {v0}, Lcom/google/common/util/concurrent/Platform;->restoreInterruptIfIsInterruptedException(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3e

    .line 60
    :try_start_18
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3e

    goto :goto_31

    :catch_1e
    move-exception v1

    .line 62
    :try_start_1f
    invoke-static {v1}, Lcom/google/common/util/concurrent/Platform;->restoreInterruptIfIsInterruptedException(Ljava/lang/Throwable;)V

    .line 66
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->access$000()Lcom/google/common/util/concurrent/LazyLogger;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    .line 68
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_31
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    return-void

    .line 78
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 79
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3e

    goto :goto_45

    :catchall_3e
    move-exception v0

    .line 81
    invoke-static {v0}, Lcom/google/common/util/concurrent/Platform;->restoreInterruptIfIsInterruptedException(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    :goto_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
