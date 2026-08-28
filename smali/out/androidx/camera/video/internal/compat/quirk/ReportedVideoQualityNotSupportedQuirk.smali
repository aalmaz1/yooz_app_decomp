.class public Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;
.super Ljava/lang/Object;
.source "ReportedVideoQualityNotSupportedQuirk.java"

# interfaces
.implements Landroidx/camera/video/internal/compat/quirk/VideoQualityQuirk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHuaweiMate20()Z
    .registers 2

    const-string v0, "Huawei"

    .line 71
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "HMA-L29"

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

.method private static isHuaweiMate20Pro()Z
    .registers 2

    const-string v0, "Huawei"

    .line 75
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LYA-AL00"

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

.method private static isHuaweiP40Lite()Z
    .registers 8

    const-string v0, "Huawei"

    .line 83
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v1, "JNY-L21A"

    const-string v2, "JNY-L01A"

    const-string v3, "JNY-L21B"

    const-string v4, "JNY-L22A"

    const-string v5, "JNY-L02A"

    const-string v6, "JNY-L22B"

    const-string v7, "JNY-LX1"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method private static isVivoY91i()Z
    .registers 2

    const-string v0, "Vivo"

    .line 79
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "vivo 1820"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static load()Z
    .registers 1

    .line 67
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isVivoY91i()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method


# virtual methods
.method public isProblematicVideoQuality(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/video/Quality;)Z
    .registers 6

    .line 92
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_38

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_38

    .line 94
    :cond_f
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isVivoY91i()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 97
    sget-object p1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    if-eq p2, p1, :cond_1f

    sget-object p1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_1f
    return v1

    .line 98
    :cond_20
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 99
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getLensFacing()I

    move-result p1

    if-nez p1, :cond_35

    sget-object p1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    if-eq p2, p1, :cond_36

    sget-object p1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :cond_36
    :goto_36
    return v1

    :cond_37
    return v2

    .line 93
    :cond_38
    :goto_38
    sget-object p1, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    if-ne p2, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    return v1
.end method

.method public workaroundBySurfaceProcessing()Z
    .registers 2

    .line 108
    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiMate20Pro()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/ReportedVideoQualityNotSupportedQuirk;->isHuaweiP40Lite()Z

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
