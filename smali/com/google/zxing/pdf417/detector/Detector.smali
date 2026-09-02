.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final MAX_STOP_PATTERN_HEIGHT_VARIANCE:F = 0.5f

.field private static final ROTATIONS:[I

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 40
    fill-array-data v1, :array_2a

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    new-array v1, v0, [I

    .line 41
    fill-array-data v1, :array_36

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 48
    fill-array-data v1, :array_42

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 50
    fill-array-data v1, :array_56

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->ROTATIONS:[I

    return-void

    nop

    :array_2a
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_36
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_42
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_56
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_6c
    .array-data 4
        0x0
        0xb4
        0x10e
        0x5a
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRotation(Lcom/google/zxing/common/BitMatrix;I)Lcom/google/zxing/common/BitMatrix;
    .registers 3

    .line 100
    rem-int/lit16 v0, p1, 0x168

    if-nez v0, :cond_5

    return-object p0

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitMatrix;->rotate(I)V

    return-object p0
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .registers 6

    const/4 v0, 0x0

    .line 201
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 202
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 83
    sget-object p1, Lcom/google/zxing/pdf417/detector/Detector;->ROTATIONS:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_24

    aget v3, p1, v2

    .line 84
    invoke-static {p0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->applyRotation(Lcom/google/zxing/common/BitMatrix;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 85
    invoke-static {p2, v4}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v5

    .line 86
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    .line 87
    new-instance p0, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {p0, v4, v5, v3}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    return-object p0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 90
    :cond_24
    new-instance p1, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, p2, v1}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;I)V

    return-object p1
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    move v4, v3

    .line 121
    :goto_9
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_79

    .line 122
    invoke-static {p1, v2, v3}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 124
    aget-object v5, v3, v1

    const/4 v6, 0x1

    if-nez v5, :cond_50

    const/4 v5, 0x3

    aget-object v7, v3, v5

    if-nez v7, :cond_50

    if-nez v4, :cond_20

    goto :goto_79

    .line 133
    :cond_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/zxing/ResultPoint;

    .line 134
    aget-object v7, v4, v6

    if-eqz v7, :cond_3e

    int-to-float v2, v2

    .line 135
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .line 137
    :cond_3e
    aget-object v4, v4, v5

    if-eqz v4, :cond_24

    .line 138
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_24

    :cond_4c
    add-int/lit8 v2, v2, 0x5

    move v3, v1

    goto :goto_8

    .line 145
    :cond_50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_56

    goto :goto_79

    :cond_56
    const/4 v2, 0x2

    .line 151
    aget-object v4, v3, v2

    if-eqz v4, :cond_67

    .line 152
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 153
    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    goto :goto_75

    :cond_67
    const/4 v2, 0x4

    .line 155
    aget-object v4, v3, v2

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 156
    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    :goto_75
    float-to-int v2, v2

    move v3, v4

    move v4, v6

    goto :goto_9

    :cond_79
    :goto_79
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I
    .registers 15

    .line 284
    array-length v0, p5

    const/4 v1, 0x0

    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    move v0, v1

    .line 289
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_17

    if-lez p1, :cond_17

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_17

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_6

    .line 294
    :cond_17
    array-length v0, p4

    move v2, p1

    move v3, v1

    move v4, v3

    :goto_1b
    const v5, 0x3ed70a3d    # 0.42f

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge p1, p3, :cond_5c

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v8, v4, :cond_2e

    .line 298
    aget v5, p5, v3

    add-int/2addr v5, v7

    aput v5, p5, v3

    goto :goto_59

    :cond_2e
    add-int/lit8 v8, v0, -0x1

    if-ne v3, v8, :cond_53

    .line 301
    invoke-static {p5, p4}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result v8

    cmpg-float v5, v8, v5

    if-gez v5, :cond_41

    new-array p0, v6, [I

    aput v2, p0, v1

    aput p1, p0, v7

    return-object p0

    .line 304
    :cond_41
    aget v5, p5, v1

    aget v8, p5, v7

    add-int/2addr v5, v8

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, -0x1

    .line 305
    invoke-static {p5, v6, p5, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aput v1, p5, v5

    .line 307
    aput v1, p5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_55

    :cond_53
    add-int/lit8 v3, v3, 0x1

    .line 312
    :goto_55
    aput v7, p5, v3

    xor-int/lit8 v4, v4, 0x1

    :goto_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    :cond_5c
    sub-int/2addr v0, v7

    if-ne v3, v0, :cond_6f

    .line 317
    invoke-static {p5, p4}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[I)F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_6f

    new-array p0, v6, [I

    aput v2, p0, v1

    sub-int/2addr p1, v7

    aput p1, p0, v7

    return-object p0

    :cond_6f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;
    .registers 24

    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v8, p6

    .line 215
    array-length v2, v8

    new-array v9, v2, [I

    move/from16 v10, p3

    :goto_c
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ge v10, v0, :cond_5a

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v10

    move/from16 v5, p2

    move-object/from16 v6, p6

    move-object v7, v9

    .line 217
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_57

    move/from16 v16, v10

    move-object v10, v2

    move/from16 v2, v16

    :goto_25
    if-lez v2, :cond_3e

    add-int/lit8 v13, v2, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p4

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p6

    move-object v7, v9

    .line 220
    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_3c

    move-object v10, v2

    move v2, v13

    goto :goto_25

    :cond_3c
    add-int/2addr v13, v11

    goto :goto_3f

    :cond_3e
    move v13, v2

    .line 228
    :goto_3f
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v10, v12

    int-to-float v3, v3

    int-to-float v4, v13

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v12

    .line 229
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v3, v10, v11

    int-to-float v3, v3

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v1, v11

    move v2, v11

    move v10, v13

    goto :goto_5b

    :cond_57
    add-int/lit8 v10, v10, 0x5

    goto :goto_c

    :cond_5a
    move v2, v12

    :goto_5b
    add-int/lit8 v3, v10, 0x1

    if-eqz v2, :cond_cb

    const/4 v13, 0x2

    new-array v2, v13, [I

    aget-object v4, v1, v12

    .line 238
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v12

    aget-object v4, v1, v11

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v11

    move-object v14, v2

    move v15, v3

    move v7, v12

    :goto_77
    if-ge v15, v0, :cond_af

    .line 240
    aget v3, v14, v12

    move-object/from16 v2, p0

    move v4, v15

    move/from16 v5, p2

    move-object/from16 v6, p6

    move v13, v7

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 245
    aget v3, v14, v12

    aget v4, v2, v12

    sub-int/2addr v3, v4

    .line 246
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_a4

    aget v3, v14, v11

    aget v5, v2, v11

    sub-int/2addr v3, v5

    .line 247
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_a4

    move-object v14, v2

    move v7, v12

    goto :goto_ab

    :cond_a4
    const/16 v2, 0x19

    if-le v13, v2, :cond_a9

    goto :goto_b0

    :cond_a9
    add-int/lit8 v7, v13, 0x1

    :goto_ab
    add-int/lit8 v15, v15, 0x1

    const/4 v13, 0x2

    goto :goto_77

    :cond_af
    move v13, v7

    :goto_b0
    add-int/lit8 v7, v13, 0x1

    sub-int v3, v15, v7

    .line 259
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v2, v14, v12

    int-to-float v2, v2

    int-to-float v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 260
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v2, v14, v11

    int-to-float v2, v2

    invoke-direct {v0, v2, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    :cond_cb
    sub-int/2addr v3, v10

    move/from16 v0, p5

    if-ge v3, v0, :cond_d4

    const/4 v0, 0x0

    .line 263
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d4
    return-object v1
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .registers 14

    .line 178
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 179
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    const/16 v0, 0x8

    new-array v9, v0, [Lcom/google/zxing/ResultPoint;

    const/16 v10, 0xa

    .line 183
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, p1

    move v4, p2

    move v5, v10

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v9, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    const/4 v0, 0x4

    aget-object v1, v9, v0

    if-eqz v1, :cond_4a

    .line 187
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p1

    float-to-int p2, p1

    aget-object p1, v9, v0

    .line 188
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x5

    aget-object v0, v9, v0

    if-eqz v0, :cond_4a

    .line 190
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    move v3, p1

    move v4, p2

    move v5, v0

    goto :goto_4d

    :cond_4a
    move v3, p1

    move v4, p2

    move v5, v10

    .line 195
    :goto_4d
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v1, v7

    move v2, v8

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    sget-object p1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v9, p0, p1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    return-object v9
.end method

.method private static patternMatchVariance([I[I)F
    .registers 12

    .line 334
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_5
    if-ge v2, v0, :cond_10

    .line 338
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 339
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_15

    return v2

    :cond_15
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v4

    const/4 v6, 0x0

    :goto_1e
    if-ge v1, v0, :cond_38

    .line 354
    aget v7, p0, v1

    .line 355
    aget v8, p1, v1

    int-to-float v8, v8

    mul-float/2addr v8, v4

    int-to-float v7, v7

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2d

    sub-float/2addr v7, v8

    goto :goto_2f

    :cond_2d
    sub-float v7, v8, v7

    :goto_2f
    cmpl-float v8, v7, v5

    if-lez v8, :cond_34

    return v2

    :cond_34
    add-float/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_38
    div-float/2addr v6, v3

    return v6
.end method
