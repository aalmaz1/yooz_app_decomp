.class public Lcom/king/zxing/analyze/MultiFormatAnalyzer;
.super Lcom/king/zxing/analyze/AreaRectAnalyzer;
.source "MultiFormatAnalyzer.java"


# instance fields
.field mReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/king/zxing/DecodeConfig;

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/AreaRectAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 38
    invoke-direct {p0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->initReader()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 94
    :try_start_1
    iget-object p2, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p2, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    :catch_1
    :cond_0
    return-object v0
.end method

.method private initReader()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    return-void
.end method


# virtual methods
.method public analyze([BIIIIII)Lcom/google/zxing/Result;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 50
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 51
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v3, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mHints:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 52
    new-instance v10, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/16 v16, 0x0

    move-object v2, v10

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 53
    iget-boolean v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->isMultiDecode:Z

    invoke-direct {v1, v13, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_3

    .line 55
    :try_start_1
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    if-eqz v2, :cond_3

    .line 56
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    array-length v2, v0

    new-array v3, v2, [B

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v12, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v11, :cond_0

    mul-int v6, v5, v12

    add-int/2addr v6, v12

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, v11

    add-int/2addr v7, v5

    .line 60
    aget-byte v7, v0, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v10, 0x0

    move-object v2, v0

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCodeMultiDecode()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v0

    move-object/from16 v16, v0

    :cond_2
    if-nez v16, :cond_3

    .line 66
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v13}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-object/from16 v13, v16

    goto :goto_3

    :cond_3
    move-object/from16 v13, v16

    :goto_2
    if-eqz v13, :cond_4

    .line 71
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found barcode in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long/2addr v2, v14

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 77
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 78
    throw v0

    :catch_1
    const/4 v13, 0x0

    .line 77
    :catch_2
    :cond_4
    :goto_3
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object v13
.end method
