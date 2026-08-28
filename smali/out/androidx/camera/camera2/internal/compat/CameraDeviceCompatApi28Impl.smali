.class Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;
.super Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;
.source "CameraDeviceCompatApi28Impl.java"


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 32
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi24Impl;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createCaptureSession(Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/params/SessionConfigurationCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 39
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :try_start_9
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompatApi28Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p1

    .line 44
    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    move-result-object p1

    throw p1
.end method
