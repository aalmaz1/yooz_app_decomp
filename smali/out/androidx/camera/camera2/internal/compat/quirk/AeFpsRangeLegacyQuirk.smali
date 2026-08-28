.class public Landroidx/camera/camera2/internal/compat/quirk/AeFpsRangeLegacyQuirk;
.super Ljava/lang/Object;
.source "AeFpsRangeLegacyQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# instance fields
.field private final mAeFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    .line 55
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/quirk/AeFpsRangeLegacyQuirk;->pickSuitableFpsRange([Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/quirk/AeFpsRangeLegacyQuirk;->mAeFpsRange:Landroid/util/Range;

    return-void
.end method

.method private getCorrectedFpsRange(Landroid/util/Range;)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_2d

    .line 112
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v3

    .line 115
    :cond_2d
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v3, :cond_45

    .line 116
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit16 v1, p1, 0x3e8

    .line 119
    :cond_45
    new-instance p1, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method static load(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z
    .registers 2

    .line 59
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_13

    .line 61
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private pickSuitableFpsRange([Landroid/util/Range;)Landroid/util/Range;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 79
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_3d

    .line 84
    :cond_7
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_3d

    aget-object v3, p1, v2

    .line 85
    invoke-direct {p0, v3}, Landroidx/camera/camera2/internal/compat/quirk/AeFpsRangeLegacyQuirk;->getCorrectedFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_20

    goto :goto_3a

    :cond_20
    if-nez v0, :cond_23

    goto :goto_39

    .line 93
    :cond_23
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_3a

    :goto_39
    move-object v0, v3

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3d
    :goto_3d
    return-object v0
.end method


# virtual methods
.method public getRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/quirk/AeFpsRangeLegacyQuirk;->mAeFpsRange:Landroid/util/Range;

    return-object v0
.end method
