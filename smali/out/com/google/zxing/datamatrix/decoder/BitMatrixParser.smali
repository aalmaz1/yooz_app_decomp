.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2f

    const/16 v1, 0x90

    if-gt v0, v1, :cond_2f

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2f

    .line 41
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 43
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void

    .line 38
    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method

.method private extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 18

    move-object/from16 v0, p0

    .line 406
    iget-object v1, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v1

    .line 407
    iget-object v2, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v2

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    if-ne v3, v1, :cond_69

    .line 413
    iget-object v3, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v3

    .line 414
    iget-object v4, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v4

    .line 416
    div-int/2addr v1, v3

    .line 417
    div-int/2addr v2, v4

    mul-int v5, v1, v3

    mul-int v6, v2, v4

    .line 422
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v6, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v1, :cond_68

    mul-int v8, v6, v3

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v2, :cond_63

    mul-int v10, v9, v4

    const/4 v11, 0x0

    :goto_36
    if-ge v11, v3, :cond_5e

    add-int/lit8 v12, v3, 0x2

    mul-int/2addr v12, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v11

    add-int v13, v8, v11

    const/4 v14, 0x0

    :goto_41
    if-ge v14, v4, :cond_59

    add-int/lit8 v15, v4, 0x2

    mul-int/2addr v15, v9

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v14

    move-object/from16 v5, p1

    .line 432
    invoke-virtual {v5, v15, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_56

    add-int v15, v10, v14

    .line 434
    invoke-virtual {v7, v15, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_56
    add-int/lit8 v14, v14, 0x1

    goto :goto_41

    :cond_59
    move-object/from16 v5, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_36

    :cond_5e
    move-object/from16 v5, p1

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_63
    move-object/from16 v5, p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_68
    return-object v7

    .line 410
    :cond_69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dimension of bitMatrix must match the version size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readCorner1(II)I
    .registers 8

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    .line 233
    invoke-direct {p0, v0, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_11

    or-int/lit8 v2, v2, 0x1

    :cond_11
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 237
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    or-int/lit8 v2, v2, 0x1

    :cond_1b
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 241
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_27

    or-int/lit8 v0, v0, 0x1

    :cond_27
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 245
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x1

    :cond_32
    shl-int/2addr v0, v3

    .line 249
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3b

    or-int/lit8 v0, v0, 0x1

    :cond_3b
    shl-int/2addr v0, v3

    .line 253
    invoke-direct {p0, v4, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_44

    or-int/lit8 v0, v0, 0x1

    :cond_44
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 257
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_4e

    or-int/lit8 v0, v0, 0x1

    :cond_4e
    return v0
.end method

.method private readCorner2(II)I
    .registers 7

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 278
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x1

    :cond_13
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 282
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1e

    or-int/lit8 v0, v0, 0x1

    :cond_1e
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 286
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v0, v0, 0x1

    :cond_29
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 290
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 294
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3f

    or-int/lit8 v0, v0, 0x1

    :cond_3f
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 298
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4a

    or-int/lit8 v0, v0, 0x1

    :cond_4a
    shl-int/2addr v0, v2

    .line 302
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_53

    or-int/lit8 v0, v0, 0x1

    :cond_53
    return v0
.end method

.method private readCorner3(II)I
    .registers 10

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 323
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_13

    or-int/lit8 v2, v2, 0x1

    :cond_13
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 327
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_1f

    or-int/lit8 v0, v0, 0x1

    :cond_1f
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 331
    invoke-direct {p0, v1, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_2a

    or-int/lit8 v0, v0, 0x1

    :cond_2a
    shl-int/2addr v0, v3

    .line 335
    invoke-direct {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_33

    or-int/lit8 v0, v0, 0x1

    :cond_33
    shl-int/2addr v0, v3

    .line 339
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3c

    or-int/lit8 v0, v0, 0x1

    :cond_3c
    shl-int/2addr v0, v3

    .line 343
    invoke-direct {p0, v3, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_45

    or-int/lit8 v0, v0, 0x1

    :cond_45
    shl-int/2addr v0, v3

    .line 347
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_4e

    or-int/lit8 v0, v0, 0x1

    :cond_4e
    return v0
.end method

.method private readCorner4(II)I
    .registers 7

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 364
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 368
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x1

    :cond_13
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 372
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1e

    or-int/lit8 v0, v0, 0x1

    :cond_1e
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 376
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_29

    or-int/lit8 v0, v0, 0x1

    :cond_29
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 380
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/2addr v0, v2

    .line 384
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3d

    or-int/lit8 v0, v0, 0x1

    :cond_3d
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 388
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_47

    or-int/lit8 v0, v0, 0x1

    :cond_47
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 392
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_51

    or-int/lit8 v0, v0, 0x1

    :cond_51
    return v0
.end method

.method private readModule(IIII)Z
    .registers 6

    if-gez p1, :cond_a

    add-int/2addr p1, p3

    add-int/lit8 v0, p3, 0x4

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_a
    if-gez p2, :cond_14

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p4, p4, 0x7

    rsub-int/lit8 p4, p4, 0x4

    add-int/2addr p1, p4

    :cond_14
    if-lt p1, p3, :cond_17

    sub-int/2addr p1, p3

    .line 167
    :cond_17
    iget-object p3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 168
    iget-object p3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    return p1
.end method

.method private readUtah(IIII)I
    .registers 10

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 184
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 188
    invoke-direct {p0, v0, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_14

    or-int/lit8 v2, v2, 0x1

    :cond_14
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 192
    invoke-direct {p0, v2, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_20

    or-int/lit8 v0, v0, 0x1

    :cond_20
    shl-int/lit8 v0, v0, 0x1

    .line 196
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2a

    or-int/lit8 v0, v0, 0x1

    :cond_2a
    shl-int/lit8 v0, v0, 0x1

    .line 200
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_34

    or-int/lit8 v0, v0, 0x1

    :cond_34
    shl-int/lit8 v0, v0, 0x1

    .line 204
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3e

    or-int/lit8 v0, v0, 0x1

    :cond_3e
    shl-int/lit8 v0, v0, 0x1

    .line 208
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_48

    or-int/lit8 v0, v0, 0x1

    :cond_48
    shl-int/lit8 v0, v0, 0x1

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p1

    if-eqz p1, :cond_52

    or-int/lit8 v0, v0, 0x1

    :cond_52
    return v0
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p0

    .line 64
    invoke-static {v0, p0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object v0
.end method

.method readCodewords()[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v0, v0, [B

    .line 83
    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v4

    :cond_1c
    const/4 v11, 0x1

    if-ne v10, v1, :cond_34

    if-nez v3, :cond_34

    if-nez v5, :cond_34

    add-int/lit8 v5, v6, 0x1

    .line 95
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v5

    move v5, v11

    goto/16 :goto_cc

    :cond_34
    add-int/lit8 v12, v1, -0x2

    if-ne v10, v12, :cond_51

    if-nez v3, :cond_51

    and-int/lit8 v13, v2, 0x3

    if-eqz v13, :cond_51

    if-nez v7, :cond_51

    add-int/lit8 v7, v6, 0x1

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v7

    move v7, v11

    goto/16 :goto_cc

    :cond_51
    add-int/lit8 v13, v1, 0x4

    if-ne v10, v13, :cond_6e

    const/4 v13, 0x2

    if-ne v3, v13, :cond_6e

    and-int/lit8 v13, v2, 0x7

    if-nez v13, :cond_6e

    if-nez v8, :cond_6e

    add-int/lit8 v8, v6, 0x1

    .line 105
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v8

    move v8, v11

    goto :goto_cc

    :cond_6e
    if-ne v10, v12, :cond_88

    if-nez v3, :cond_88

    and-int/lit8 v12, v2, 0x7

    if-ne v12, v4, :cond_88

    if-nez v9, :cond_88

    add-int/lit8 v9, v6, 0x1

    .line 110
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v9

    move v9, v11

    goto :goto_cc

    :cond_88
    if-ge v10, v1, :cond_9e

    if-ltz v3, :cond_9e

    .line 117
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_9e

    add-int/lit8 v11, v6, 0x1

    .line 118
    invoke-direct {p0, v10, v3, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_9e
    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    if-ltz v10, :cond_a6

    if-lt v3, v2, :cond_88

    :cond_a6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x3

    :cond_aa
    if-ltz v10, :cond_c0

    if-ge v3, v2, :cond_c0

    .line 128
    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_c0

    add-int/lit8 v11, v6, 0x1

    .line 129
    invoke-direct {p0, v10, v3, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_c0
    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v3, v3, -0x2

    if-ge v10, v1, :cond_c8

    if-gez v3, :cond_aa

    :cond_c8
    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v3, v3, 0x1

    :goto_cc
    if-lt v10, v1, :cond_1c

    if-lt v3, v2, :cond_1c

    .line 139
    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v6, v1, :cond_d9

    return-object v0

    .line 140
    :cond_d9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
