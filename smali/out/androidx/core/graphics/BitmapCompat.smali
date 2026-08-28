.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-lez v1, :cond_1d1

    if-lez v2, :cond_1d1

    if-eqz v3, :cond_35

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_2d

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_2d

    goto :goto_35

    .line 133
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcRect must be contained by srcBm!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_35
    :goto_35
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v3, :cond_40

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_44

    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_44
    if-eqz v3, :cond_4b

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_4f

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_4f
    int-to-float v7, v1

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v2

    int-to-float v9, v6

    div-float/2addr v8, v9

    if-eqz v3, :cond_5a

    .line 150
    iget v10, v3, Landroid/graphics/Rect;->left:I

    goto :goto_5b

    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    if-eqz v3, :cond_60

    .line 151
    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    const/4 v11, 0x1

    if-nez v10, :cond_84

    if-nez v3, :cond_84

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v1, v12, :cond_84

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ne v2, v12, :cond_84

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_83

    if-ne v0, v4, :cond_83

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_83
    return-object v4

    .line 164
    :cond_84
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 166
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1d

    if-lt v13, v14, :cond_96

    .line 167
    invoke-static {v12}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    goto :goto_a0

    .line 169
    :cond_96
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_a0
    if-ne v5, v1, :cond_b9

    if-ne v6, v2, :cond_b9

    .line 174
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v10

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 176
    invoke-virtual {v1, v4, v2, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_b9
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 181
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, v7, v15

    if-lez v16, :cond_d2

    move/from16 v17, v10

    float-to-double v9, v7

    .line 182
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    goto :goto_de

    :cond_d2
    move/from16 v17, v10

    float-to-double v9, v7

    .line 183
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_de
    double-to-int v7, v9

    cmpl-float v9, v8, v15

    if-lez v9, :cond_ee

    float-to-double v8, v8

    .line 184
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    goto :goto_f8

    :cond_ee
    float-to-double v8, v8

    .line 185
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :goto_f8
    double-to-int v8, v8

    if-eqz p4, :cond_12c

    .line 198
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_12c

    if-lez v7, :cond_108

    .line 199
    invoke-static {v5, v1, v11, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v9

    goto :goto_109

    :cond_108
    move v9, v5

    :goto_109
    if-lez v8, :cond_110

    .line 200
    invoke-static {v6, v2, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v10

    goto :goto_111

    :cond_110
    move v10, v6

    .line 201
    :goto_111
    invoke-static {v9, v10, v0, v11}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 203
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v13, v17

    neg-int v13, v13

    int-to-float v13, v13

    neg-int v3, v3

    int-to-float v3, v3

    .line 204
    invoke-virtual {v10, v4, v13, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v13, v11

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v19, v9

    move-object v9, v4

    move-object/from16 v4, v19

    goto :goto_131

    :cond_12c
    move/from16 v13, v17

    const/4 v9, 0x0

    move v10, v13

    const/4 v13, 0x0

    .line 214
    :goto_131
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v10, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v10, v7

    move v15, v8

    :goto_13d
    if-nez v10, :cond_14a

    if-eqz v15, :cond_142

    goto :goto_14a

    :cond_142
    if-eq v9, v0, :cond_149

    if-eqz v9, :cond_149

    .line 304
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_149
    return-object v4

    :cond_14a
    :goto_14a
    if-gez v10, :cond_14f

    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    :cond_14f
    if-lez v10, :cond_153

    add-int/lit8 v10, v10, -0x1

    :cond_153
    :goto_153
    if-gez v15, :cond_158

    add-int/lit8 v15, v15, 0x1

    goto :goto_15c

    :cond_158
    if-lez v15, :cond_15c

    add-int/lit8 v15, v15, -0x1

    .line 228
    :cond_15c
    :goto_15c
    invoke-static {v5, v1, v10, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    move-object/from16 v17, v4

    .line 229
    invoke-static {v6, v2, v15, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v4

    move-object/from16 v18, v12

    const/4 v12, 0x0

    .line 230
    invoke-virtual {v3, v12, v12, v11, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v10, :cond_172

    if-nez v15, :cond_172

    const/4 v4, 0x1

    goto :goto_173

    :cond_172
    move v4, v12

    :goto_173
    if-eqz v9, :cond_183

    .line 250
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v1, :cond_183

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v2, :cond_183

    const/4 v11, 0x1

    goto :goto_184

    :cond_183
    move v11, v12

    :goto_184
    if-eqz v9, :cond_199

    if-eq v9, v0, :cond_199

    if-eqz p4, :cond_190

    .line 260
    invoke-static {v9}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v16

    if-eqz v16, :cond_199

    :cond_190
    if-eqz v4, :cond_197

    if-eqz v11, :cond_199

    if-eqz v13, :cond_197

    goto :goto_199

    :cond_197
    move-object v4, v9

    goto :goto_1bd

    :cond_199
    :goto_199
    if-eq v9, v0, :cond_1a0

    if-eqz v9, :cond_1a0

    .line 268
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a0
    if-lez v10, :cond_1a4

    move v9, v13

    goto :goto_1a5

    :cond_1a4
    move v9, v10

    .line 277
    :goto_1a5
    invoke-static {v5, v1, v9, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v9

    if-lez v15, :cond_1ad

    move v11, v13

    goto :goto_1ae

    :cond_1ad
    move v11, v15

    .line 279
    :goto_1ae
    invoke-static {v6, v2, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    if-eqz p4, :cond_1b8

    if-nez v4, :cond_1b8

    const/4 v4, 0x1

    goto :goto_1b9

    :cond_1b8
    move v4, v12

    .line 285
    :goto_1b9
    invoke-static {v9, v11, v0, v4}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 294
    :goto_1bd
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    .line 295
    invoke-virtual {v9, v12, v14, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 301
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v9, v12

    move-object v12, v11

    const/4 v11, 0x1

    goto/16 :goto_13d

    .line 127
    :cond_1d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstW and dstH must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 1

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 1

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    return-void
.end method

.method static sizeAtStep(IIII)I
    .registers 5

    if-nez p2, :cond_3

    return p1

    :cond_3
    const/4 v0, 0x1

    if-lez p2, :cond_b

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int/2addr p0, p1

    return p0

    :cond_b
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
