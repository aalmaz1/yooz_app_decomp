.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$PpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field public static final NAL_UNIT_TYPE_AUD:I = 0x9

.field public static final NAL_UNIT_TYPE_IDR:I = 0x5

.field public static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field public static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2

.field public static final NAL_UNIT_TYPE_PPS:I = 0x8

.field public static final NAL_UNIT_TYPE_PREFIX:I = 0xe

.field public static final NAL_UNIT_TYPE_SEI:I = 0x6

.field public static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 207
    fill-array-data v0, :array_20

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 213
    fill-array-data v0, :array_26

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 244
    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .registers 3

    const/4 v0, 0x0

    .line 884
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 885
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 886
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 303
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3b

    .line 307
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    const/4 v7, 0x1

    if-ne v5, v7, :cond_36

    .line 309
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_36

    .line 311
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 312
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_32
    if-nez v5, :cond_36

    add-int/lit8 v3, v3, 0x1

    :cond_36
    if-eqz v5, :cond_39

    move v3, v1

    :cond_39
    move v2, v4

    goto :goto_7

    .line 327
    :cond_3b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static findNalUnit([BII[Z)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    .line 824
    :goto_9
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    .line 829
    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 830
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    .line 832
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    .line 833
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    .line 835
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    .line 839
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_61

    .line 847
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_4a

    goto :goto_5e

    :cond_4a
    add-int/lit8 v6, p1, -0x2

    .line 850
    aget-byte v7, p0, v6

    if-nez v7, :cond_5c

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_5c

    if-ne v5, v2, :cond_5c

    .line 851
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_5c
    add-int/lit8 p1, p1, -0x2

    :goto_5e
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_61
    if-le v0, v3, :cond_76

    add-int/lit8 p1, p2, -0x3

    .line 863
    aget-byte p1, p0, p1

    if-nez p1, :cond_74

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_74

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_74

    goto :goto_8f

    :cond_74
    move p1, v1

    goto :goto_90

    :cond_76
    if-ne v0, v3, :cond_87

    .line 865
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_74

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_74

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_74

    goto :goto_8f

    .line 866
    :cond_87
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_74

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_74

    :goto_8f
    move p1, v2

    :goto_90
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_9f

    add-int/lit8 p1, p2, -0x2

    .line 870
    aget-byte p1, p0, p1

    if-nez p1, :cond_a9

    aget-byte p1, p0, v4

    if-nez p1, :cond_a9

    goto :goto_a7

    .line 871
    :cond_9f
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_a9

    aget-byte p1, p0, v4

    if-nez p1, :cond_a9

    :goto_a7
    move p1, v2

    goto :goto_aa

    :cond_a9
    move p1, v1

    :goto_aa
    aput-boolean p1, p3, v2

    .line 873
    aget-byte p0, p0, v4

    if-nez p0, :cond_b1

    move v1, v2

    :cond_b1
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static findNextUnescapeIndex([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 891
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static getH265NalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 367
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 355
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .registers 5

    const-string/jumbo v0, "video/avc"

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_21

    :cond_f
    const-string/jumbo v0, "video/hevc"

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    :goto_21
    return v1
.end method

.method public static parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 597
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .registers 28

    .line 611
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 612
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 613
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 614
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    const/4 v4, 0x2

    .line 615
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 616
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    const/4 v5, 0x5

    .line 617
    invoke-virtual {v0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v10, v11, :cond_38

    .line 620
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_35

    shl-int v11, v12, v10

    or-int/2addr v9, v11

    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_38
    const/4 v10, 0x6

    new-array v13, v10, [I

    const/4 v11, 0x0

    :goto_3c
    const/16 v14, 0x8

    if-ge v11, v10, :cond_49

    .line 626
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    aput v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 628
    :cond_49
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4f
    if-ge v10, v3, :cond_64

    .line 631
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_59

    add-int/lit8 v11, v11, 0x59

    .line 634
    :cond_59
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_61

    add-int/lit8 v11, v11, 0x8

    :cond_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 638
    :cond_64
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v3, :cond_6f

    rsub-int/lit8 v10, v3, 0x8

    mul-int/2addr v10, v4

    .line 640
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 642
    :cond_6f
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 643
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v2, :cond_7c

    .line 645
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 647
    :cond_7c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 648
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 649
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_b7

    .line 650
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 651
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 652
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 653
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    if-eq v10, v12, :cond_a2

    if-ne v10, v4, :cond_9f

    goto :goto_a2

    :cond_9f
    move/from16 v22, v12

    goto :goto_a4

    :cond_a2
    :goto_a2
    move/from16 v22, v4

    :goto_a4
    if-ne v10, v12, :cond_a9

    move/from16 v23, v4

    goto :goto_ab

    :cond_a9
    move/from16 v23, v12

    :goto_ab
    add-int v18, v18, v19

    mul-int v22, v22, v18

    sub-int v11, v11, v22

    add-int v20, v20, v21

    mul-int v23, v23, v20

    sub-int v17, v17, v23

    :cond_b7
    move/from16 v24, v17

    move/from16 v17, v11

    move/from16 v11, v24

    .line 660
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 661
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 662
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 665
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    if-eqz v21, :cond_d2

    const/16 v21, 0x0

    goto :goto_d4

    :cond_d2
    move/from16 v21, v3

    :goto_d4
    const/16 v22, -0x1

    move/from16 v5, v21

    move/from16 v2, v22

    :goto_da
    if-gt v5, v3, :cond_ee

    .line 666
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 668
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 669
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x1

    goto :goto_da

    .line 671
    :cond_ee
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 672
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 673
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 674
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 675
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 676
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 678
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 679
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 680
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 682
    :cond_10f
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 683
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 685
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 686
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 687
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 688
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 690
    :cond_124
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 691
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_140

    .line 692
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    const/4 v5, 0x0

    :goto_132
    if-ge v5, v3, :cond_140

    add-int/lit8 v12, v20, 0x4

    const/16 v21, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 696
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_132

    :cond_140
    const/16 v21, 0x1

    .line 699
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 704
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1e3

    .line 705
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_189

    .line 706
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/16 v5, 0xff

    if-ne v1, v5, :cond_16d

    const/16 v1, 0x10

    .line 708
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 709
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-eqz v5, :cond_189

    if-eqz v1, :cond_189

    int-to-float v3, v5

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_189

    .line 713
    :cond_16d
    sget-object v5, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v12, v5

    if-ge v1, v12, :cond_175

    .line 714
    aget v3, v5, v1

    goto :goto_189

    .line 716
    :cond_175
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NalUnitUtil"

    invoke-static {v5, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_189
    :goto_189
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_192

    .line 720
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 722
    :cond_192
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1c1

    const/4 v1, 0x3

    .line 723
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 725
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1a4

    move/from16 v4, v21

    .line 726
    :cond_1a4
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 727
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 728
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 729
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 731
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    .line 733
    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    goto :goto_1c4

    :cond_1be
    move/from16 v1, v22

    goto :goto_1c4

    :cond_1c1
    move/from16 v1, v22

    move v4, v1

    .line 736
    :goto_1c4
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_1d0

    .line 737
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 738
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 740
    :cond_1d0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 741
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1db

    mul-int/lit8 v11, v11, 0x2

    :cond_1db
    move/from16 v21, v4

    move v0, v11

    move/from16 v20, v22

    move/from16 v22, v1

    goto :goto_1e8

    :cond_1e3
    move v0, v11

    move/from16 v20, v22

    move/from16 v21, v20

    .line 748
    :goto_1e8
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-object v5, v1

    move/from16 v11, v18

    move/from16 v12, v19

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v2

    invoke-direct/range {v5 .. v22}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(IZIIIII[IIIIIFIIII)V

    return-object v1
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 778
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .registers 4

    .line 791
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 792
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 793
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 794
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 795
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 796
    new-instance v0, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 380
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .registers 35

    .line 393
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 394
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 395
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 396
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 397
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/16 v2, 0x56

    const/16 v7, 0x2c

    const/16 v8, 0xf4

    const/16 v9, 0x7a

    const/16 v10, 0x6e

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/4 v13, 0x1

    const/16 v15, 0x64

    if-eq v3, v15, :cond_52

    if-eq v3, v10, :cond_52

    if-eq v3, v9, :cond_52

    if-eq v3, v8, :cond_52

    if-eq v3, v7, :cond_52

    const/16 v14, 0x53

    if-eq v3, v14, :cond_52

    if-eq v3, v2, :cond_52

    const/16 v14, 0x76

    if-eq v3, v14, :cond_52

    const/16 v14, 0x80

    if-eq v3, v14, :cond_52

    const/16 v14, 0x8a

    if-ne v3, v14, :cond_4a

    goto :goto_52

    :cond_4a
    move v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_8f

    .line 413
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-ne v14, v11, :cond_5d

    .line 415
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    goto :goto_5f

    :cond_5d
    const/16 v16, 0x0

    .line 417
    :goto_5f
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 418
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 419
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 420
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_8f

    if-eq v14, v11, :cond_73

    goto :goto_77

    :cond_73
    const/16 v19, 0xc

    move/from16 v1, v19

    :goto_77
    const/4 v8, 0x0

    :goto_78
    if-ge v8, v1, :cond_8f

    .line 424
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v19

    if-eqz v19, :cond_8a

    const/4 v9, 0x6

    if-ge v8, v9, :cond_85

    move v9, v12

    goto :goto_87

    :cond_85
    const/16 v9, 0x40

    .line 426
    :goto_87
    invoke-static {v0, v9}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    :cond_8a
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x7a

    goto :goto_78

    .line 432
    :cond_8f
    :goto_8f
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 433
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    if-nez v9, :cond_a6

    .line 438
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    move/from16 v21, v3

    move/from16 v24, v8

    goto :goto_d0

    :cond_a6
    if-ne v9, v13, :cond_cc

    .line 440
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    .line 441
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 442
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 443
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    move/from16 v21, v3

    int-to-long v2, v10

    move/from16 v24, v8

    const/4 v10, 0x0

    :goto_bc
    int-to-long v7, v10

    cmp-long v7, v7, v2

    if-gez v7, :cond_c7

    .line 445
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_bc

    :cond_c7
    move/from16 v25, v24

    const/16 v24, 0x0

    goto :goto_d2

    :cond_cc
    move/from16 v21, v3

    const/16 v24, 0x0

    :goto_d0
    const/16 v25, 0x0

    .line 448
    :goto_d2
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    .line 449
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 451
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v13

    .line 452
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    add-int/2addr v3, v13

    .line 453
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v26

    rsub-int/lit8 v8, v26, 0x2

    mul-int/2addr v8, v3

    if-nez v26, :cond_ef

    .line 456
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 459
    :cond_ef
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    mul-int/2addr v2, v12

    mul-int/2addr v8, v12

    .line 462
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 464
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 465
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v27

    .line 466
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v28

    .line 467
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v29

    if-nez v14, :cond_111

    rsub-int/lit8 v14, v26, 0x2

    move/from16 v30, v13

    goto :goto_121

    :cond_111
    if-ne v14, v11, :cond_116

    move/from16 v30, v13

    goto :goto_118

    :cond_116
    const/16 v30, 0x2

    :goto_118
    if-ne v14, v13, :cond_11c

    const/4 v14, 0x2

    goto :goto_11d

    :cond_11c
    move v14, v13

    :goto_11d
    rsub-int/lit8 v31, v26, 0x2

    mul-int v14, v14, v31

    :goto_121
    add-int v3, v3, v27

    mul-int v3, v3, v30

    sub-int/2addr v2, v3

    add-int v28, v28, v29

    mul-int v28, v28, v14

    sub-int v8, v8, v28

    :cond_12c
    move v14, v8

    move/from16 v3, v21

    move v8, v2

    const/16 v2, 0x2c

    if-eq v3, v2, :cond_146

    const/16 v2, 0x56

    if-eq v3, v2, :cond_146

    if-eq v3, v15, :cond_146

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_146

    const/16 v2, 0x7a

    if-eq v3, v2, :cond_146

    const/16 v2, 0xf4

    if-ne v3, v2, :cond_14c

    :cond_146
    and-int/lit8 v2, v4, 0x10

    if-eqz v2, :cond_14c

    const/4 v2, 0x0

    goto :goto_14d

    :cond_14c
    move v2, v12

    .line 500
    :goto_14d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    const/16 v19, -0x1

    const/high16 v20, 0x3f800000    # 1.0f

    if-eqz v15, :cond_228

    .line 502
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v15

    if-eqz v15, :cond_194

    const/16 v15, 0x8

    .line 504
    invoke-virtual {v0, v15}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    const/16 v15, 0xff

    if-ne v10, v15, :cond_178

    .line 506
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 507
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    if-eqz v10, :cond_194

    if-eqz v12, :cond_194

    int-to-float v10, v10

    int-to-float v12, v12

    div-float v20, v10, v12

    goto :goto_194

    .line 511
    :cond_178
    sget-object v12, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v15, v12

    if-ge v10, v15, :cond_180

    .line 512
    aget v20, v12, v10

    goto :goto_194

    .line 514
    :cond_180
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "NalUnitUtil"

    invoke-static {v12, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_194
    :goto_194
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_19d

    .line 518
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 520
    :cond_19d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1cd

    .line 521
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 523
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1ad

    goto :goto_1ae

    :cond_1ad
    const/4 v13, 0x2

    .line 524
    :goto_1ae
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1ca

    const/16 v10, 0x8

    .line 525
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    .line 526
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 527
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 529
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v19

    .line 531
    invoke-static {v12}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v10

    goto :goto_1d0

    :cond_1ca
    move/from16 v10, v19

    goto :goto_1d0

    :cond_1cd
    move/from16 v10, v19

    move v13, v10

    .line 534
    :goto_1d0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1dc

    .line 535
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 536
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 538
    :cond_1dc
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1e7

    const/16 v11, 0x41

    .line 539
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 541
    :cond_1e7
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_1f0

    .line 543
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 545
    :cond_1f0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_1f9

    .line 547
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    :cond_1f9
    if-nez v11, :cond_1fd

    if-eqz v12, :cond_200

    .line 550
    :cond_1fd
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 552
    :cond_200
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 553
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_21f

    .line 554
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 555
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 556
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 557
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 558
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 559
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 560
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_21f
    move/from16 v22, v2

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v13

    goto :goto_230

    :cond_228
    move/from16 v22, v2

    move/from16 v21, v19

    move/from16 v10, v20

    move/from16 v20, v21

    .line 564
    :goto_230
    new-instance v0, Landroidx/media3/container/NalUnitUtil$SpsData;

    move-object v2, v0

    move/from16 v23, v9

    move v9, v14

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v16

    move/from16 v14, v26

    move v15, v1

    move/from16 v16, v23

    move/from16 v17, v24

    move/from16 v18, v25

    invoke-direct/range {v2 .. v22}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v0
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    move v3, v0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 929
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 931
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 933
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 936
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    move v6, v0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 939
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    move v5, v4

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static skipHrdParameters(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .registers 3

    .line 912
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    .line 913
    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1a

    .line 915
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 916
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 917
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const/16 v0, 0x14

    .line 923
    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    return-void
.end method

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_5
    if-ge v2, p1, :cond_19

    if-eqz v0, :cond_12

    .line 903
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 904
    rem-int/lit16 v0, v0, 0x100

    :cond_12
    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method private static skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .registers 20

    .line 953
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, -0x1

    move v6, v1

    move v5, v4

    :goto_c
    if-ge v6, v0, :cond_111

    const/4 v7, 0x1

    if-eqz v6, :cond_19

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_19

    move v8, v7

    goto :goto_1a

    :cond_19
    move v8, v1

    :goto_1a
    if-eqz v8, :cond_c5

    add-int v8, v4, v5

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 973
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 976
    new-array v11, v10, [Z

    move v12, v1

    :goto_31
    if-gt v12, v8, :cond_45

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_40

    .line 979
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    aput-boolean v13, v11, v12

    goto :goto_42

    .line 982
    :cond_40
    aput-boolean v7, v11, v12

    :goto_42
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 989
    :cond_45
    new-array v7, v10, [I

    .line 990
    new-array v10, v10, [I

    add-int/lit8 v12, v5, -0x1

    move v13, v1

    :goto_4c
    if-ltz v12, :cond_61

    .line 992
    aget v14, v3, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_5e

    add-int v15, v4, v12

    .line 993
    aget-boolean v15, v11, v15

    if-eqz v15, :cond_5e

    add-int/lit8 v15, v13, 0x1

    .line 994
    aput v14, v7, v13

    move v13, v15

    :cond_5e
    add-int/lit8 v12, v12, -0x1

    goto :goto_4c

    :cond_61
    if-gez v9, :cond_6c

    .line 997
    aget-boolean v12, v11, v8

    if-eqz v12, :cond_6c

    add-int/lit8 v12, v13, 0x1

    .line 998
    aput v9, v7, v13

    move v13, v12

    :cond_6c
    move v12, v1

    :goto_6d
    if-ge v12, v4, :cond_80

    .line 1001
    aget v14, v2, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_7d

    .line 1002
    aget-boolean v15, v11, v12

    if-eqz v15, :cond_7d

    add-int/lit8 v15, v13, 0x1

    .line 1003
    aput v14, v7, v13

    move v13, v15

    :cond_7d
    add-int/lit8 v12, v12, 0x1

    goto :goto_6d

    .line 1007
    :cond_80
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    move v14, v1

    :goto_87
    if-ltz v12, :cond_9b

    .line 1011
    aget v15, v2, v12

    add-int/2addr v15, v9

    if-lez v15, :cond_98

    .line 1012
    aget-boolean v16, v11, v12

    if-eqz v16, :cond_98

    add-int/lit8 v16, v14, 0x1

    .line 1013
    aput v15, v10, v14

    move/from16 v14, v16

    :cond_98
    add-int/lit8 v12, v12, -0x1

    goto :goto_87

    :cond_9b
    if-lez v9, :cond_a6

    .line 1016
    aget-boolean v2, v11, v8

    if-eqz v2, :cond_a6

    add-int/lit8 v2, v14, 0x1

    .line 1017
    aput v9, v10, v14

    move v14, v2

    :cond_a6
    move v2, v1

    :goto_a7
    if-ge v2, v5, :cond_bc

    .line 1020
    aget v8, v3, v2

    add-int/2addr v8, v9

    if-lez v8, :cond_b9

    add-int v12, v4, v2

    .line 1021
    aget-boolean v12, v11, v12

    if-eqz v12, :cond_b9

    add-int/lit8 v12, v14, 0x1

    .line 1022
    aput v8, v10, v14

    move v14, v12

    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 1026
    :cond_bc
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v3, v2

    move-object v2, v7

    move v4, v13

    move v5, v14

    goto :goto_10d

    .line 1028
    :cond_c5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 1030
    new-array v4, v2, [I

    move v5, v1

    :goto_d0
    if-ge v5, v2, :cond_e8

    if-lez v5, :cond_d9

    add-int/lit8 v8, v5, -0x1

    .line 1033
    aget v8, v4, v8

    goto :goto_da

    :cond_d9
    move v8, v1

    :goto_da
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v8, v9

    aput v8, v4, v5

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 1036
    :cond_e8
    new-array v5, v3, [I

    move v8, v1

    :goto_eb
    if-ge v8, v3, :cond_103

    if-lez v8, :cond_f4

    add-int/lit8 v9, v8, -0x1

    .line 1039
    aget v9, v5, v9

    goto :goto_f5

    :cond_f4
    move v9, v1

    :goto_f5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_eb

    :cond_103
    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v5

    move v5, v3

    move-object/from16 v3, v18

    :goto_10d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_111
    return-void
.end method

.method public static unescapeStream([BI)I
    .registers 10

    .line 258
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_28

    .line 262
    :try_start_8
    invoke-static {p0, v2, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 264
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1c

    .line 266
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 267
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 269
    :cond_1c
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :catchall_26
    move-exception p0

    goto :goto_4c

    :cond_28
    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_2c
    if-ge v2, v3, :cond_45

    .line 278
    sget-object v6, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 280
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 282
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 283
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    sub-int v1, p1, v4

    .line 288
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    monitor-exit v0

    return p1

    .line 290
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_26

    throw p0
.end method
