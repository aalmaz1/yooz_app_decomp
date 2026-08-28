.class final Landroidx/camera/core/impl/StateObservable$ObserverWrapper;
.super Ljava/lang/Object;
.source "StateObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/StateObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserverWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final NOT_SET:Ljava/lang/Object;

.field private static final NO_VERSION:I = -0x1


# instance fields
.field private final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mLastState:Ljava/lang/Object;

.field private mLatestSignalledVersion:I

.field private final mObserver:Landroidx/camera/core/impl/Observable$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final mStateRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWrapperUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    sget-object v0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLastState:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 196
    iput v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    .line 203
    iput-object p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 204
    iput-object p2, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 205
    iput-object p3, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 278
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .registers 5

    .line 213
    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 216
    iput-boolean v1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    .line 217
    monitor-exit p0

    return-void

    .line 220
    :cond_e
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 221
    iget v2, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    .line 222
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_55

    .line 227
    :goto_17
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLastState:Ljava/lang/Object;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 228
    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLastState:Ljava/lang/Object;

    .line 229
    instance-of v3, v0, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    if-eqz v3, :cond_31

    .line 230
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    check-cast v0, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    invoke-virtual {v0}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/camera/core/impl/Observable$Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 232
    :cond_31
    iget-object v3, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mObserver:Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {v3, v0}, Landroidx/camera/core/impl/Observable$Observer;->onNewData(Ljava/lang/Object;)V

    .line 236
    :cond_36
    :goto_36
    monitor-enter p0

    .line 237
    :try_start_37
    iget v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    if-eq v2, v0, :cond_4e

    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_4e

    .line 244
    :cond_44
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 245
    iget v2, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    .line 246
    monitor-exit p0

    goto :goto_17

    .line 239
    :cond_4e
    :goto_4e
    iput-boolean v1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    .line 240
    monitor-exit p0

    return-void

    :catchall_52
    move-exception v0

    .line 246
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_52

    throw v0

    :catchall_55
    move-exception v0

    .line 222
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method

.method update(I)V
    .registers 3

    .line 251
    monitor-enter p0

    .line 253
    :try_start_1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 255
    :cond_b
    iget v0, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    if-gt p1, v0, :cond_11

    monitor-exit p0

    return-void

    .line 256
    :cond_11
    iput p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mLatestSignalledVersion:I

    .line 258
    iget-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    if-eqz p1, :cond_19

    monitor-exit p0

    return-void

    :cond_19
    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    .line 260
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2c

    .line 263
    :try_start_1d
    iget-object p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_28

    .line 269
    :catchall_23
    monitor-enter p0

    const/4 p1, 0x0

    .line 271
    :try_start_25
    iput-boolean p1, p0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->mWrapperUpdating:Z

    .line 272
    monitor-exit p0

    :goto_28
    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw p1

    :catchall_2c
    move-exception p1

    .line 260
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method
