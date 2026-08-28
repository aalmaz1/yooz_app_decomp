.class public Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;
.super Ljava/lang/Object;
.source "ExifRotationAvailability.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRotationOptionSupported()Z
    .registers 3

    .line 41
    const-class v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 42
    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    if-eqz v0, :cond_15

    .line 43
    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isSupported(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z
    .registers 3

    .line 56
    invoke-virtual {p0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result p1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
