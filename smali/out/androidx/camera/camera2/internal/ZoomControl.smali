.class final Landroidx/camera/camera2/internal/ZoomControl;
.super Ljava/lang/Object;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_ZOOM_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ZoomControl"


# instance fields
.field private final mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field private mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

.field private final mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mIsActive:Z

.field final mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

.field private final mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    .line 181
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/ZoomControl$1;-><init>(Landroidx/camera/camera2/internal/ZoomControl;)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    .line 96
    iput-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    .line 97
    iput-object p3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    invoke-static {p2}, Landroidx/camera/camera2/internal/ZoomControl;->createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    .line 99
    new-instance p3, Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-interface {p2}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMaxZoom()F

    move-result v0

    invoke-interface {p2}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMinZoom()F

    move-result p2

    invoke-direct {p3, v0, p2}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    iput-object p3, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 101
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 103
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCaptureResultListener:Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->addCaptureResultListener(Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;)V

    return-void
.end method

.method private static createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;
    .registers 2

    .line 115
    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->isAndroidRZoomSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 116
    new-instance v0, Landroidx/camera/camera2/internal/AndroidRZoomImpl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/AndroidRZoomImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    return-object v0

    .line 118
    :cond_c
    new-instance v0, Landroidx/camera/camera2/internal/CropRegionZoomImpl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/CropRegionZoomImpl;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    return-object v0
.end method

.method static getDefaultZoomState(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/ZoomState;
    .registers 3

    .line 107
    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->createZoomImpl(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    move-result-object p0

    .line 108
    new-instance v0, Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-interface {p0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMaxZoom()F

    move-result v1

    invoke-interface {p0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getMinZoom()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/internal/ZoomStateImpl;-><init>(FF)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {v0, p0}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 110
    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p0

    return-object p0
.end method

.method private static getZoomRatioRange(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 132
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;
    :try_end_8
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string v0, "ZoomControl"

    const-string v1, "AssertionError, fail to get camera characteristic."

    .line 136
    invoke-static {v0, v1, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static isAndroidRZoomSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .registers 3

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Landroidx/camera/camera2/internal/ZoomControl;->getZoomRatioRange(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;",
            "Landroidx/camera/core/ZoomState;",
            ")V"
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-nez v0, :cond_26

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    monitor-enter v0

    .line 239
    :try_start_7
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 240
    iget-object p2, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p2}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p2

    .line 241
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_23

    .line 242
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 243
    new-instance p2, Landroidx/camera/core/CameraControl$OperationCanceledException;

    const-string v0, "Camera is not active."

    invoke-direct {p2, v0}, Landroidx/camera/core/CameraControl$OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void

    :catchall_23
    move-exception p1

    .line 241
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1

    .line 247
    :cond_26
    invoke-direct {p0, p2}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 249
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    invoke-interface {p2}, Landroidx/camera/core/ZoomState;->getZoomRatio()F

    move-result p2

    invoke-interface {v0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->setZoomRatio(FLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    .line 250
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    return-void
.end method

.method private updateLiveData(Landroidx/camera/core/ZoomState;)V
    .registers 4

    .line 294
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 295
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_15

    .line 297
    :cond_10
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_15
    return-void
.end method


# virtual methods
.method addZoomOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V
    .registers 3

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->addRequestOption(Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;)V

    return-void
.end method

.method getCropSensorRegion()Landroid/graphics/Rect;
    .registers 2

    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->getCropSensorRegion()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getZoomState()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/camera/core/ZoomState;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomStateLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method synthetic lambda$setLinearZoom$2$androidx-camera-camera2-internal-ZoomControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .registers 3

    .line 288
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method synthetic lambda$setLinearZoom$3$androidx-camera-camera2-internal-ZoomControl(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setLinearZoom"

    return-object p1
.end method

.method synthetic lambda$setZoomRatio$0$androidx-camera-camera2-internal-ZoomControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V
    .registers 3

    .line 223
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/internal/ZoomControl;->submitCameraZoomRatio(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    return-void
.end method

.method synthetic lambda$setZoomRatio$1$androidx-camera-camera2-internal-ZoomControl(Landroidx/camera/core/ZoomState;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/ZoomState;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "setZoomRatio"

    return-object p1
.end method

.method setActive(Z)V
    .registers 4

    .line 161
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 165
    :cond_5
    iput-boolean p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mIsActive:Z

    if-nez p1, :cond_2b

    .line 170
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    monitor-enter p1

    .line 171
    :try_start_c
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 172
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {v0}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object v0

    .line 173
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_28

    .line 174
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 176
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mZoomImpl:Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;

    invoke-interface {p1}, Landroidx/camera/camera2/internal/ZoomControl$ZoomImpl;->resetZoom()V

    .line 177
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCamera2CameraControlImpl:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->updateSessionConfigSynchronous()J

    goto :goto_2b

    :catchall_28
    move-exception v0

    .line 173
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :goto_2b
    return-void
.end method

.method setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setLinearZoom(F)V

    .line 279
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_e} :catch_1e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    .line 283
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_1c

    .line 285
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 287
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_1c
    move-exception p1

    goto :goto_25

    :catch_1e
    move-exception p1

    .line 281
    :try_start_1f
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 283
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    throw p1
.end method

.method setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/internal/ZoomStateImpl;->setZoomRatio(F)V

    .line 214
    iget-object p1, p0, Landroidx/camera/camera2/internal/ZoomControl;->mCurrentZoomState:Landroidx/camera/camera2/internal/ZoomStateImpl;

    invoke-static {p1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(Landroidx/camera/core/ZoomState;)Landroidx/camera/core/ZoomState;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_e} :catch_1e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    .line 218
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_1c

    .line 220
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/ZoomControl;->updateLiveData(Landroidx/camera/core/ZoomState;)V

    .line 222
    new-instance v0, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/internal/ZoomControl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/internal/ZoomControl;Landroidx/camera/core/ZoomState;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_1c
    move-exception p1

    goto :goto_25

    :catch_1e
    move-exception p1

    .line 216
    :try_start_1f
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 218
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    throw p1
.end method
