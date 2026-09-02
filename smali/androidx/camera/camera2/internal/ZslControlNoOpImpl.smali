.class public Landroidx/camera/camera2/internal/ZslControlNoOpImpl;
.super Ljava/lang/Object;
.source "ZslControlNoOpImpl.java"

# interfaces
.implements Landroidx/camera/camera2/internal/ZslControl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .registers 2

    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public enqueueImageToImageWriter(Landroidx/camera/core/ImageProxy;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isZslDisabledByFlashMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setZslDisabledByFlashMode(Z)V
    .registers 2

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .registers 2

    return-void
.end method
