.class Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi30Impl;
.super Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;
.source "CameraManagerCompatApi30Impl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi29Impl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
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

    .line 38
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraManagerCompatApi30Impl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getConcurrentCameraIds()Ljava/util/Set;

    move-result-object v0
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 40
    invoke-static {v0}, Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;->toCameraAccessExceptionCompat(Landroid/hardware/camera2/CameraAccessException;)Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;

    move-result-object v0

    throw v0
.end method
