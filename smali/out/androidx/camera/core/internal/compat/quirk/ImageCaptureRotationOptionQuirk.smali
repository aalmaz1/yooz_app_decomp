.class public final Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;
.super Ljava/lang/Object;
.source "ImageCaptureRotationOptionQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEmulator()Z
    .registers 4

    .line 64
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "unknown"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Emulator"

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Cuttlefish"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Android SDK built for x86"

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_57
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "ranchu"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v0, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v0, 0x1

    :goto_6d
    return v0
.end method

.method private static isEmulatorAndApi21()Z
    .registers 1

    .line 60
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isEmulator()Z

    const/4 v0, 0x0

    return v0
.end method

.method private static isHonor9X()Z
    .registers 2

    const-string v0, "HONOR"

    .line 55
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "STK-LX1"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static isHuaweiMate20Lite()Z
    .registers 2

    const-string v0, "HUAWEI"

    .line 51
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "SNE-LX1"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static load()Z
    .registers 1

    .line 47
    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isHuaweiMate20Lite()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isHonor9X()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isEmulatorAndApi21()Z

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


# virtual methods
.method public isSupported(Landroidx/camera/core/impl/Config$Option;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;)Z"
        }
    .end annotation

    .line 80
    sget-object v0, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
