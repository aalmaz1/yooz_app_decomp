.class public Landroidx/camera/core/impl/utils/TransformUtils;
.super Ljava/lang/Object;
.source "TransformUtils.java"


# static fields
.field public static final NORMALIZED_RECT:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroidx/camera/core/impl/utils/TransformUtils;->NORMALIZED_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifTransform(III)Landroid/graphics/Matrix;
    .registers 12

    .line 376
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 381
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    sget-object v3, Landroidx/camera/core/impl/utils/TransformUtils;->NORMALIZED_RECT:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_5a

    goto :goto_44

    .line 417
    :pswitch_21
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_45

    .line 412
    :pswitch_25
    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 413
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_45

    .line 406
    :pswitch_2c
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_45

    .line 401
    :pswitch_30
    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_45

    .line 396
    :pswitch_37
    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_44

    :pswitch_3b
    const/high16 p0, 0x43340000    # 180.0f

    .line 393
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_44

    .line 390
    :pswitch_41
    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_44
    const/4 v6, 0x0

    :goto_45
    if-eqz v6, :cond_4c

    .line 430
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 431
    :cond_4c
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 432
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p0, v3, v1, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 433
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_41
        :pswitch_3b
        :pswitch_37
        :pswitch_30
        :pswitch_2c
        :pswitch_25
        :pswitch_21
    .end packed-switch
.end method

.method public static getNormalizedToBuffer(Landroid/graphics/Rect;)Landroid/graphics/Matrix;
    .registers 2

    .line 346
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getNormalizedToBuffer(Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .registers 4

    .line 366
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 367
    sget-object v1, Landroidx/camera/core/impl/utils/TransformUtils;->NORMALIZED_RECT:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-object v0
.end method

.method public static getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 4

    const/4 v0, 0x0

    .line 308
    invoke-static {p0, p1, p2, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;
    .registers 7

    .line 329
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 330
    sget-object v1, Landroidx/camera/core/impl/utils/TransformUtils;->NORMALIZED_RECT:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    int-to-float p0, p2

    .line 332
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz p3, :cond_19

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 334
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 337
    :cond_19
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->getNormalizedToBuffer(Landroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static getRotatedSize(Landroid/graphics/Rect;I)Landroid/util/Size;
    .registers 2

    .line 167
    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static hasCropping(Landroid/graphics/Rect;Landroid/util/Size;)Z
    .registers 4

    .line 86
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_1f

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eq p0, p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public static is90or270(I)Z
    .registers 4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_27

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_9

    goto :goto_27

    :cond_9
    if-eqz p0, :cond_25

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_10

    goto :goto_25

    .line 214
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid rotation degrees: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method public static isAspectRatioMatchingWithRoundingError(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 3

    const/4 v0, 0x0

    .line 242
    invoke-static {p0, v0, p1, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;ZLandroid/util/Size;Z)Z

    move-result p0

    return p0
.end method

.method public static isAspectRatioMatchingWithRoundingError(Landroid/util/Size;ZLandroid/util/Size;Z)Z
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_11

    .line 272
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    move p0, p1

    goto :goto_2c

    .line 275
    :cond_11
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 276
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    div-float p0, v1, p0

    :goto_2c
    if-eqz p3, :cond_3b

    .line 281
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    move p2, p3

    goto :goto_59

    .line 284
    :cond_3b
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr p3, v1

    .line 285
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v0

    div-float p2, v1, p2

    move v2, p3

    move p3, p2

    move p2, v2

    :goto_59
    cmpl-float p1, p1, p3

    if-ltz p1, :cond_63

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_63

    const/4 p0, 0x1

    goto :goto_64

    :cond_63
    const/4 p0, 0x0

    :goto_64
    return p0
.end method

.method public static max(FFFF)F
    .registers 4

    .line 194
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static min(FFFF)F
    .registers 4

    .line 201
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .registers 3

    .line 57
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static rectToString(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 5

    .line 63
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s(%dx%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rectToVertices(Landroid/graphics/RectF;)[F
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 231
    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    aput p0, v0, v1

    return-object v0
.end method

.method public static reverseSize(Landroid/util/Size;)Landroid/util/Size;
    .registers 3

    .line 114
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static reverseSizeF(Landroid/util/SizeF;)Landroid/util/SizeF;
    .registers 3

    .line 125
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .registers 5

    .line 150
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid rotation degrees: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 152
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 153
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    :cond_32
    return-object p0
.end method

.method public static rotateSize(Landroid/util/Size;I)Landroid/util/Size;
    .registers 5

    .line 138
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid rotation degrees: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->is90or270(I)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-static {p0}, Landroidx/camera/core/impl/utils/TransformUtils;->reverseSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :cond_27
    return-object p0
.end method

.method public static sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .registers 2

    const/4 v0, 0x0

    .line 71
    invoke-static {p0, v0, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static sizeToRect(Landroid/util/Size;II)Landroid/graphics/Rect;
    .registers 5

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;
    .registers 2

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;II)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static sizeToRectF(Landroid/util/Size;II)Landroid/graphics/RectF;
    .registers 7

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p2, p0

    int-to-float p0, p2

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static sizeToVertices(Landroid/util/Size;)[F
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 222
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x3

    aput v2, v0, v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v2, v0, v1

    .line 223
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public static updateSensorToBufferTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Matrix;
    .registers 3

    .line 356
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 357
    iget p0, p1, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public static verticesToRect([F)Landroid/graphics/RectF;
    .registers 15

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget v2, p0, v1

    const/4 v3, 0x2

    aget v4, p0, v3

    const/4 v5, 0x4

    aget v6, p0, v5

    const/4 v7, 0x6

    aget v8, p0, v7

    .line 183
    invoke-static {v2, v4, v6, v8}, Landroidx/camera/core/impl/utils/TransformUtils;->min(FFFF)F

    move-result v2

    const/4 v4, 0x1

    aget v6, p0, v4

    const/4 v8, 0x3

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x7

    aget v13, p0, v12

    .line 184
    invoke-static {v6, v9, v11, v13}, Landroidx/camera/core/impl/utils/TransformUtils;->min(FFFF)F

    move-result v6

    aget v1, p0, v1

    aget v3, p0, v3

    aget v5, p0, v5

    aget v7, p0, v7

    .line 185
    invoke-static {v1, v3, v5, v7}, Landroidx/camera/core/impl/utils/TransformUtils;->max(FFFF)F

    move-result v1

    aget v3, p0, v4

    aget v4, p0, v8

    aget v5, p0, v10

    aget p0, p0, v12

    .line 186
    invoke-static {v3, v4, v5, p0}, Landroidx/camera/core/impl/utils/TransformUtils;->max(FFFF)F

    move-result p0

    invoke-direct {v0, v2, v6, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static within360(I)I
    .registers 1

    .line 174
    rem-int/lit16 p0, p0, 0x168

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method
