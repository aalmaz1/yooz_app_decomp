.class public Lcom/king/camera/scan/config/AspectRatioCameraConfig;
.super Lcom/king/camera/scan/config/CameraConfig;
.source "AspectRatioCameraConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAspectRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/king/camera/scan/config/CameraConfig;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/king/camera/scan/config/AspectRatioCameraConfig;->initTargetAspectRatio(Landroid/content/Context;)V

    return-void
.end method

.method private initTargetAspectRatio(Landroid/content/Context;)V
    .locals 6

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 61
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "displayMetrics: %dx%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const p1, 0x3faaaaab

    sub-float p1, v1, p1

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3fe38e39

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 67
    iput v4, p0, Lcom/king/camera/scan/config/AspectRatioCameraConfig;->mAspectRatio:I

    goto :goto_0

    .line 69
    :cond_0
    iput v5, p0, Lcom/king/camera/scan/config/AspectRatioCameraConfig;->mAspectRatio:I

    .line 71
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "aspectRatio: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/king/camera/scan/config/AspectRatioCameraConfig;->mAspectRatio:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/CameraSelector$Builder;)Landroidx/camera/core/CameraSelector;

    move-result-object p1

    return-object p1
.end method

.method public options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;
    .locals 1

    .line 89
    iget v0, p0, Lcom/king/camera/scan/config/AspectRatioCameraConfig;->mAspectRatio:I

    invoke-virtual {p1, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/ImageAnalysis$Builder;

    .line 90
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/ImageAnalysis$Builder;)Landroidx/camera/core/ImageAnalysis;

    move-result-object p1

    return-object p1
.end method

.method public options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/king/camera/scan/config/CameraConfig;->options(Landroidx/camera/core/Preview$Builder;)Landroidx/camera/core/Preview;

    move-result-object p1

    return-object p1
.end method
