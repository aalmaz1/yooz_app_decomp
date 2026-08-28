.class public final Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
.super Ljava/lang/Object;
.source "CameraManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;,
        Landroidx/camera/camera2/internal/compat/CameraManagerCompat$AvailabilityCallbackExecutorWrapper;
    }
.end annotation


# instance fields
.field private final mCameraCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mCameraCharacteristicsMap:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .registers 2

    .line 57
    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->from(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .registers 3

    .line 73
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-static {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->from(Landroid/content/Context;Landroid/os/Handler;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;)V

    return-object v0
.end method

.method public static from(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .registers 2

    .line 83
    new-instance v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;)V

    return-object v0
.end method


# virtual methods
.method public getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mCameraCharacteristicsMap:Ljava/util/Map;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2c

    if-nez v1, :cond_2a

    .line 188
    :try_start_d
    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    .line 189
    invoke-interface {v1, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 188
    invoke-static {v1, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->toCameraCharacteristicsCompat(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object v1

    .line 190
    iget-object v2, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_1c} :catch_1d
    .catchall {:try_start_d .. :try_end_1c} :catchall_2c

    goto :goto_2a

    :catch_1d
    move-exception p1

    .line 196
    :try_start_1e
    new-instance v1, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    .line 198
    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2712

    invoke-direct {v1, v3, v2, p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-object v1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConcurrentCameraIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 4

    .line 141
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .registers 3

    .line 158
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public unwrap()Landroid/hardware/camera2/CameraManager;
    .registers 2

    .line 243
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->mImpl:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->getCameraManager()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    return-object v0
.end method
