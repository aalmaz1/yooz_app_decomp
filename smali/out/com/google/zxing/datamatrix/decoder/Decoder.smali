.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method

.method private correctErrors([BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 111
    array-length v0, p1

    .line 113
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_10

    .line 115
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 119
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount([II)I

    move-result v0
    :try_end_18
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_10 .. :try_end_18} :catch_23

    :goto_18
    if-ge v2, p2, :cond_22

    .line 126
    aget v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    return v0

    .line 121
    :catch_23
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 67
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object p1

    .line 70
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v0

    .line 72
    invoke-static {v0, p1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_15
    if-ge v2, v0, :cond_21

    aget-object v4, p1, v2

    .line 77
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 79
    :cond_21
    new-array v0, v3, [B

    .line 82
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_26
    if-ge v3, v2, :cond_47

    .line 85
    aget-object v5, p1, v3

    .line 86
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v6

    .line 87
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v5

    .line 88
    invoke-direct {p0, v6, v5}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)I

    move-result v7

    add-int/2addr v4, v7

    move v7, v1

    :goto_38
    if-ge v7, v5, :cond_44

    mul-int v8, v7, v2

    add-int/2addr v8, v3

    .line 91
    aget-byte v9, v6, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 96
    :cond_47
    invoke-static {v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    return-object p1
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method
