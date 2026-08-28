.class final Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
.super Ljava/lang/Object;
.source "SupportedSurfaceCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;,
        Landroidx/camera/camera2/internal/SupportedSurfaceCombination$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportedSurfaceCombination"


# instance fields
.field private final mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

.field private final mCameraId:Ljava/lang/String;

.field private final mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

.field private final mConcurrentSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

.field private final mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

.field private final mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

.field private final mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHardwareLevel:I

.field private mIsBurstCaptureSupported:Z

.field private mIsConcurrentCameraModeSupported:Z

.field private mIsRawSupported:Z

.field private mIsStreamUseCaseSupported:Z

.field private mIsUltraHighResolutionSensorSupported:Z

.field private final mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

.field private final mSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinations10Bit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceCombinationsStreamUseCase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field

.field mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

.field mSurfaceSizeDefinitionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

.field private final mUltraHighSurfaceCombinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Landroidx/camera/camera2/internal/CamcorderProfileHelper;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraUnavailableException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    .line 111
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 112
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    .line 113
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    .line 114
    iput-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    .line 121
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    .line 122
    new-instance v1, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    invoke-direct {v1}, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    .line 133
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    .line 134
    invoke-static {p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    .line 135
    new-instance p4, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    invoke-direct {p4}, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;-><init>()V

    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    .line 137
    invoke-static {p1}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/internal/DisplayInfoManager;

    move-result-object p4

    iput-object p4, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    .line 140
    :try_start_6a
    invoke-virtual {p3, p2}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->getCameraCharacteristicsCompat(Ljava/lang/String;)Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 141
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_7f

    .line 143
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_80

    :cond_7f
    const/4 p3, 0x2

    .line 144
    :goto_80
    iput p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I
    :try_end_82
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_6a .. :try_end_82} :catch_ee

    .line 149
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 150
    invoke-virtual {p2, p3}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    if-eqz p2, :cond_ad

    .line 153
    array-length p3, p2

    :goto_8d
    if-ge v0, p3, :cond_ad

    aget p4, p2, v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p4, v1, :cond_98

    .line 155
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    goto :goto_aa

    :cond_98
    const/4 v1, 0x6

    if-ne p4, v1, :cond_9e

    .line 158
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    goto :goto_aa

    .line 159
    :cond_9e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_aa

    const/16 v1, 0x10

    if-ne p4, v1, :cond_aa

    .line 162
    iput-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    :cond_aa
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 167
    :cond_ad
    new-instance p2, Landroidx/camera/camera2/internal/DynamicRangeResolver;

    iget-object p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-direct {p2, p3}, Landroidx/camera/camera2/internal/DynamicRangeResolver;-><init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V

    iput-object p2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 168
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSupportedCombinationList()V

    .line 170
    iget-boolean p3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    if-eqz p3, :cond_c0

    .line 171
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateUltraHighSupportedCombinationList()V

    .line 175
    :cond_c0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.camera.concurrent"

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    if-eqz p1, :cond_d1

    .line 177
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateConcurrentSupportedCombinationList()V

    .line 180
    :cond_d1
    invoke-virtual {p2}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->is10BitDynamicRangeSupported()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 181
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generate10BitSupportedCombinationList()V

    .line 184
    :cond_da
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->isStreamUseCaseSupported(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    if-eqz p1, :cond_e7

    .line 186
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateStreamUseCaseSupportedCombinationList()V

    .line 189
    :cond_e7
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    .line 190
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkCustomization()V

    return-void

    :catch_ee
    move-exception p1

    .line 146
    invoke-static {p1}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->createFrom(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object p1

    throw p1
.end method

.method private checkCustomization()V
    .registers 1

    return-void
.end method

.method private static compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 361
    invoke-virtual {p1, p0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v0

    int-to-double v0, v0

    .line 362
    invoke-virtual {p2, p0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p0

    invoke-static {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p0

    int-to-double v2, p0

    .line 364
    invoke-static {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p0

    int-to-double v4, p0

    div-double v4, v2, v4

    .line 365
    invoke-static {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result p0

    int-to-double v6, p0

    div-double v6, v0, v6

    cmpl-double p0, v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-lez p0, :cond_2f

    cmpl-double p0, v4, v0

    if-gez p0, :cond_2e

    cmpl-double p0, v4, v6

    if-ltz p0, :cond_58

    :cond_2e
    return-object p2

    :cond_2f
    if-nez p0, :cond_4f

    cmpl-double p0, v4, v6

    if-lez p0, :cond_36

    return-object p2

    :cond_36
    if-nez p0, :cond_58

    .line 379
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p0, v0, :cond_58

    return-object p2

    :cond_4f
    cmpg-double p0, v6, v0

    if-gez p0, :cond_58

    cmpl-double p0, v4, v6

    if-lez p0, :cond_58

    return-object p2

    :cond_58
    return-object p1
.end method

.method private createFeatureSettings(ILjava/util/Map;)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;)",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;"
        }
    .end annotation

    .line 806
    invoke-static {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRequiredMaxBitDepth(Ljava/util/Map;)I

    move-result p2

    if-eqz p1, :cond_26

    const/16 v0, 0xa

    if-eq p2, v0, :cond_b

    goto :goto_26

    .line 810
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 813
    invoke-static {p1}, Landroidx/camera/core/impl/CameraMode;->toLabelString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Camera device id is %s. 10 bit dynamic range is not currently supported in %s camera mode."

    .line 810
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 816
    :cond_26
    :goto_26
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->of(II)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;

    move-result-object p1

    return-object p1
.end method

.method private filterSupportedSizes(Ljava/util/Map;Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Range;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 923
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 925
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 926
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 927
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 929
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 930
    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v7

    .line 932
    invoke-virtual {p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v8

    .line 933
    invoke-virtual {p0, v7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v9

    .line 931
    invoke-static {v8, v7, v6, v9}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    .line 933
    invoke-virtual {v8}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigSize()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object v8

    if-eqz p3, :cond_56

    .line 937
    iget-object v9, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {v9, v7, v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I

    move-result v7

    goto :goto_59

    :cond_56
    const v7, 0x7fffffff

    .line 939
    :goto_59
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    if-nez v9, :cond_69

    .line 942
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 943
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    :cond_69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 972
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 976
    :cond_7e
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_82
    return-object v0
.end method

.method private generate10BitSupportedCombinationList()V
    .registers 3

    .line 1247
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    .line 1248
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->get10BitSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    .line 1247
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private generateConcurrentSupportedCombinationList()V
    .registers 3

    .line 1242
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    .line 1243
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getConcurrentSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    .line 1242
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private generateStreamUseCaseSupportedCombinationList()V
    .registers 3

    .line 1252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_f

    .line 1253
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    .line 1254
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getStreamUseCaseSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    .line 1253
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-void
.end method

.method private generateSupportedCombinationList()V
    .registers 5

    .line 1228
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    iget v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    iget-boolean v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    iget-boolean v3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    .line 1229
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->generateSupportedCombinationList(IZZ)Ljava/util/List;

    move-result-object v1

    .line 1228
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1232
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mExtraSupportedSurfaceCombinationsContainer:Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;

    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    iget v3, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    .line 1233
    invoke-virtual {v1, v2, v3}, Landroidx/camera/camera2/internal/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;->get(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1232
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private generateSurfaceSizeDefinition()V
    .registers 9

    .line 1266
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 1267
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    .line 1268
    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_VGA:Landroid/util/Size;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    return-void
.end method

.method private generateUltraHighSupportedCombinationList()V
    .registers 3

    .line 1237
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    .line 1238
    invoke-static {}, Landroidx/camera/camera2/internal/GuaranteedConfigurationsUtil;->getUltraHighResolutionSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    .line 1237
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1135
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    goto :goto_6

    :cond_18
    if-eqz v2, :cond_7c

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_2e

    .line 1149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1162
    :cond_2e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v2, v4

    move v6, v2

    move v5, v3

    .line 1164
    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7b

    .line 1165
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move v8, v3

    :goto_49
    if-ge v8, v2, :cond_60

    .line 1167
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1169
    rem-int v10, v8, v6

    div-int/2addr v10, v4

    .line 1170
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Size;

    .line 1169
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 1173
    :cond_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v5, v7, :cond_78

    add-int/lit8 v6, v5, 0x1

    .line 1176
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v4, v6

    move v11, v6

    move v6, v4

    move v4, v11

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_7b
    return-object v0

    .line 1142
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to find supported resolutions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getClosestSupportedDeviceFrameRate(Landroid/util/Range;I)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 405
    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    return-object p1

    .line 409
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 410
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-nez v0, :cond_14

    .line 413
    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    return-object p1

    .line 420
    :cond_14
    new-instance v1, Landroid/util/Range;

    .line 421
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 422
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 425
    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 429
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_42
    if-ge v3, v2, :cond_bb

    aget-object v5, v0, v3

    .line 431
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt p2, v6, :cond_b8

    .line 432
    sget-object v6, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p1, v6}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    move-object p1, v5

    .line 436
    :cond_5b
    invoke-virtual {v5, v1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    move-object p1, v5

    goto :goto_bb

    .line 443
    :cond_63
    :try_start_63
    invoke-virtual {v5, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 444
    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v6

    if-nez v4, :cond_6f

    move v4, v6

    goto :goto_b7

    :cond_6f
    if-lt v6, v4, :cond_7d

    .line 452
    invoke-static {v1, p1, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->compareIntersectingRanges(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1

    .line 454
    invoke-virtual {v1, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-static {v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v4
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_7d} :catch_7f

    :cond_7d
    move-object v5, p1

    goto :goto_b7

    :catch_7f
    if-nez v4, :cond_b8

    .line 459
    invoke-static {v5, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    .line 460
    invoke-static {p1, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v7

    if-ge v6, v7, :cond_8c

    goto :goto_b7

    .line 462
    :cond_8c
    invoke-static {v5, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v6

    .line 463
    invoke-static {p1, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I

    move-result v7

    if-ne v6, v7, :cond_b8

    .line 464
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_ad

    goto :goto_b7

    .line 467
    :cond_ad
    invoke-static {v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v6

    invoke-static {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRangeLength(Landroid/util/Range;)I

    move-result v7

    if-ge v6, v7, :cond_b8

    :goto_b7
    move-object p1, v5

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_bb
    :goto_bb
    return-object p1
.end method

.method static getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I
    .registers 5

    .line 311
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 312
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 313
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_15

    long-to-double p0, p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p0

    double-to-int p0, v0

    goto :goto_16

    :catch_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;
    .registers 7

    const/16 v0, 0x22

    if-ne p2, v0, :cond_b

    .line 1200
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    goto :goto_f

    .line 1202
    :cond_b
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    :goto_f
    if-eqz v0, :cond_50

    .line 1205
    array-length v1, v0

    if-nez v1, :cond_15

    goto :goto_50

    .line 1209
    :cond_15
    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v1}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 1210
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 1213
    sget-object v2, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_ZERO:Landroid/util/Size;

    if-eqz p3, :cond_3c

    .line 1215
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$Api23Impl;->getHighResolutionOutputSizes(Landroid/hardware/camera2/params/StreamConfigurationMap;I)[Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 1218
    array-length p2, p1

    if-lez p2, :cond_3c

    .line 1219
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/util/Size;

    :cond_3c
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/util/Size;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object v2, p1, p2

    .line 1224
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1

    :cond_50
    :goto_50
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;)I"
        }
    .end annotation

    .line 901
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 905
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getImageFormat()I

    move-result v2

    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 903
    invoke-direct {p0, v0, v2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedMaximumFps(IILandroid/util/Size;)I

    move-result v0

    goto :goto_7

    :cond_20
    return v0
.end method

.method private static getRangeDistance(Landroid/util/Range;Landroid/util/Range;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 338
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "Ranges must not intersect"

    .line 336
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_4c

    .line 341
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 343
    :cond_4c
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static getRangeLength(Landroid/util/Range;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getRecordSize()Landroid/util/Size;
    .registers 4

    .line 1380
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_28

    .line 1389
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1390
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, v0, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_23

    .line 1394
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 1397
    :cond_23
    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSizeByHasProfile(I)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 1384
    :catch_28
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method private getRecordSizeByHasProfile(I)Landroid/util/Size;
    .registers 5

    .line 1439
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    .line 1444
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/16 v2, 0xa

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1445
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    .line 1446
    :cond_13
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/16 v2, 0x8

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1447
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    .line 1448
    :cond_24
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/16 v2, 0xc

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1449
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    .line 1450
    :cond_35
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v2, 0x6

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1451
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    .line 1452
    :cond_45
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v2, 0x5

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1453
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    .line 1454
    :cond_55
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    const/4 v2, 0x4

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1455
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCamcorderProfileHelper:Landroidx/camera/camera2/internal/CamcorderProfileHelper;

    invoke-interface {v1, p1, v2}, Landroidx/camera/camera2/internal/CamcorderProfileHelper;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    if-eqz p1, :cond_71

    .line 1459
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    :cond_71
    return-object v0
.end method

.method private getRecordSizeFromStreamConfigurationMap()Landroid/util/Size;
    .registers 7

    .line 1410
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    move-result-object v0

    .line 1411
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1415
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    return-object v0

    .line 1418
    :cond_15
    new-instance v1, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1420
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_40

    aget-object v3, v0, v2

    .line 1422
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_3d

    .line 1423
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1080P:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_3d

    return-object v3

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1428
    :cond_40
    sget-object v0, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_480P:Landroid/util/Size;

    return-object v0
.end method

.method private static getRequiredMaxBitDepth(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/DynamicRange;",
            ">;)I"
        }
    .end annotation

    .line 1087
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/DynamicRange;

    .line 1088
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    return v1

    :cond_1d
    const/16 p0, 0x8

    return p0
.end method

.method private getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 257
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 260
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3c

    .line 263
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_39

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2e

    .line 272
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4f

    .line 268
    :cond_2e
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mUltraHighSurfaceCombinations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4f

    .line 265
    :cond_39
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mConcurrentSurfaceCombinations:Ljava/util/List;

    goto :goto_4f

    .line 275
    :cond_3c
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getRequiredMaxBitDepth()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4f

    .line 277
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_4f

    .line 278
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinations10Bit:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_4f
    :goto_4f
    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mFeatureSettingsToSupportedCombinationsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 990
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 991
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_9

    .line 993
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2c
    const/4 p2, 0x0

    .line 999
    :goto_2d
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p7

    if-ge p2, p7, :cond_72

    .line 1000
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/util/Size;

    .line 1002
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1003
    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v2

    .line 1009
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    .line 1005
    invoke-static {p1, v2, p7, v3}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 1010
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p8, :cond_67

    .line 1012
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :cond_67
    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v1

    .line 1016
    invoke-direct {p0, p6, v1, p7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedMaximumFps(IILandroid/util/Size;)I

    move-result p6

    add-int/lit8 p2, p2, 0x1

    goto :goto_2d

    .line 1021
    :cond_72
    new-instance p1, Landroid/util/Pair;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Range;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 879
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 882
    invoke-virtual {v2}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getTargetFrameRate()Landroid/util/Range;

    move-result-object v2

    .line 881
    invoke-direct {p0, v2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    goto :goto_6

    .line 887
    :cond_1b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 890
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/core/impl/UseCaseConfig;

    invoke-interface {p3, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p3

    .line 889
    invoke-direct {p0, p3, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    goto :goto_1f

    :cond_3e
    return-object v1
.end method

.method private getUpdatedMaximumFps(IILandroid/util/Size;)I
    .registers 5

    .line 516
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {v0, p2, p3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxFrameRate(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;ILandroid/util/Size;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getUpdatedTargetFramerate(Landroid/util/Range;Landroid/util/Range;)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_3

    goto :goto_b

    :cond_3
    if-eqz p1, :cond_a

    .line 501
    :try_start_5
    invoke-virtual {p2, p1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    :cond_a
    move-object p1, p2

    :goto_b
    return-object p1
.end method

.method private getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1108
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v3

    .line 1109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1114
    :cond_31
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1117
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4f
    :goto_4f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 1121
    invoke-interface {v5, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority(I)I

    move-result v6

    if-ne v2, v6, :cond_4f

    .line 1122
    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_6d
    return-object v0
.end method

.method private isUseCasesCombinationSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)Z"
        }
    .end annotation

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/AttachedSurfaceInfo;

    .line 849
    invoke-virtual {v1}, Landroidx/camera/core/impl/AttachedSurfaceInfo;->getSurfaceConfig()Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 854
    :cond_1d
    new-instance p2, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {p2}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    .line 855
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/UseCaseConfig;

    .line 856
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_46

    .line 857
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    :goto_47
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No available output size is found for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 859
    invoke-static {v3, p2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 860
    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v2

    .line 863
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;->getCameraMode()I

    move-result v4

    .line 866
    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v5

    .line 862
    invoke-static {v4, v2, v3, v5}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 861
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 869
    :cond_79
    invoke-virtual {p0, p1, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method private refreshPreviewSize()V
    .registers 9

    .line 1355
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->refresh()V

    .line 1356
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    if-nez v0, :cond_d

    .line 1357
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->generateSurfaceSizeDefinition()V

    goto :goto_3d

    .line 1359
    :cond_d
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDisplayInfoManager:Landroidx/camera/camera2/internal/DisplayInfoManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/DisplayInfoManager;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 1360
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1361
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getAnalysisSize()Landroid/util/Size;

    move-result-object v1

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1362
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1364
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1365
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getRecordSize()Landroid/util/Size;

    move-result-object v5

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1366
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    .line 1367
    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object v7

    .line 1360
    invoke-static/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->create(Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Landroid/util/Size;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    :goto_3d
    return-void
.end method

.method private updateMaximumSizeByFormat(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    .line 1327
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 1328
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/4 v1, 0x1

    .line 1329
    invoke-direct {p0, v0, p2, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method private updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            "I)V"
        }
    .end annotation

    .line 1311
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsConcurrentCameraModeSupported:Z

    if-nez v0, :cond_5

    return-void

    .line 1315
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    .line 1316
    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->getStreamConfigurationMapCompat()Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/compat/StreamConfigurationMapCompat;->toStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1317
    invoke-direct {p0, v0, p3, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    move-result-object v0

    .line 1318
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-nez v0, :cond_1b

    goto :goto_32

    :cond_1b
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Size;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object v0, v2, p2

    .line 1319
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Landroidx/camera/core/impl/utils/CompareSizesByArea;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/CompareSizesByArea;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    .line 1318
    :goto_32
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;I)V"
        }
    .end annotation

    .line 1340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_24

    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsUltraHighResolutionSensorSupported:Z

    if-nez v0, :cond_b

    goto :goto_24

    .line 1344
    :cond_b
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_18

    return-void

    .line 1351
    :cond_18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxOutputSizeByFormat(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)Landroid/util/Size;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mTargetAspectRatio:Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;

    iget-object v1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/compat/workaround/TargetAspectRatio;->get(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)I

    move-result v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_32

    :cond_14
    const/16 v0, 0x100

    .line 1052
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v1

    .line 1053
    invoke-virtual {v1, v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1054
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V

    move-object v0, v1

    goto :goto_32

    .line 1049
    :cond_2d
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    goto :goto_32

    .line 1046
    :cond_30
    sget-object v0, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    :goto_32
    if-nez v0, :cond_35

    goto :goto_62

    .line 1065
    :cond_35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 1069
    invoke-static {v3, v0}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1070
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1072
    :cond_59
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_5d
    const/4 p1, 0x0

    .line 1075
    invoke-interface {v2, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-object p1, v2

    .line 1079
    :goto_62
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mResolutionCorrector:Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;

    .line 1080
    invoke-static {p2}, Landroidx/camera/core/impl/SurfaceConfig;->getConfigType(I)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-result-object p2

    .line 1079
    invoke-virtual {v0, p2, p1}, Landroidx/camera/camera2/internal/compat/workaround/ResolutionCorrector;->insertOrPrioritize(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)Z"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceCombinationsByFeatureSettings(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 221
    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    if-eqz v1, :cond_a

    :cond_21
    return v1
.end method

.method getCameraId()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceConfig;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->shouldUseStreamUseCase(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 240
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceCombinationsStreamUseCase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SurfaceCombination;

    .line 242
    invoke-virtual {v1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->getOrderedSupportedSurfaceConfigList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    return-object v1

    :cond_21
    return-object v0
.end method

.method getSuggestedStreamSpecifications(ILjava/util/List;Ljava/util/Map;)Landroid/util/Pair;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    .line 543
    invoke-direct/range {p0 .. p0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->refreshPreviewSize()V

    .line 545
    new-instance v11, Ljava/util/ArrayList;

    .line 546
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 549
    invoke-direct {v9, v11}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUseCasesPriorityOrder(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 550
    iget-object v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mDynamicRangeResolver:Landroidx/camera/camera2/internal/DynamicRangeResolver;

    .line 551
    invoke-virtual {v1, v10, v11, v12}, Landroidx/camera/camera2/internal/DynamicRangeResolver;->resolveAndValidateDynamicRanges(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    move/from16 v14, p1

    .line 554
    invoke-direct {v9, v14, v13}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->createFeatureSettings(ILjava/util/Map;)Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;

    move-result-object v15

    .line 556
    invoke-direct {v9, v15, v10, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->isUseCasesCombinationSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;)Z

    move-result v16

    const-string v8, ".  May be attempting to bind too many use cases. Existing surfaces: "

    const-string v7, " New configs: "

    const-string v6, "No supported surface combination is found for camera device - Id : "

    if-eqz v16, :cond_313

    .line 568
    invoke-direct {v9, v10, v11, v12}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getTargetFpsRange(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Range;

    move-result-object v5

    .line 573
    invoke-direct {v9, v0, v15, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->filterSupportedSizes(Ljava/util/Map;Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Landroid/util/Range;)Ljava/util/Map;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 580
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 581
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 584
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getInputFormat()I

    move-result v3

    .line 583
    invoke-virtual {v9, v4, v3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->applyResolutionSelectionOrderRelatedWorkarounds(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 585
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 590
    :cond_67
    invoke-direct {v9, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getAllPossibleSizeArrangements(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 593
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 594
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 601
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 611
    invoke-static {v10, v11}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->containsZslUseCase(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 614
    invoke-direct {v9, v10}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getMaxSupportedFpsFromAttachedSurfaces(Ljava/util/List;)I

    move-result v14

    move-object/from16 p3, v1

    .line 616
    iget-boolean v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsStreamUseCaseSupported:Z

    const/16 v18, 0x0

    if-eqz v1, :cond_146

    if-nez v0, :cond_146

    .line 618
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v0, v18

    :goto_97
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v21, p3

    move/from16 v1, p1

    move-object/from16 p3, v2

    move-object/from16 v2, p2

    move-object/from16 v22, v3

    move-object/from16 v3, v20

    move-object/from16 v23, v4

    move-object v4, v11

    move-object/from16 v20, v13

    move-object v13, v5

    move-object v5, v12

    move-object/from16 v24, v13

    move-object v13, v6

    move v6, v14

    move/from16 v25, v14

    move-object v14, v7

    move-object/from16 v7, p3

    move-object/from16 v26, v12

    move-object v12, v8

    move-object/from16 v8, v21

    .line 619
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 626
    invoke-virtual {v9, v15, v0}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v8, p3

    move-object/from16 v7, v21

    if-eqz v0, :cond_e2

    .line 629
    invoke-static {v8, v7, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areCaptureTypesEligible(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_e2

    move-object/from16 v0, v18

    :cond_e2
    if-eqz v0, :cond_ef

    .line 636
    iget-object v1, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {v1, v0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->areStreamUseCasesAvailableForSurfaceConfigs(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_ed

    goto :goto_11a

    :cond_ed
    move-object/from16 v0, v18

    .line 643
    :cond_ef
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 644
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    move-object/from16 p3, v7

    move-object v2, v8

    move-object v8, v12

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v13, v20

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v14, v25

    move-object/from16 v12, v26

    goto :goto_97

    :cond_108
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v12

    move-object/from16 v20, v13

    move/from16 v25, v14

    move-object v13, v6

    move-object v14, v7

    move-object v12, v8

    move-object/from16 v7, p3

    move-object v8, v2

    :goto_11a
    if-nez v0, :cond_144

    if-eqz v16, :cond_11f

    goto :goto_144

    .line 651
    :cond_11f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_144
    :goto_144
    move-object v12, v0

    goto :goto_159

    :cond_146
    move-object v8, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v12

    move-object/from16 v20, v13

    move/from16 v25, v14

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v7, p3

    move-object/from16 v12, v18

    .line 663
    :goto_159
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const v6, 0x7fffffff

    const/16 v17, 0x0

    move v4, v6

    move v5, v4

    move/from16 v19, v17

    move/from16 v21, v19

    move-object/from16 v27, v18

    move-object/from16 v28, v27

    :goto_16c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v29, 0x1

    if-eqz v0, :cond_223

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/List;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v30

    move/from16 v33, v4

    move-object v4, v11

    move/from16 v34, v5

    move-object/from16 v5, v26

    move/from16 v6, v25

    move-object/from16 p3, v14

    move-object v14, v7

    move-object/from16 v7, v31

    move-object/from16 v31, v13

    move-object v13, v8

    move-object/from16 v8, v32

    .line 666
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getSurfaceConfigListAndFpsCeiling(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/Map;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 669
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 670
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v25

    if-eqz v24, :cond_1c0

    if-le v0, v5, :cond_1c0

    .line 674
    invoke-virtual/range {v24 .. v24}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v5, v2, :cond_1c0

    move/from16 v2, v17

    goto :goto_1c2

    :cond_1c0
    move/from16 v2, v29

    :goto_1c2
    if-nez v19, :cond_1e9

    .line 687
    invoke-virtual {v9, v15, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1e9

    move/from16 v6, v34

    const v3, 0x7fffffff

    if-ne v6, v3, :cond_1d2

    goto :goto_1d4

    :cond_1d2
    if-ge v6, v5, :cond_1d7

    :goto_1d4
    move v6, v5

    move-object/from16 v27, v30

    :cond_1d7
    if-eqz v2, :cond_1ee

    if-eqz v21, :cond_1e3

    move-object/from16 v1, v28

    move-object/from16 v0, v30

    move/from16 v4, v33

    goto/16 :goto_22f

    :cond_1e3
    move v6, v5

    move/from16 v19, v29

    move-object/from16 v27, v30

    goto :goto_1ee

    :cond_1e9
    move/from16 v6, v34

    const v3, 0x7fffffff

    :cond_1ee
    :goto_1ee
    if-eqz v12, :cond_214

    if-nez v21, :cond_214

    .line 715
    invoke-virtual {v9, v15, v1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getOrderedSupportedStreamUseCaseSurfaceConfigList(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_214

    move/from16 v1, v33

    if-ne v1, v3, :cond_1fd

    goto :goto_1ff

    :cond_1fd
    if-ge v1, v5, :cond_203

    :goto_1ff
    move v4, v5

    move-object/from16 v28, v30

    goto :goto_204

    :cond_203
    move v4, v1

    :goto_204
    if-eqz v2, :cond_217

    move v4, v5

    if-eqz v19, :cond_20f

    move v5, v6

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    goto :goto_22f

    :cond_20f
    move/from16 v21, v29

    move-object/from16 v28, v30

    goto :goto_217

    :cond_214
    move/from16 v1, v33

    move v4, v1

    :cond_217
    :goto_217
    move/from16 v25, v0

    move v5, v6

    move-object v8, v13

    move-object v7, v14

    move-object/from16 v13, v31

    move-object/from16 v14, p3

    move v6, v3

    goto/16 :goto_16c

    :cond_223
    move v1, v4

    move v6, v5

    move-object/from16 v31, v13

    move-object/from16 p3, v14

    move-object v14, v7

    move-object v13, v8

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    :goto_22f
    if-eqz v0, :cond_2dc

    if-eqz v24, :cond_239

    move-object/from16 v2, v24

    .line 741
    invoke-direct {v9, v2, v5}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getClosestSupportedDeviceFrameRate(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v18

    :cond_239
    move-object/from16 v2, v18

    .line 744
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_296

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 746
    invoke-interface {v11, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v8, v26

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 745
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 747
    invoke-static {v7}, Landroidx/camera/core/impl/StreamSpec;->builder(Landroid/util/Size;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v7

    move-object/from16 v15, v20

    .line 749
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/camera/core/DynamicRange;

    .line 748
    invoke-static/range {v16 .. v16}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v3

    move-object/from16 v3, v16

    check-cast v3, Landroidx/camera/core/DynamicRange;

    invoke-virtual {v7, v3}, Landroidx/camera/core/impl/StreamSpec$Builder;->setDynamicRange(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v3

    .line 751
    invoke-static {v6}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->getStreamSpecImplementationOptions(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v7

    .line 750
    invoke-virtual {v3, v7}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    move-result-object v3

    if-eqz v2, :cond_286

    .line 754
    invoke-virtual {v3, v2}, Landroidx/camera/core/impl/StreamSpec$Builder;->setExpectedFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 756
    :cond_286
    invoke-virtual {v3}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    move-result-object v3

    move-object/from16 v7, v22

    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    move-object/from16 v26, v8

    move-object/from16 v20, v15

    goto :goto_23f

    :cond_296
    move-object/from16 v7, v22

    if-eqz v12, :cond_2d4

    if-ne v5, v4, :cond_2d4

    .line 770
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2d4

    move/from16 v2, v17

    .line 772
    :goto_2a8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c4

    .line 773
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c1

    move/from16 v17, v29

    goto :goto_2c4

    :cond_2c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a8

    :cond_2c4
    :goto_2c4
    if-nez v17, :cond_2d4

    .line 779
    iget-object v0, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCharacteristics:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    move-object/from16 v1, v23

    .line 780
    invoke-static {v0, v10, v7, v1}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithInteropOverride(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2d6

    .line 785
    invoke-static {v7, v1, v13, v14, v12}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_2d6

    :cond_2d4
    move-object/from16 v1, v23

    .line 793
    :cond_2d6
    :goto_2d6
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 759
    :cond_2dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and Hardware level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mHardwareLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". May be the specified resolution is too large and not supported. Existing surfaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_313
    move-object v2, v6

    move-object v3, v7

    move-object v12, v8

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;
    .registers 4

    .line 1283
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1284
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS720pSizeMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_720P:Landroid/util/Size;

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 1286
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getS1440pSizeMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_1440P:Landroid/util/Size;

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateS720pOrS1440pSizeByFormat(Ljava/util/Map;Landroid/util/Size;I)V

    .line 1288
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getMaximumSizeMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateMaximumSizeByFormat(Ljava/util/Map;I)V

    .line 1289
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SurfaceSizeDefinition;->getUltraMaximumSizeMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->updateUltraMaximumSizeByFormat(Ljava/util/Map;I)V

    .line 1290
    iget-object v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinitionFormats:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_3d
    iget-object p1, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mSurfaceSizeDefinition:Landroidx/camera/core/impl/SurfaceSizeDefinition;

    return-object p1
.end method

.method isBurstCaptureSupported()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsBurstCaptureSupported:Z

    return v0
.end method

.method isRawSupported()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->mIsRawSupported:Z

    return v0
.end method

.method transformSurfaceConfig(IILandroid/util/Size;)Landroidx/camera/core/impl/SurfaceConfig;
    .registers 5

    .line 304
    invoke-virtual {p0, p2}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->getUpdatedSurfaceSizeDefinitionByFormat(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v0

    .line 300
    invoke-static {p1, p2, p3, v0}, Landroidx/camera/core/impl/SurfaceConfig;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p1

    return-object p1
.end method
