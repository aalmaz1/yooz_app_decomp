.class Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SynchronizedCaptureSessionBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createSessionConfigurationCompat(ILjava/util/List;Landroidx/camera/camera2/internal/SynchronizedCaptureSession$StateCallback;)Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;)V
    .registers 2

    .line 196
    iput-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 207
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 208
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onActive(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 215
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 216
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onCaptureQueueEmpty(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 270
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 271
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onClosed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6

    const/4 v0, 0x0

    .line 252
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 253
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onConfigureFailed(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_30

    .line 258
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 259
    :try_start_10
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v2, "OpenCaptureSession completer should not null"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 262
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object v0, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 263
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_2d

    .line 264
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onConfigureFailed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catchall_2d
    move-exception v0

    .line 263
    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    :catchall_30
    move-exception p1

    .line 258
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_36
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v3, "OpenCaptureSession completer should not null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 262
    iget-object v3, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 263
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_53

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onConfigureFailed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 265
    throw p1

    :catchall_53
    move-exception p1

    .line 263
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6

    const/4 v0, 0x0

    .line 233
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 234
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onConfigured(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_29

    .line 239
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object p1, p1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 240
    :try_start_10
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v2, "OpenCaptureSession completer should not null"

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 243
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object v0, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 244
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_26

    .line 245
    invoke-virtual {v1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_26
    move-exception v0

    .line 244
    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :catchall_29
    move-exception p1

    .line 239
    iget-object v1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, v1, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_2f
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string v3, "OpenCaptureSession completer should not null"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v2, v2, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 243
    iget-object v3, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object v0, v3, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->mOpenCaptureSessionCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 244
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_45

    .line 245
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 246
    throw p1

    :catchall_45
    move-exception p1

    .line 244
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    .line 200
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 201
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onReady(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .registers 4

    .line 225
    iget-object v0, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->createCaptureSessionCompat(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 226
    iget-object p1, p0, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl$2;->this$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    invoke-virtual {p1, p1, p2}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->onSurfacePrepared(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
