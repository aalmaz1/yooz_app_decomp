.class public Lcom/king/camera/scan/config/AdaptiveCameraConfig;
.super Lcom/king/camera/scan/config/CameraConfig;
.source "AdaptiveCameraConfig.java"


# static fields
.field private static final IMAGE_QUALITY_1080P:I = 0x438

.field private static final IMAGE_QUALITY_720P:I = 0x2d0


# instance fields
.field private mAnalysisQuality:I

.field private mAnalysisTargetSize:Landroid/util/Size;

.field private mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

.field private mPreviewQuality:I

.field private mPreviewTargetSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/king/camera/scan/config/CameraConfig;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->initAdaptiveCameraConfig(Landroid/content/Context;)V

    return-void
.end method

.method private createAnalysisResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .registers 5

    .line 150
    new-instance v0, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 151
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    iget-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisTargetSize:Landroid/util/Size;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;I)V

    .line 152
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    new-instance v1, Lcom/king/camera/scan/config/AdaptiveCameraConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/king/camera/scan/config/AdaptiveCameraConfig$$ExternalSyntheticLambda0;-><init>(Lcom/king/camera/scan/config/AdaptiveCameraConfig;)V

    .line 153
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionFilter(Landroidx/camera/core/resolutionselector/ResolutionFilter;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    return-object v0
.end method

.method private createPreviewResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .registers 5

    .line 127
    new-instance v0, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 128
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setAspectRatioStrategy(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    new-instance v1, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    iget-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewTargetSize:Landroid/util/Size;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;I)V

    .line 129
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionStrategy(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    new-instance v1, Lcom/king/camera/scan/config/AdaptiveCameraConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/king/camera/scan/config/AdaptiveCameraConfig$$ExternalSyntheticLambda1;-><init>(Lcom/king/camera/scan/config/AdaptiveCameraConfig;)V

    .line 130
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->setResolutionFilter(Landroidx/camera/core/resolutionselector/ResolutionFilter;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->build()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    return-object v0
.end method

.method private initAdaptiveCameraConfig(Landroid/content/Context;)V
    .registers 8

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 64
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 65
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "displayMetrics: %dx%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    const/16 v1, 0x2d0

    const v2, 0x3fe38e39

    const v3, 0x3faaaaab

    const/16 v4, 0x438

    if-ge v0, p1, :cond_82

    int-to-float p1, p1

    int-to-float v5, v0

    div-float/2addr p1, v5

    .line 70
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    sub-float v3, p1, v3

    .line 71
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_54

    .line 72
    sget-object v2, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    goto :goto_58

    .line 74
    :cond_54
    sget-object v2, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 76
    :goto_58
    new-instance v2, Landroid/util/Size;

    iget v3, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    int-to-float v5, v3

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewTargetSize:Landroid/util/Size;

    if-le v0, v4, :cond_6c

    .line 78
    iput v4, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    goto :goto_72

    .line 80
    :cond_6c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    .line 82
    :goto_72
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    int-to-float v2, v1

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisTargetSize:Landroid/util/Size;

    goto :goto_d1

    .line 84
    :cond_82
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    int-to-float v0, v0

    int-to-float v5, p1

    div-float/2addr v0, v5

    sub-float v3, v0, v3

    .line 86
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_a0

    .line 87
    sget-object v2, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_4_3_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    goto :goto_a4

    .line 89
    :cond_a0
    sget-object v2, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->RATIO_16_9_FALLBACK_AUTO_STRATEGY:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAspectRatioStrategy:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 91
    :goto_a4
    new-instance v2, Landroid/util/Size;

    iget v3, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    invoke-direct {v2, v3, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewTargetSize:Landroid/util/Size;

    if-le p1, v4, :cond_ba

    .line 93
    iput v4, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    goto :goto_c0

    .line 95
    :cond_ba
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    .line 97
    :goto_c0
    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisTargetSize:Landroid/util/Size;

    :goto_d1
    return-void
.end method


# virtual methods
.method synthetic lambda$createAnalysisResolutionSelector$1$com-king-camera-scan-config-AdaptiveCameraConfig(Ljava/util/List;I)Ljava/util/List;
    .registers 6

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageAnalysis supportedSizes: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 155
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 157
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 158
    iget v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mAnalysisQuality:I

    if-gt v1, v2, :cond_1b

    .line 159
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    return-object p2
.end method

.method synthetic lambda$createPreviewResolutionSelector$0$com-king-camera-scan-config-AdaptiveCameraConfig(Ljava/util/List;I)Ljava/util/List;
    .registers 6

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Preview supportedSizes: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 134
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 135
    iget v2, p0, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->mPreviewQuality:I

    if-gt v1, v2, :cond_1b

    .line 136
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    return-object p2
.end method

.method public options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;
    .registers 2

    .line 104
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object p1

    return-object p1
.end method

.method public options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;
    .registers 3

    .line 117
    invoke-direct {p0}, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->createAnalysisResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 118
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object p1

    return-object p1
.end method

.method public options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;
    .registers 3

    .line 110
    invoke-direct {p0}, Lcom/king/camera/scan/config/AdaptiveCameraConfig;->createPreviewResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/Preview$Builder;->setResolutionSelector(Landroidx/camera/core/resolutionselector/ResolutionSelector;)Landroidx/camera/core/Preview$Builder;

    .line 111
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object p1

    return-object p1
.end method
