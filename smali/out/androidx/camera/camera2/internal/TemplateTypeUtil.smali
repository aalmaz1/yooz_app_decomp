.class public Landroidx/camera/camera2/internal/TemplateTypeUtil;
.super Ljava/lang/Object;
.source "TemplateTypeUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureConfigTemplateType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)I
    .registers 4

    .line 69
    sget-object v0, Landroidx/camera/camera2/internal/TemplateTypeUtil$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    invoke-virtual {p0}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_13

    const/4 p1, 0x3

    if-eq p0, v1, :cond_12

    if-eq p0, p1, :cond_12

    return v0

    :cond_12
    return p1

    :cond_13
    if-ne p1, v1, :cond_16

    const/4 v1, 0x5

    :cond_16
    return v1
.end method

.method public static getSessionConfigTemplateType(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)I
    .registers 4

    .line 46
    sget-object v0, Landroidx/camera/camera2/internal/TemplateTypeUtil$1;->$SwitchMap$androidx$camera$core$impl$UseCaseConfigFactory$CaptureType:[I

    invoke-virtual {p0}, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    const/4 p1, 0x3

    if-eq p0, v0, :cond_12

    if-eq p0, p1, :cond_12

    return v1

    :cond_12
    return p1

    :cond_13
    if-ne p1, v0, :cond_16

    const/4 v1, 0x5

    :cond_16
    return v1
.end method
