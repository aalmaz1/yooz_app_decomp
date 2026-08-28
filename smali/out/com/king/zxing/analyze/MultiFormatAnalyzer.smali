.class public Lcom/king/zxing/analyze/MultiFormatAnalyzer;
.super Lcom/king/zxing/analyze/AreaRectAnalyzer;
.source "MultiFormatAnalyzer.java"


# instance fields
.field mReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/king/zxing/DecodeConfig;

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/AreaRectAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    .line 38
    invoke-direct {p0}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->initReader()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
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
    .registers 6

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 v0, 0x0

    :goto_12
    if-eqz p2, :cond_27

    if-nez v0, :cond_27

    .line 94
    :try_start_16
    iget-object p2, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {p2, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_27

    move-object v0, p1

    :catch_27
    :cond_27
    return-object v0
.end method

.method private initReader()V
    .registers 2

    .line 42
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    return-void
.end method


# virtual methods
.method public analyze([BIIIIII)Lcom/google/zxing/Result;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 50
    :try_start_8
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
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_c6
    .catchall {:try_start_8 .. :try_end_32} :catchall_bf

    if-nez v16, :cond_99

    .line 55
    :try_start_34
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    if-eqz v2, :cond_99

    .line 56
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportVerticalCode()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 57
    array-length v2, v0

    new-array v3, v2, [B

    const/4 v2, 0x0

    move v4, v2

    :goto_45
    if-ge v4, v12, :cond_5d

    move v5, v2

    :goto_48
    if-ge v5, v11, :cond_5a

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

    goto :goto_48

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 63
    :cond_5d
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

    :cond_7c
    if-nez v16, :cond_99

    .line 66
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v0}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvert()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 67
    invoke-virtual {v13}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mDecodeConfig:Lcom/king/zxing/DecodeConfig;

    invoke-virtual {v2}, Lcom/king/zxing/DecodeConfig;->isSupportLuminanceInvertMultiDecode()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->decodeInternal(Lcom/google/zxing/LuminanceSource;Z)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_94} :catch_96
    .catchall {:try_start_34 .. :try_end_94} :catchall_bf

    move-object v13, v0

    goto :goto_9b

    :catch_96
    move-object/from16 v13, v16

    goto :goto_c7

    :cond_99
    move-object/from16 v13, v16

    :goto_9b
    if-eqz v13, :cond_c7

    .line 71
    :try_start_9d
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
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_be} :catch_c7
    .catchall {:try_start_9d .. :try_end_be} :catchall_bf

    goto :goto_c7

    :catchall_bf
    move-exception v0

    .line 77
    iget-object v2, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 78
    throw v0

    :catch_c6
    const/4 v13, 0x0

    .line 77
    :catch_c7
    :cond_c7
    :goto_c7
    iget-object v0, v1, Lcom/king/zxing/analyze/MultiFormatAnalyzer;->mReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    return-object v13
.end method
