.class public abstract Lcom/inuker/bluetooth/library/utils/Task;
.super Landroid/os/AsyncTask;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static execute(Lcom/inuker/bluetooth/library/utils/Task;Ljava/util/concurrent/Executor;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 58
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/utils/Task;->execute(Ljava/util/concurrent/Executor;)V

    :cond_5
    return-void
.end method

.method public static executeDelayed(Lcom/inuker/bluetooth/library/utils/Task;Ljava/util/concurrent/Executor;J)V
    .registers 4

    if-eqz p0, :cond_5

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/Task;->executeDelayed(Ljava/util/concurrent/Executor;J)V

    :cond_5
    return-void
.end method

.method public static executeDelayed(Ljava/util/concurrent/FutureTask;Ljava/util/concurrent/Executor;J)V
    .registers 6

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 70
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/Task;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/utils/Task$3;

    invoke-direct {v1, p1, p0}, Lcom/inuker/bluetooth/library/utils/Task$3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 3

    .line 26
    sget-object v0, Lcom/inuker/bluetooth/library/utils/Task;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 27
    const-class v0, Lcom/inuker/bluetooth/library/utils/Task;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lcom/inuker/bluetooth/library/utils/Task;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/inuker/bluetooth/library/utils/Task;->mHandler:Landroid/os/Handler;

    .line 31
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 33
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/inuker/bluetooth/library/utils/Task;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/utils/Task;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/utils/Task;->doInBackground()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract doInBackground()V
.end method

.method public execute(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 47
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/Task;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/utils/Task$2;

    invoke-direct {v1, p0, p1}, Lcom/inuker/bluetooth/library/utils/Task$2;-><init>(Lcom/inuker/bluetooth/library/utils/Task;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public executeDelayed(Ljava/util/concurrent/Executor;J)V
    .registers 6

    .line 37
    invoke-static {}, Lcom/inuker/bluetooth/library/utils/Task;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inuker/bluetooth/library/utils/Task$1;

    invoke-direct {v1, p0, p1}, Lcom/inuker/bluetooth/library/utils/Task$1;-><init>(Lcom/inuker/bluetooth/library/utils/Task;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
