.class final Landroidx/media3/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;,
        Landroidx/media3/extractor/mp4/AtomParsers$StsdData;,
        Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;,
        Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "OpusHead"

    .line 104
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    .line 1532
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .registers 14

    .line 2123
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 2124
    invoke-static {v2, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    .line 2125
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 2126
    invoke-static {v5, v3, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 2127
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_26

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_26

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_26

    cmp-long p0, p5, p1

    if-gtz p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1
.end method

.method private static canTrimSamplesWithTimestampChange(I)Z
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1909
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    const/4 v4, 0x0

    .line 1910
    invoke-static {v3, v4}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_f
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_2d

    .line 1912
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1913
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1e

    move v4, v1

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    const-string v5, "childAtomSize must be positive"

    .line 1914
    invoke-static {v4, v5}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1915
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2b

    return v0

    :cond_2b
    add-int/2addr v0, v3

    goto :goto_f

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .registers 2

    const v0, 0x736f756e

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const v0, 0x76696465

    if-ne p0, v0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const v0, 0x74657874

    if-eq p0, v0, :cond_2c

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2c

    const v0, 0x73756274

    if-eq p0, v0, :cond_2c

    const v0, 0x636c6370

    if-ne p0, v0, :cond_23

    goto :goto_2c

    :cond_23
    const v0, 0x6d657461

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x5

    return p0

    :cond_2a
    const/4 p0, -0x1

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x3

    return p0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 282
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 287
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 288
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    .line 291
    :cond_13
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private static parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    add-int/2addr v7, v8

    .line 1600
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_21

    .line 1604
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    .line 1605
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_25

    .line 1607
    :cond_21
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v10, 0x0

    :goto_25
    const/16 v13, 0x10

    const/4 v14, -0x1

    const/4 v15, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_92

    if-ne v10, v12, :cond_31

    goto/16 :goto_92

    :cond_31
    if-ne v10, v11, :cond_91

    .line 1630
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1632
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v7, v9

    .line 1633
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 1635
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 1637
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    and-int/lit8 v18, v17, 0x1

    if-eqz v18, :cond_55

    move/from16 v18, v12

    goto :goto_57

    :cond_55
    const/16 v18, 0x0

    :goto_57
    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_5e

    move/from16 v17, v12

    goto :goto_60

    :cond_5e
    const/16 v17, 0x0

    :goto_60
    const/16 v11, 0x20

    if-nez v18, :cond_87

    if-ne v10, v8, :cond_68

    const/4 v10, 0x3

    goto :goto_8c

    :cond_68
    if-ne v10, v13, :cond_71

    if-eqz v17, :cond_6f

    const/high16 v10, 0x10000000

    goto :goto_8c

    :cond_6f
    const/4 v10, 0x2

    goto :goto_8c

    :cond_71
    const/16 v13, 0x18

    if-ne v10, v13, :cond_7d

    if-eqz v17, :cond_7a

    const/high16 v10, 0x50000000

    goto :goto_8c

    :cond_7a
    const/16 v10, 0x15

    goto :goto_8c

    :cond_7d
    if-ne v10, v11, :cond_8b

    if-eqz v17, :cond_84

    const/high16 v10, 0x60000000

    goto :goto_8c

    :cond_84
    const/16 v10, 0x16

    goto :goto_8c

    :cond_87
    if-ne v10, v11, :cond_8b

    move v10, v15

    goto :goto_8c

    :cond_8b
    move v10, v14

    .line 1653
    :goto_8c
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x0

    goto :goto_af

    :cond_91
    return-void

    .line 1618
    :cond_92
    :goto_92
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1619
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1621
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v7

    .line 1623
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    sub-int/2addr v8, v15

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1624
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-ne v10, v12, :cond_ae

    .line 1627
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_ae
    move v10, v14

    .line 1659
    :goto_af
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v11

    const v13, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v13, :cond_e1

    .line 1663
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_de

    .line 1665
    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v5, :cond_cc

    const/4 v5, 0x0

    goto :goto_d6

    .line 1669
    :cond_cc
    iget-object v12, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v5

    .line 1670
    :goto_d6
    iget-object v12, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v13, v12, p9

    .line 1672
    :cond_de
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_e1
    const v12, 0x61632d33

    const-string v13, "audio/mhm1"

    if-ne v15, v12, :cond_ec

    const-string v12, "audio/ac3"

    goto/16 :goto_1aa

    :cond_ec
    const v12, 0x65632d33

    if-ne v15, v12, :cond_f5

    const-string v12, "audio/eac3"

    goto/16 :goto_1aa

    :cond_f5
    const v12, 0x61632d34

    if-ne v15, v12, :cond_fe

    const-string v12, "audio/ac4"

    goto/16 :goto_1aa

    :cond_fe
    const v12, 0x64747363

    if-ne v15, v12, :cond_107

    const-string v12, "audio/vnd.dts"

    goto/16 :goto_1aa

    :cond_107
    const v12, 0x64747368

    if-eq v15, v12, :cond_1a8

    const v12, 0x6474736c

    if-ne v15, v12, :cond_113

    goto/16 :goto_1a8

    :cond_113
    const v12, 0x64747365

    if-ne v15, v12, :cond_11c

    const-string v12, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1aa

    :cond_11c
    const v12, 0x64747378

    if-ne v15, v12, :cond_125

    const-string v12, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_1aa

    :cond_125
    const v12, 0x73616d72

    if-ne v15, v12, :cond_12e

    const-string v12, "audio/3gpp"

    goto/16 :goto_1aa

    :cond_12e
    const v12, 0x73617762

    if-ne v15, v12, :cond_137

    const-string v12, "audio/amr-wb"

    goto/16 :goto_1aa

    :cond_137
    const v12, 0x736f7774

    const-string v22, "audio/raw"

    if-ne v15, v12, :cond_143

    :goto_13e
    move-object/from16 v12, v22

    const/4 v10, 0x2

    goto/16 :goto_1aa

    :cond_143
    const v12, 0x74776f73

    if-ne v15, v12, :cond_14e

    move-object/from16 v12, v22

    const/high16 v10, 0x10000000

    goto/16 :goto_1aa

    :cond_14e
    const v12, 0x6c70636d

    if-ne v15, v12, :cond_159

    if-ne v10, v14, :cond_156

    goto :goto_13e

    :cond_156
    move-object/from16 v12, v22

    goto :goto_1aa

    :cond_159
    const v12, 0x2e6d7032

    if-eq v15, v12, :cond_1a5

    const v12, 0x2e6d7033

    if-ne v15, v12, :cond_164

    goto :goto_1a5

    :cond_164
    const v12, 0x6d686131

    if-ne v15, v12, :cond_16c

    const-string v12, "audio/mha1"

    goto :goto_1aa

    :cond_16c
    const v12, 0x6d686d31

    if-ne v15, v12, :cond_173

    move-object v12, v13

    goto :goto_1aa

    :cond_173
    const v12, 0x616c6163

    if-ne v15, v12, :cond_17b

    const-string v12, "audio/alac"

    goto :goto_1aa

    :cond_17b
    const v12, 0x616c6177

    if-ne v15, v12, :cond_183

    const-string v12, "audio/g711-alaw"

    goto :goto_1aa

    :cond_183
    const v12, 0x756c6177

    if-ne v15, v12, :cond_18b

    const-string v12, "audio/g711-mlaw"

    goto :goto_1aa

    :cond_18b
    const v12, 0x4f707573

    if-ne v15, v12, :cond_193

    const-string v12, "audio/opus"

    goto :goto_1aa

    :cond_193
    const v12, 0x664c6143

    if-ne v15, v12, :cond_19b

    const-string v12, "audio/flac"

    goto :goto_1aa

    :cond_19b
    const v12, 0x6d6c7061

    if-ne v15, v12, :cond_1a3

    const-string v12, "audio/true-hd"

    goto :goto_1aa

    :cond_1a3
    const/4 v12, 0x0

    goto :goto_1aa

    :cond_1a5
    :goto_1a5
    const-string v12, "audio/mpeg"

    goto :goto_1aa

    :cond_1a8
    :goto_1a8
    const-string v12, "audio/vnd.dts.hd"

    :goto_1aa
    move/from16 p7, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_1b0
    sub-int v10, v11, v1

    if-ge v10, v2, :cond_402

    .line 1732
    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1733
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    if-lez v10, :cond_1bf

    const/4 v1, 0x1

    goto :goto_1c0

    :cond_1bf
    const/4 v1, 0x0

    :goto_1c0
    const-string v2, "childAtomSize must be positive"

    .line 1734
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1735
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x6d686143

    if-ne v1, v2, :cond_227

    add-int/lit8 v1, v11, 0x8

    .line 1740
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x1

    .line 1741
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1742
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1743
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1745
    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1f7

    new-array v15, v1, [Ljava/lang/Object;

    .line 1746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x0

    aput-object v2, v15, v1

    const-string v2, "mhm1.%02X"

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    move-object/from16 p9, v13

    goto :goto_20a

    :cond_1f7
    move v15, v1

    move-object/from16 p9, v13

    const/4 v1, 0x0

    new-array v13, v15, [Ljava/lang/Object;

    .line 1747
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v1

    const-string v2, "mha1.%02X"

    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 1748
    :goto_20a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 1749
    new-array v13, v2, [B

    .line 1750
    invoke-virtual {v0, v13, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v14, :cond_21b

    .line 1753
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object v14, v2

    goto :goto_250

    .line 1757
    :cond_21b
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v13, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v14, v1

    goto :goto_250

    :cond_227
    move-object/from16 p9, v13

    const v2, 0x6d686150

    if-ne v1, v2, :cond_25f

    add-int/lit8 v1, v11, 0x8

    .line 1762
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1763
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-lez v1, :cond_250

    .line 1765
    new-array v2, v1, [B

    const/4 v13, 0x0

    .line 1766
    invoke-virtual {v0, v2, v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v14, :cond_246

    .line 1768
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    goto :goto_250

    .line 1773
    :cond_246
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    :cond_250
    :goto_250
    const/4 v2, -0x1

    :goto_251
    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x0

    const v19, 0x616c6163

    const/16 v20, 0x2

    const/16 v21, 0x1

    goto/16 :goto_3f9

    :cond_25f
    const v2, 0x65736473

    if-eq v1, v2, :cond_3af

    if-eqz p6, :cond_26d

    const v13, 0x77617665

    if-ne v1, v13, :cond_26d

    goto/16 :goto_3af

    :cond_26d
    const v2, 0x64616333

    if-ne v1, v2, :cond_28f

    add-int/lit8 v1, v11, 0x8

    .line 1805
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1807
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroidx/media3/extractor/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    :goto_281
    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x1

    goto/16 :goto_3ab

    :cond_28f
    const v2, 0x64656333

    if-ne v1, v2, :cond_2a4

    add-int/lit8 v1, v11, 0x8

    .line 1809
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1811
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroidx/media3/extractor/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_281

    :cond_2a4
    const v2, 0x64616334

    if-ne v1, v2, :cond_2b9

    add-int/lit8 v1, v11, 0x8

    .line 1813
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1815
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Landroidx/media3/extractor/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_281

    :cond_2b9
    const v2, 0x646d6c70

    if-ne v1, v2, :cond_2d9

    if-lez v8, :cond_2c4

    move v7, v8

    const/4 v2, -0x1

    const/4 v9, 0x2

    goto :goto_251

    .line 1818
    :cond_2c4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2d9
    const/4 v13, 0x0

    const v2, 0x64647473

    if-eq v1, v2, :cond_37c

    const v2, 0x75647473

    if-ne v1, v2, :cond_2e6

    goto/16 :goto_37c

    :cond_2e6
    const v2, 0x644f7073

    if-ne v1, v2, :cond_304

    add-int/lit8 v1, v10, -0x8

    .line 1841
    sget-object v2, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v14, v2

    add-int/2addr v14, v1

    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v13, v11, 0x8

    .line 1842
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1843
    array-length v2, v2

    invoke-virtual {v0, v14, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1844
    invoke-static {v14}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v14

    goto/16 :goto_250

    :cond_304
    const v2, 0x64664c61

    if-ne v1, v2, :cond_33b

    add-int/lit8 v1, v10, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 1847
    new-array v2, v2, [B

    const/16 v13, 0x66

    const/4 v14, 0x0

    .line 1848
    aput-byte v13, v2, v14

    const/16 v13, 0x4c

    const/16 v21, 0x1

    .line 1849
    aput-byte v13, v2, v21

    const/16 v13, 0x61

    const/16 v20, 0x2

    .line 1850
    aput-byte v13, v2, v20

    const/16 v13, 0x43

    const/16 v16, 0x3

    .line 1851
    aput-byte v13, v2, v16

    add-int/lit8 v13, v11, 0xc

    .line 1852
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v13, 0x4

    .line 1853
    invoke-virtual {v0, v2, v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1854
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    const/4 v2, -0x1

    const/16 v17, 0x0

    const v19, 0x616c6163

    goto/16 :goto_3f9

    :cond_33b
    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v20, 0x2

    const/16 v21, 0x1

    if-ne v1, v2, :cond_379

    add-int/lit8 v1, v10, -0xc

    .line 1857
    new-array v7, v1, [B

    add-int/lit8 v9, v11, 0xc

    .line 1858
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v9, 0x0

    .line 1859
    invoke-virtual {v0, v7, v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1863
    invoke-static {v7}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v1

    .line 1864
    iget-object v14, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1865
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1866
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    move/from16 v19, v2

    move/from16 v17, v9

    const/4 v2, -0x1

    move v9, v1

    move/from16 v23, v14

    move-object v14, v7

    move/from16 v7, v23

    goto/16 :goto_3f9

    :cond_379
    const/16 v17, 0x0

    goto :goto_3ab

    :cond_37c
    :goto_37c
    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x1

    .line 1828
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1830
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1831
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1832
    invoke-virtual {v1, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1833
    invoke-virtual {v1, v7}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1834
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1835
    invoke-virtual {v1, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1836
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    :goto_3ab
    move/from16 v19, v2

    const/4 v2, -0x1

    goto :goto_3f9

    :cond_3af
    :goto_3af
    const/4 v13, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x0

    const v19, 0x616c6163

    const/16 v20, 0x2

    const/16 v21, 0x1

    if-ne v1, v2, :cond_3bf

    move v1, v11

    goto :goto_3c3

    .line 1781
    :cond_3bf
    invoke-static {v0, v2, v11, v10}, Landroidx/media3/extractor/mp4/AtomParsers;->findBoxPosition(Landroidx/media3/common/util/ParsableByteArray;III)I

    move-result v1

    :goto_3c3
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3f9

    .line 1783
    invoke-static {v0, v1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v22

    .line 1784
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$300(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v12

    .line 1785
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$400(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v1

    if-eqz v1, :cond_3f9

    const-string v14, "audio/vorbis"

    .line 1787
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e1

    .line 1789
    invoke-static {v1}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisCsdFromEsdsInitializationData([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    goto :goto_3f9

    :cond_3e1
    const-string v14, "audio/mp4a-latm"

    .line 1791
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3f5

    .line 1795
    invoke-static {v1}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v7

    .line 1796
    iget v9, v7, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 1797
    iget v14, v7, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 1798
    iget-object v15, v7, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move v7, v9

    move v9, v14

    .line 1800
    :cond_3f5
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    :cond_3f9
    :goto_3f9
    add-int/2addr v11, v10

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v13, p9

    goto/16 :goto_1b0

    .line 1871
    :cond_402
    iget-object v0, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_452

    if-eqz v12, :cond_452

    .line 1872
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1874
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1875
    invoke-virtual {v0, v12}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1876
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1877
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v10, p7

    .line 1879
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1880
    invoke-virtual {v0, v14}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1881
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1882
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v22, :cond_44c

    .line 1886
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$600(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1887
    invoke-static/range {v22 .. v22}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$500(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 1890
    :cond_44c
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    :cond_452
    return-void
.end method

.method private static parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;
    .registers 16

    .line 1412
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1413
    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 1414
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/4 p0, 0x1

    .line 1418
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 v3, 0x3

    .line 1419
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v5, 0x6

    .line 1420
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1421
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 1422
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x2

    if-ne v4, v9, :cond_45

    if-eqz v5, :cond_45

    if-eqz v6, :cond_3a

    move v4, v7

    goto :goto_3b

    :cond_3a
    move v4, v8

    .line 1424
    :goto_3b
    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v6, :cond_41

    move v8, v7

    .line 1425
    :cond_41
    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    goto :goto_56

    :cond_45
    if-gt v4, v9, :cond_56

    if-eqz v5, :cond_4b

    move v4, v8

    goto :goto_4c

    :cond_4b
    move v4, v2

    .line 1427
    :goto_4c
    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v5, :cond_52

    goto :goto_53

    :cond_52
    move v8, v2

    .line 1428
    :goto_53
    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    :cond_56
    :goto_56
    const/16 v4, 0xd

    .line 1432
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1435
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/4 v5, 0x4

    .line 1436
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const-string v8, "AtomParsers"

    if-eq v6, p0, :cond_7e

    .line 1438
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported obu_type: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1441
    :cond_7e
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_8e

    const-string p0, "Unsupported obu_extension_flag"

    .line 1442
    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1445
    :cond_8e
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 1446
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    if-eqz v6, :cond_a9

    .line 1448
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v10, 0x7f

    if-le v6, v10, :cond_a9

    const-string p0, "Excessive obu_size"

    .line 1449
    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1453
    :cond_a9
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 1454
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 1455
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_c0

    const-string p0, "Unsupported reduced_still_picture_header"

    .line 1456
    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1459
    :cond_c0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_d0

    const-string p0, "Unsupported timing_info_present_flag"

    .line 1460
    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    .line 1463
    :cond_d0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_e0

    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 1464
    invoke-static {v8, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0

    :cond_e0
    const/4 v8, 0x5

    .line 1467
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_e7
    const/4 v13, 0x7

    if-gt v12, v10, :cond_f9

    .line 1469
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1470
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v14

    if-le v14, v13, :cond_f6

    .line 1472
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_f6
    add-int/lit8 v12, v12, 0x1

    goto :goto_e7

    .line 1475
    :cond_f9
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 1476
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 1477
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/2addr v5, p0

    .line 1478
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1479
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_112

    .line 1480
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1482
    :cond_112
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1483
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 1485
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1488
    :cond_11e
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_126

    move v7, v9

    goto :goto_12a

    .line 1490
    :cond_126
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    :goto_12a
    if-lez v7, :cond_135

    .line 1492
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_135

    .line 1493
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_135
    if-eqz v5, :cond_13a

    .line 1497
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1499
    :cond_13a
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 1501
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-ne v6, v9, :cond_148

    if-eqz v3, :cond_148

    .line 1503
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_148
    if-eq v6, p0, :cond_151

    .line 1506
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_151

    move v11, p0

    .line 1508
    :cond_151
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_188

    .line 1509
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 1510
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 1511
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v11, :cond_16d

    if-ne v3, p0, :cond_16d

    if-ne v5, v4, :cond_16d

    if-nez v2, :cond_16d

    move v1, p0

    goto :goto_171

    .line 1518
    :cond_16d
    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 1520
    :goto_171
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v2

    if-ne v1, p0, :cond_17c

    goto :goto_17d

    :cond_17c
    move p0, v9

    .line 1521
    :goto_17d
    invoke-virtual {v2, p0}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object p0

    .line 1523
    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    .line 1522
    invoke-virtual {p0, v1}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 1525
    :cond_188
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_9
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3d

    .line 2014
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2015
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 2016
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_26

    .line 2018
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3b

    :cond_26
    const v10, 0x7363686d

    if-ne v9, v10, :cond_34

    const/4 v4, 0x4

    .line 2020
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2022
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :cond_34
    const v10, 0x73636869

    if-ne v9, v10, :cond_3b

    move v5, v0

    move v7, v8

    :cond_3b
    :goto_3b
    add-int/2addr v0, v8

    goto :goto_9

    :cond_3d
    const-string p1, "cenc"

    .line 2030
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbc1"

    .line 2031
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cens"

    .line 2032
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    const-string p1, "cbcs"

    .line 2033
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object v3

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    if-eqz v6, :cond_64

    move p2, p1

    goto :goto_65

    :cond_64
    move p2, v2

    :goto_65
    const-string v0, "frma atom is mandatory"

    .line 2034
    invoke-static {p2, v0}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_6e

    move p2, p1

    goto :goto_6f

    :cond_6e
    move p2, v2

    :goto_6f
    const-string v0, "schi atom is mandatory"

    .line 2035
    invoke-static {p2, v0}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2039
    invoke-static {p0, v5, v7, v4}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_7b

    move v2, p1

    :cond_7b
    const-string p1, "tenc atom is mandatory"

    .line 2041
    invoke-static {v2, p1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 2042
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1556
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 1560
    :cond_b
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1561
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1562
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1563
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1564
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1565
    new-array v2, v1, [J

    .line 1566
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_56

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2d

    .line 1569
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_31
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_3a

    .line 1570
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_3f
    aput-wide v6, v3, v4

    .line 1571
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x2

    .line 1576
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1574
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1578
    :cond_56
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .registers 15

    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x4

    add-int/2addr p1, v0

    .line 1926
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1928
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1929
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    const/4 v1, 0x2

    .line 1930
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1932
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1d

    .line 1934
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1d
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_28

    .line 1937
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_28
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2f

    .line 1940
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1944
    :cond_2f
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1945
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    .line 1948
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1949
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "audio/mpeg"

    .line 1950
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "audio/vnd.dts"

    .line 1951
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "audio/vnd.dts.hd"

    .line 1952
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_89

    .line 1960
    :cond_56
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1961
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 1962
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 1965
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1966
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p1

    .line 1967
    new-array v6, p1, [B

    const/4 v2, 0x0

    .line 1968
    invoke-virtual {p0, v6, v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1971
    new-instance p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const-wide/16 v7, 0x0

    cmp-long p1, v4, v7

    const-wide/16 v9, -0x1

    if-lez p1, :cond_7a

    move-wide v11, v4

    goto :goto_7b

    :cond_7a
    move-wide v11, v9

    :goto_7b
    cmp-long p1, v0, v7

    if-lez p1, :cond_81

    move-wide v7, v0

    goto :goto_82

    :cond_81
    move-wide v7, v9

    :goto_82
    move-object v2, p0

    move-object v4, v6

    move-wide v5, v11

    .line 1975
    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 1953
    :cond_89
    :goto_89
    new-instance p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .registers 4

    .line 2111
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 2114
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x10

    .line 900
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 901
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .registers 4

    const/16 v0, 0x8

    .line 801
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    :cond_a
    :goto_a
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1a

    .line 804
    invoke-static {p0}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 806
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 809
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x0

    goto :goto_27

    :cond_22
    new-instance p0, Landroidx/media3/common/Metadata;

    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_27
    return-object p0
.end method

.method private static parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 927
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 928
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 929
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_11

    move v2, v0

    goto :goto_13

    :cond_11
    const/16 v2, 0x10

    .line 930
    :goto_13
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 931
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1d

    const/4 v0, 0x4

    .line 932
    :cond_1d
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 933
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 939
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroidx/media3/common/Metadata;
    .registers 11

    const v0, 0x68646c72    # 4.3148E24f

    .line 223
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 224
    invoke-virtual {p0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 225
    invoke-virtual {p0, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_a2

    if-eqz v1, :cond_a2

    if-eqz p0, :cond_a2

    .line 226
    iget-object v0, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 229
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_a2

    .line 235
    :cond_29
    iget-object v0, v1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 236
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 237
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 238
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_37
    const/16 v5, 0x8

    if-ge v4, v1, :cond_4d

    .line 240
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 241
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 243
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 247
    :cond_4d
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 248
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    :goto_57
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_96

    .line 251
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 252
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 253
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7d

    if-ge v7, v1, :cond_7d

    .line 255
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 258
    invoke-static {p0, v8, v7}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media3/common/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_91

    .line 260
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 263
    :cond_7d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    :goto_91
    add-int/2addr v4, v6

    .line 265
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_57

    .line 267
    :cond_96
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9d

    goto :goto_a2

    :cond_9d
    new-instance v2, Landroidx/media3/common/Metadata;

    invoke-direct {v2, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :cond_a2
    :goto_a2
    return-object v2
.end method

.method private static parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/AtomParsers$StsdData;)V
    .registers 5

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x8

    .line 1537
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_28

    .line 1539
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1540
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 1542
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    :cond_28
    return-void
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .registers 12

    const/16 v0, 0x8

    .line 198
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 200
    invoke-static {v0}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    if-nez v0, :cond_18

    .line 204
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 205
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_20

    .line 207
    :cond_18
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    .line 208
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    :goto_20
    move-wide v5, v0

    move-wide v7, v2

    .line 211
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 212
    new-instance p0, Landroidx/media3/container/Mp4TimestampData;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object p0
.end method

.method private static parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F
    .registers 2

    add-int/lit8 p1, p1, 0x8

    .line 1582
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1583
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1584
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B
    .registers 7

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_22

    .line 2098
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2099
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2100
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_20

    .line 2102
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_20
    add-int/2addr v0, v1

    goto :goto_2

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1986
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_4
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2b

    .line 1988
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1989
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const-string v3, "childAtomSize must be positive"

    .line 1990
    invoke-static {v2, v3}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1991
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_29

    .line 1995
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/2addr v0, v1

    goto :goto_4

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .registers 15

    add-int/lit8 v0, p1, 0x8

    :goto_2
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_64

    .line 2053
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2054
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 2055
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_62

    .line 2057
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 2058
    invoke-static {p1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 2059
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 2063
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v8, v0

    move v9, v8

    goto :goto_38

    .line 2065
    :cond_2c
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 2069
    :goto_38
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_40

    move v4, p2

    goto :goto_41

    :cond_40
    move v4, v0

    .line 2070
    :goto_41
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 2072
    invoke-virtual {p0, v7, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_59

    if-nez v6, :cond_59

    .line 2075
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 2076
    new-array v2, p1, [B

    .line 2077
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_59
    move-object v10, v2

    .line 2079
    new-instance p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_62
    add-int/2addr v0, v1

    goto :goto_2

    :cond_64
    return-object v2
.end method

.method private static parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 396
    invoke-virtual {v0, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 398
    new-instance v5, Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v6, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-direct {v5, v3, v6}, Landroidx/media3/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;Landroidx/media3/common/Format;)V

    goto :goto_25

    :cond_17
    const v3, 0x73747a32

    .line 400
    invoke-virtual {v0, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_53d

    .line 405
    new-instance v5, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Landroidx/media3/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V

    .line 408
    :goto_25
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_40

    .line 410
    new-instance v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    const/4 v4, 0x0

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_40
    const v7, 0x7374636f

    .line 422
    invoke-virtual {v0, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_59

    const v7, 0x636f3634

    .line 425
    invoke-virtual {v0, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move v9, v8

    goto :goto_5a

    :cond_59
    move v9, v6

    .line 427
    :goto_5a
    iget-object v7, v7, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v10, 0x73747363

    .line 429
    invoke-virtual {v0, v10}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v10, v10, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v11, 0x73747473

    .line 431
    invoke-virtual {v0, v11}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    invoke-static {v11}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const v12, 0x73747373

    .line 433
    invoke-virtual {v0, v12}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    if-eqz v12, :cond_86

    .line 434
    iget-object v12, v12, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_87

    :cond_86
    const/4 v12, 0x0

    :goto_87
    const v13, 0x63747473

    .line 436
    invoke-virtual {v0, v13}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 437
    iget-object v0, v0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_94

    :cond_93
    const/4 v0, 0x0

    .line 440
    :goto_94
    new-instance v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v10, v7, v9}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    const/16 v7, 0xc

    .line 443
    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 444
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v8

    .line 445
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 446
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_b5

    .line 453
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 454
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_b6

    :cond_b5
    move v15, v6

    :goto_b6
    const/4 v4, -0x1

    if-eqz v12, :cond_cd

    .line 460
    invoke-virtual {v12, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 461
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-lez v7, :cond_c9

    .line 463
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_d0

    :cond_c9
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_d0

    :cond_cd
    move/from16 v16, v4

    move v7, v6

    .line 471
    :goto_d0
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v6

    .line 472
    iget-object v8, v1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_fc

    const-string v4, "audio/raw"

    .line 475
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f2

    const-string v4, "audio/g711-mlaw"

    .line 476
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f2

    const-string v4, "audio/g711-alaw"

    .line 477
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    :cond_f2
    if-nez v9, :cond_fc

    if-nez v15, :cond_fc

    if-nez v7, :cond_fc

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_ff

    :cond_fc
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_ff
    if-eqz v4, :cond_137

    .line 491
    iget v0, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 492
    iget v4, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 493
    :goto_109
    invoke-virtual {v13}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 494
    iget v5, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v9, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v9, v0, v5

    .line 495
    iget v5, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v9, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v9, v4, v5

    goto :goto_109

    :cond_11c
    int-to-long v9, v14

    .line 498
    invoke-static {v6, v0, v4, v9, v10}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 500
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 501
    iget-object v5, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 502
    iget v6, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 503
    iget-object v9, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 504
    iget-object v10, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 505
    iget-wide v11, v0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_2ab

    .line 507
    :cond_137
    new-array v4, v3, [J

    .line 508
    new-array v6, v3, [I

    .line 509
    new-array v7, v3, [J

    .line 510
    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v36, v9

    move/from16 v9, p1

    :goto_157
    move/from16 p1, v36

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_21b

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_163
    if-nez v27, :cond_180

    .line 517
    invoke-virtual {v13}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v22

    if-eqz v22, :cond_180

    move/from16 v30, v14

    move/from16 v31, v15

    .line 518
    iget-wide v14, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    .line 519
    iget v3, v13, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_163

    :cond_180
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_1a4

    const-string v2, "Unexpected end of chunk data"

    .line 522
    invoke-static {v10, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 525
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 526
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 527
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_223

    :cond_1a4
    if-eqz v0, :cond_1b7

    :goto_1a6
    if-nez v23, :cond_1b5

    if-lez v16, :cond_1b5

    .line 534
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    .line 540
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_1a6

    :cond_1b5
    add-int/lit8 v23, v23, -0x1

    :cond_1b7
    move/from16 v3, v21

    .line 546
    aput-wide v28, v4, v1

    .line 547
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_1c4

    move v11, v10

    :cond_1c4
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 551
    aput-wide v14, v7, v1

    if-nez v12, :cond_1cd

    const/4 v10, 0x1

    goto :goto_1ce

    :cond_1cd
    const/4 v10, 0x0

    .line 554
    :goto_1ce
    aput v10, v8, v1

    if-ne v1, v2, :cond_1e4

    const/4 v10, 0x1

    .line 556
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_1e4

    .line 559
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_1e4
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_1fc

    if-lez p1, :cond_1fc

    .line 567
    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 574
    invoke-virtual/range {v24 .. v24}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_1ff

    :cond_1fc
    move v3, v14

    move/from16 v14, p1

    :goto_1ff
    move/from16 p1, v2

    .line 578
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v10

    move/from16 v36, v14

    move/from16 v14, p1

    goto/16 :goto_157

    :cond_21b
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_223
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_238

    :goto_228
    if-lez v16, :cond_238

    .line 588
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_232

    const/4 v0, 0x0

    goto :goto_239

    .line 592
    :cond_232
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_228

    :cond_238
    const/4 v0, 0x1

    :goto_239
    if-nez v9, :cond_24b

    if-nez v30, :cond_24b

    if-nez v1, :cond_24b

    if-nez p1, :cond_24b

    move/from16 v2, v23

    if-nez v2, :cond_24d

    if-nez v0, :cond_248

    goto :goto_24d

    :cond_248
    move-object/from16 v14, p0

    goto :goto_2a4

    :cond_24b
    move/from16 v2, v23

    .line 602
    :cond_24d
    :goto_24d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "Inconsistent stbl box for track "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p0

    iget v15, v14, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_297

    const-string v0, ", ctts invalid"

    goto :goto_299

    :cond_297
    const-string v0, ""

    .line 616
    :goto_299
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v10, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a4
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_2ab
    const-wide/32 v7, 0xf4240

    .line 619
    iget-wide v9, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 621
    iget-object v1, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_2cc

    .line 622
    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    invoke-static {v12, v10, v11, v0, v1}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 623
    new-instance v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 634
    :cond_2cc
    iget-object v1, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_36b

    iget v1, v14, Landroidx/media3/extractor/mp4/Track;->type:I

    if-ne v1, v5, :cond_36b

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_36b

    .line 637
    iget-object v1, v14, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    .line 638
    iget-object v1, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-wide v7, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 640
    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    .line 642
    invoke-static/range {v5 .. v11}, Landroidx/media3/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_36d

    sub-long v6, v15, v23

    const/4 v5, 0x0

    .line 644
    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v10, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 645
    invoke-static/range {v26 .. v31}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 647
    iget-object v5, v14, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    .line 648
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_335

    cmp-long v8, v0, v6

    if-eqz v8, :cond_36f

    :cond_335
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_36f

    cmp-long v6, v0, v6

    if-gtz v6, :cond_36f

    long-to-int v4, v4

    move-object/from16 v5, p2

    .line 652
    iput v4, v5, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v0

    .line 653
    iput v0, v5, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 654
    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 655
    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    .line 656
    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 658
    new-instance v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_36b
    move/from16 v25, v0

    :cond_36d
    move/from16 p1, v4

    .line 664
    :cond_36f
    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3bc

    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3bc

    .line 668
    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    .line 669
    :goto_38b
    array-length v0, v12

    if-ge v6, v0, :cond_3a2

    .line 670
    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 671
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_38b

    :cond_3a2
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    .line 674
    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 675
    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 676
    new-instance v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 684
    :cond_3bc
    iget v0, v14, Landroidx/media3/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c3

    const/4 v10, 0x1

    goto :goto_3c4

    :cond_3c3
    const/4 v10, 0x0

    .line 690
    :goto_3c4
    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    new-array v0, v0, [I

    .line 691
    iget-object v1, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 692
    iget-object v4, v14, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 693
    :goto_3da
    iget-object v9, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v5, v9, :cond_440

    move-object v9, v2

    move-object v11, v3

    .line 694
    aget-wide v2, v4, v5

    const-wide/16 v15, -0x1

    cmp-long v15, v2, v15

    if-eqz v15, :cond_42c

    .line 696
    iget-object v15, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v26, v15, v5

    move v15, v8

    move-object/from16 v16, v9

    iget-wide v8, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    .line 697
    invoke-static/range {v26 .. v31}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 707
    invoke-static {v12, v2, v3, v8, v8}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v9

    aput v9, v0, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    .line 710
    invoke-static {v12, v2, v3, v10, v6}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result v2

    aput v2, v1, v5

    .line 715
    :goto_40f
    aget v2, v0, v5

    aget v3, v1, v5

    if-ge v2, v3, :cond_41f

    aget v7, v13, v2

    and-int/2addr v7, v8

    if-nez v7, :cond_41f

    add-int/lit8 v2, v2, 0x1

    .line 721
    aput v2, v0, v5

    goto :goto_40f

    :cond_41f
    sub-int v7, v3, v2

    add-int v7, v21, v7

    move v9, v15

    if-eq v9, v2, :cond_428

    move v2, v8

    goto :goto_429

    :cond_428
    move v2, v6

    :goto_429
    or-int v2, p2, v2

    goto :goto_438

    :cond_42c
    move/from16 p2, v6

    move/from16 v21, v7

    move-object/from16 v16, v9

    const/4 v6, 0x0

    move v9, v8

    const/4 v8, 0x1

    move/from16 v2, p2

    move v3, v9

    :goto_438
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v3, v11

    move-object/from16 v2, v16

    goto :goto_3da

    :cond_440
    move-object/from16 v16, v2

    move-object v11, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_44c

    goto :goto_44d

    :cond_44c
    move v8, v6

    :goto_44d
    or-int v2, p2, v8

    if-eqz v2, :cond_454

    .line 731
    new-array v3, v7, [J

    goto :goto_456

    :cond_454
    move-object/from16 v3, v16

    :goto_456
    if-eqz v2, :cond_45b

    .line 732
    new-array v4, v7, [I

    goto :goto_45c

    :cond_45b
    move-object v4, v11

    :goto_45c
    if-eqz v2, :cond_460

    move v5, v6

    goto :goto_462

    :cond_460
    move/from16 v5, p1

    :goto_462
    if-eqz v2, :cond_467

    .line 734
    new-array v8, v7, [I

    goto :goto_468

    :cond_467
    move-object v8, v13

    .line 735
    :goto_468
    new-array v7, v7, [J

    move/from16 p1, v5

    move v15, v6

    const-wide/16 v9, 0x0

    .line 738
    :goto_46f
    iget-object v5, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v6, v5, :cond_51c

    .line 739
    iget-object v5, v14, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v17, v5, v6

    .line 740
    aget v5, v0, v6

    move-object/from16 v27, v0

    .line 741
    aget v0, v1, v6

    move-object/from16 v28, v1

    if-eqz v2, :cond_492

    sub-int v1, v0, v5

    move/from16 v29, v6

    move-object/from16 v6, v16

    .line 744
    invoke-static {v6, v5, v3, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    invoke-static {v11, v5, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    invoke-static {v13, v5, v8, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_496

    :cond_492
    move/from16 v29, v6

    move-object/from16 v6, v16

    :goto_496
    move/from16 v1, p1

    :goto_498
    if-ge v5, v0, :cond_4f8

    const-wide/32 v23, 0xf4240

    move/from16 p2, v0

    move/from16 v16, v1

    .line 749
    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 750
    aget-wide v21, v12, v5

    sub-long v30, v21, v17

    const-wide/32 v32, 0xf4240

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    iget-wide v12, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v34, v12

    .line 751
    invoke-static/range {v30 .. v35}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    move-object/from16 v23, v6

    .line 753
    iget v6, v14, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-static {v6}, Landroidx/media3/extractor/mp4/AtomParsers;->canTrimSamplesWithTimestampChange(I)Z

    move-result v6

    if-eqz v6, :cond_4d2

    move-object v6, v8

    move-wide/from16 v24, v9

    const-wide/16 v8, 0x0

    .line 754
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_4d7

    :cond_4d2
    move-object v6, v8

    move-wide/from16 v24, v9

    const-wide/16 v8, 0x0

    :goto_4d7
    add-long/2addr v0, v12

    .line 756
    aput-wide v0, v7, v15

    if-eqz v2, :cond_4e6

    .line 757
    aget v0, v4, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_4e8

    .line 758
    aget v0, v11, v5

    move v1, v0

    goto :goto_4e8

    :cond_4e6
    move/from16 v1, v16

    :cond_4e8
    :goto_4e8
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    move-object v8, v6

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v6, v23

    move-wide/from16 v9, v24

    goto :goto_498

    :cond_4f8
    move-object/from16 v23, v6

    move-object v6, v8

    move-wide/from16 v24, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    const-wide/16 v8, 0x0

    .line 762
    iget-object v0, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    aget-wide v12, v0, v29

    add-long v12, v24, v12

    add-int/lit8 v0, v29, 0x1

    move/from16 p1, v1

    move-object v8, v6

    move-wide v9, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v16, v23

    move-object/from16 v1, v28

    move v6, v0

    move-object/from16 v0, v27

    goto/16 :goto_46f

    :cond_51c
    move-object v6, v8

    move-wide/from16 v24, v9

    const-wide/32 v0, 0xf4240

    .line 764
    iget-wide v8, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v24

    move-wide/from16 v23, v0

    move-wide/from16 v25, v8

    .line 765
    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 766
    new-instance v10, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p1

    move-object v5, v7

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    :cond_53d
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 402
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/AtomParsers$StsdData;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    .line 961
    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 963
    new-instance v13, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v13, v12}, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v14, 0x0

    move v15, v14

    :goto_14
    if-ge v15, v12, :cond_17b

    .line 965
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 966
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v14

    :goto_23
    const-string v1, "childAtomSize must be positive"

    .line 967
    invoke-static {v0, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_15f

    const v0, 0x61766333

    if-eq v1, v0, :cond_15f

    const v0, 0x656e6376

    if-eq v1, v0, :cond_15f

    const v0, 0x6d317620

    if-eq v1, v0, :cond_15f

    const v0, 0x6d703476

    if-eq v1, v0, :cond_15f

    const v0, 0x68766331

    if-eq v1, v0, :cond_15f

    const v0, 0x68657631

    if-eq v1, v0, :cond_15f

    const v0, 0x73323633

    if-eq v1, v0, :cond_15f

    const v0, 0x48323633

    if-eq v1, v0, :cond_15f

    const v0, 0x76703038

    if-eq v1, v0, :cond_15f

    const v0, 0x76703039

    if-eq v1, v0, :cond_15f

    const v0, 0x61763031

    if-eq v1, v0, :cond_15f

    const v0, 0x64766176

    if-eq v1, v0, :cond_15f

    const v0, 0x64766131

    if-eq v1, v0, :cond_15f

    const v0, 0x64766865

    if-eq v1, v0, :cond_15f

    const v0, 0x64766831

    if-ne v1, v0, :cond_7e

    goto/16 :goto_15f

    :cond_7e
    const v0, 0x6d703461

    if-eq v1, v0, :cond_14a

    const v0, 0x656e6361

    if-eq v1, v0, :cond_14a

    const v0, 0x61632d33

    if-eq v1, v0, :cond_14a

    const v0, 0x65632d33

    if-eq v1, v0, :cond_14a

    const v0, 0x61632d34

    if-eq v1, v0, :cond_14a

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_14a

    const v0, 0x64747363

    if-eq v1, v0, :cond_14a

    const v0, 0x64747365

    if-eq v1, v0, :cond_14a

    const v0, 0x64747368

    if-eq v1, v0, :cond_14a

    const v0, 0x6474736c

    if-eq v1, v0, :cond_14a

    const v0, 0x64747378

    if-eq v1, v0, :cond_14a

    const v0, 0x73616d72

    if-eq v1, v0, :cond_14a

    const v0, 0x73617762

    if-eq v1, v0, :cond_14a

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_14a

    const v0, 0x736f7774

    if-eq v1, v0, :cond_14a

    const v0, 0x74776f73

    if-eq v1, v0, :cond_14a

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_14a

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_14a

    const v0, 0x6d686131

    if-eq v1, v0, :cond_14a

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_14a

    const v0, 0x616c6163

    if-eq v1, v0, :cond_14a

    const v0, 0x616c6177

    if-eq v1, v0, :cond_14a

    const v0, 0x756c6177

    if-eq v1, v0, :cond_14a

    const v0, 0x4f707573

    if-eq v1, v0, :cond_14a

    const v0, 0x664c6143

    if-ne v1, v0, :cond_fc

    goto :goto_14a

    :cond_fc
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_13a

    const v0, 0x74783367

    if-eq v1, v0, :cond_13a

    const v0, 0x77767474

    if-eq v1, v0, :cond_13a

    const v0, 0x73747070

    if-eq v1, v0, :cond_13a

    const v0, 0x63363038

    if-ne v1, v0, :cond_116

    goto :goto_13a

    :cond_116
    const v0, 0x6d657474

    if-ne v1, v0, :cond_11f

    .line 1039
    invoke-static {v10, v1, v9, v11, v13}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIILandroidx/media3/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_147

    :cond_11f
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_147

    .line 1041
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1043
    invoke-virtual {v0, v11}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    .line 1044
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, v13, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    goto :goto_147

    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    .line 1036
    invoke-static/range {v0 .. v6}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;)V

    :cond_147
    :goto_147
    move/from16 v17, v9

    goto :goto_172

    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    .line 1020
    invoke-static/range {v0 .. v9}, Landroidx/media3/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_172

    :cond_15f
    :goto_15f
    move/from16 v17, v9

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v15

    .line 985
    invoke-static/range {v0 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V

    :goto_172
    add-int v9, v17, v16

    .line 1047
    invoke-virtual {v10, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14

    :cond_17b
    return-object v13
.end method

.method private static parseTextSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;)V
    .registers 11

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x8

    .line 1060
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x54544d4c

    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_15

    goto :goto_45

    :cond_15
    const p2, 0x74783367

    if-ne p1, p2, :cond_2b

    add-int/lit8 p3, p3, -0x8

    add-int/lit8 p3, p3, -0x8

    .line 1072
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1073
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1074
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_45

    :cond_2b
    const p0, 0x77767474

    if-ne p1, p0, :cond_33

    const-string v0, "application/x-mp4-vtt"

    goto :goto_45

    :cond_33
    const p0, 0x73747070

    if-ne p1, p0, :cond_3b

    const-wide/16 v2, 0x0

    goto :goto_45

    :cond_3b
    const p0, 0x63363038

    if-ne p1, p0, :cond_65

    const/4 p0, 0x1

    .line 1083
    iput p0, p6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v0, "application/x-mp4-cea-608"

    .line 1089
    :goto_45
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1091
    invoke-virtual {p0, p4}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1092
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1093
    invoke-virtual {p0, p5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1094
    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1095
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 1096
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p6, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    return-void

    .line 1086
    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;
    .registers 12

    const/16 v0, 0x8

    .line 840
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 841
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 842
    invoke-static {v1}, Landroidx/media3/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v2

    .line 844
    :goto_14
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 845
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 847
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 849
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_26

    move v0, v4

    :cond_26
    const/4 v6, 0x0

    move v7, v6

    :goto_28
    if-ge v7, v0, :cond_3a

    .line 852
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_37

    move v5, v6

    goto :goto_3b

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_3a
    const/4 v5, 0x1

    :goto_3b
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_46

    .line 859
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_59

    :cond_46
    if-nez v1, :cond_4d

    .line 862
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_51

    :cond_4d
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_51
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_58

    goto :goto_59

    :cond_58
    move-wide v7, v0

    .line 870
    :goto_59
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 871
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 872
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 873
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 874
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 875
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, -0x10000

    const/high16 v5, 0x10000

    if-nez v0, :cond_7e

    if-ne v1, v5, :cond_7e

    if-ne v2, v4, :cond_7e

    if-nez p0, :cond_7e

    const/16 v6, 0x5a

    goto :goto_93

    :cond_7e
    if-nez v0, :cond_89

    if-ne v1, v4, :cond_89

    if-ne v2, v5, :cond_89

    if-nez p0, :cond_89

    const/16 v6, 0x10e

    goto :goto_93

    :cond_89
    if-ne v0, v4, :cond_93

    if-nez v1, :cond_93

    if-nez v2, :cond_93

    if-ne p0, v4, :cond_93

    const/16 v6, 0xb4

    .line 890
    :cond_93
    :goto_93
    new-instance p0, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method private static parseTrak(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/Atom$LeafAtom;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 316
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    const v2, 0x68646c72    # 4.3148E24f

    .line 319
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_2b

    return-object v3

    :cond_2b
    const v2, 0x746b6864

    .line 324
    invoke-virtual {v0, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTkhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_4f

    .line 326
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$000(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_53

    :cond_4f
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 328
    :goto_53
    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v4

    iget-wide v8, v4, Landroidx/media3/container/Mp4TimestampData;->timescale:J

    cmp-long v4, v10, v6

    if-nez v4, :cond_60

    goto :goto_68

    :cond_60
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 333
    invoke-static/range {v10 .. v15}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_68
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 337
    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 338
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 336
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d646864

    .line 341
    invoke-virtual {v1, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMdhd(Landroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 342
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_f9

    .line 347
    iget-object v12, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    .line 350
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 351
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$200(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 348
    invoke-static/range {v12 .. v17}, Landroidx/media3/extractor/mp4/AtomParsers;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Landroidx/media3/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_d4

    const v6, 0x65647473

    .line 358
    invoke-virtual {v0, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 360
    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEdts(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 362
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 363
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_d8

    :cond_d4
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    .line 367
    :goto_d8
    iget-object v0, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    if-nez v0, :cond_dd

    goto :goto_f8

    .line 369
    :cond_dd
    new-instance v0, Landroidx/media3/extractor/mp4/Track;

    .line 370
    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media3/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    iget v13, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v0

    move v4, v2

    invoke-direct/range {v3 .. v17}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_f8
    return-object v3

    :cond_f9
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 344
    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/mp4/Atom$ContainerAtom;",
            "Landroidx/media3/extractor/GaplessInfoHolder;",
            "J",
            "Landroidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/extractor/mp4/Track;",
            "Landroidx/media3/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object v0, p0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 130
    :goto_7
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 131
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    .line 132
    iget v4, v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_22

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_76

    :cond_22
    const v4, 0x6d766864

    .line 140
    invoke-virtual {p0, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 138
    invoke-static/range {v4 .. v10}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTrak(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/mp4/Atom$LeafAtom;JLandroidx/media3/common/DrmInitData;ZZ)Landroidx/media3/extractor/mp4/Track;

    move-result-object v4

    move-object/from16 v5, p7

    .line 137
    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Track;

    if-nez v4, :cond_47

    move-object v6, p1

    goto :goto_76

    :cond_47
    const v6, 0x6d646961

    .line 151
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d696e66

    .line 152
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 150
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 153
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-object v6, p1

    .line 154
    invoke-static {v4, v3, p1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseStbl(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v3

    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_79
    return-object v1
.end method

.method public static parseUdta(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)Landroidx/media3/common/Metadata;
    .registers 7

    .line 167
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 168
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 169
    new-instance v1, Landroidx/media3/common/Metadata;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v1, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 170
    :goto_f
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v0, :cond_59

    .line 171
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 172
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 173
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x6d657461

    if-ne v4, v5, :cond_34

    .line 175
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 177
    invoke-static {p0, v4}, Landroidx/media3/extractor/mp4/AtomParsers;->parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_54

    :cond_34
    const v5, 0x736d7461

    if-ne v4, v5, :cond_47

    .line 179
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v4, v2, v3

    .line 182
    invoke-static {p0, v4}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object v4

    .line 181
    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_54

    :cond_47
    const v5, -0x56878686

    if-ne v4, v5, :cond_54

    .line 184
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v1

    :cond_54
    :goto_54
    add-int/2addr v2, v3

    .line 186
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_f

    :cond_59
    return-object v1
.end method

.method private static parseUdtaMeta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .registers 6

    const/16 v0, 0x8

    .line 784
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 785
    invoke-static {p0}, Landroidx/media3/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 786
    :goto_8
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2d

    .line 787
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 788
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 789
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_28

    .line 791
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 792
    invoke-static {p0, v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseIlst(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;

    move-result-object p0

    return-object p0

    :cond_28
    add-int/2addr v0, v1

    .line 794
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_8

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Landroidx/media3/common/util/ParsableByteArray;IIIIILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/AtomParsers$StsdData;I)V
    .registers 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    .line 1112
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1114
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1116
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/16 v8, 0x32

    .line 1122
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1124
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v8

    const v9, 0x656e6376

    move/from16 v11, p1

    if-ne v11, v9, :cond_56

    .line 1128
    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_53

    .line 1130
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v3, :cond_41

    const/4 v3, 0x0

    goto :goto_4b

    .line 1134
    :cond_41
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    .line 1135
    :goto_4b
    iget-object v12, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v9, v12, p8

    .line 1137
    :cond_53
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_56
    const v9, 0x6d317620

    const-string/jumbo v12, "video/3gpp"

    if-ne v11, v9, :cond_62

    const-string/jumbo v9, "video/mpeg"

    goto :goto_6a

    :cond_62
    const v9, 0x48323633

    if-ne v11, v9, :cond_69

    move-object v9, v12

    goto :goto_6a

    :cond_69
    const/4 v9, 0x0

    :goto_6a
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v15, v9

    move v9, v8

    move v8, v6

    :goto_87
    sub-int v13, v9, v1

    if-ge v13, v2, :cond_39b

    .line 1166
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v13

    .line 1168
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    if-nez v14, :cond_a2

    .line 1169
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v28

    sub-int v10, v28, v1

    if-ne v10, v2, :cond_a2

    goto/16 :goto_39b

    :cond_a2
    if-lez v14, :cond_a6

    const/4 v10, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v10, 0x0

    :goto_a7
    const-string v1, "childAtomSize must be positive"

    .line 1173
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1174
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    const v10, 0x61766343

    if-ne v1, v10, :cond_100

    const/4 v1, 0x0

    if-nez v15, :cond_ba

    const/4 v10, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v10, 0x0

    .line 1176
    :goto_bb
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 1178
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1179
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    .line 1180
    iget-object v6, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 1181
    iget v8, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v27, :cond_d3

    .line 1183
    iget v8, v1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    move/from16 v16, v8

    .line 1185
    :cond_d3
    iget-object v8, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 1186
    iget v10, v1, Landroidx/media3/extractor/AvcConfig;->maxNumReorderFrames:I

    .line 1187
    iget v13, v1, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    .line 1188
    iget v15, v1, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    .line 1189
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    move/from16 v17, v2

    .line 1190
    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthLuma:I

    .line 1191
    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->bitdepthChroma:I

    const-string/jumbo v18, "video/avc"

    move-object/from16 v36, v3

    move/from16 v21, v10

    move/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v22, v13

    move/from16 v23, v15

    move/from16 v24, v17

    move-object/from16 v15, v18

    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move v8, v1

    move v6, v2

    :goto_fc
    const/4 v1, -0x1

    const/4 v2, 0x0

    goto/16 :goto_38c

    :cond_100
    const v2, 0x68766343

    if-ne v1, v2, :cond_14e

    const/4 v1, 0x0

    if-nez v15, :cond_10a

    const/4 v10, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v10, 0x0

    .line 1193
    :goto_10b
    invoke-static {v10, v1}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v13, v13, 0x8

    .line 1195
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1196
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/HevcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v1

    .line 1197
    iget-object v2, v1, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 1198
    iget v6, v1, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v6, v4, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v27, :cond_123

    .line 1200
    iget v6, v1, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    move/from16 v16, v6

    .line 1202
    :cond_123
    iget v6, v1, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 1203
    iget-object v8, v1, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 1204
    iget v10, v1, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 1205
    iget v13, v1, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 1206
    iget v15, v1, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    move-object/from16 v17, v2

    .line 1207
    iget v2, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 1208
    iget v1, v1, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    const-string/jumbo v18, "video/hevc"

    move-object/from16 v36, v3

    move/from16 v21, v6

    move/from16 v22, v10

    move/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v23, v13

    move/from16 v24, v15

    move-object/from16 v15, v18

    move v6, v2

    move-object/from16 v18, v8

    const/4 v2, 0x0

    move v8, v1

    :goto_14b
    const/4 v1, -0x1

    goto/16 :goto_38c

    :cond_14e
    const v2, 0x64766343

    if-eq v1, v2, :cond_367

    const v2, 0x64767643

    if-ne v1, v2, :cond_15a

    goto/16 :goto_367

    :cond_15a
    const v2, 0x76706343

    const/4 v10, 0x2

    if-ne v1, v2, :cond_1a6

    if-nez v15, :cond_164

    const/4 v1, 0x1

    goto :goto_165

    :cond_164
    const/4 v1, 0x0

    :goto_165
    const/4 v2, 0x0

    .line 1216
    invoke-static {v1, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v11, v1, :cond_172

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    goto :goto_175

    :cond_172
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    :goto_175
    add-int/lit8 v13, v13, 0xc

    .line 1218
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1220
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    shr-int/lit8 v6, v2, 0x4

    const/4 v8, 0x1

    and-int/2addr v2, v8

    if-eqz v2, :cond_189

    const/4 v2, 0x1

    goto :goto_18a

    :cond_189
    const/4 v2, 0x0

    .line 1225
    :goto_18a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 1226
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1227
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    if-eqz v2, :cond_19b

    const/16 v23, 0x1

    goto :goto_19d

    :cond_19b
    move/from16 v23, v10

    .line 1230
    :goto_19d
    invoke-static {v13}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v24

    move-object v15, v1

    move-object/from16 v36, v3

    move v8, v6

    goto :goto_200

    :cond_1a6
    const v2, 0x61763143

    if-ne v1, v2, :cond_1dc

    add-int/lit8 v1, v14, -0x8

    .line 1235
    new-array v2, v1, [B

    const/4 v6, 0x0

    .line 1236
    invoke-virtual {v0, v2, v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1237
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    add-int/lit8 v13, v13, 0x8

    .line 1239
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1240
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseAv1c(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 1242
    iget v2, v1, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    .line 1243
    iget v8, v1, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    .line 1244
    iget v10, v1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    .line 1245
    iget v13, v1, Landroidx/media3/common/ColorInfo;->colorRange:I

    .line 1246
    iget v1, v1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const-string/jumbo v15, "video/av01"

    move/from16 v24, v1

    move v6, v2

    move-object/from16 v36, v3

    move/from16 v22, v10

    move/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v23, v13

    goto/16 :goto_fc

    :cond_1dc
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_206

    if-nez v25, :cond_1e7

    .line 1249
    invoke-static {}, Landroidx/media3/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_1e7
    move-object/from16 v1, v25

    const/16 v2, 0x15

    .line 1253
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1254
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1255
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move-object/from16 v36, v3

    :goto_200
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_fc

    :cond_206
    const v2, 0x6d646376

    if-ne v1, v2, :cond_279

    if-nez v25, :cond_211

    .line 1258
    invoke-static {}, Landroidx/media3/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_211
    move-object/from16 v1, v25

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 1263
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    move/from16 v28, v11

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v11

    move-object/from16 v29, v12

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    move/from16 v30, v8

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    move/from16 v31, v6

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v6

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v32

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v34

    move-object/from16 v36, v3

    const/4 v3, 0x1

    .line 1273
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1274
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1275
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1276
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1277
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1278
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1279
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1280
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1281
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 1282
    div-long v10, v32, v2

    long-to-int v4, v10

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1283
    div-long v2, v34, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v8, v30

    move/from16 v6, v31

    goto/16 :goto_fc

    :cond_279
    move-object/from16 v36, v3

    move/from16 v31, v6

    move/from16 v30, v8

    move/from16 v28, v11

    move-object/from16 v29, v12

    const v2, 0x64323633

    if-ne v1, v2, :cond_299

    const/4 v2, 0x0

    if-nez v15, :cond_28d

    const/4 v10, 0x1

    goto :goto_28e

    :cond_28d
    const/4 v10, 0x0

    .line 1285
    :goto_28e
    invoke-static {v10, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v15, v29

    :cond_293
    :goto_293
    move/from16 v8, v30

    move/from16 v6, v31

    goto/16 :goto_14b

    :cond_299
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_2bb

    if-nez v15, :cond_2a3

    const/4 v10, 0x1

    goto :goto_2a4

    :cond_2a3
    const/4 v10, 0x0

    .line 1288
    :goto_2a4
    invoke-static {v10, v2}, Landroidx/media3/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1289
    invoke-static {v0, v13}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v26

    .line 1290
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$300(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 1291
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$400(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v3

    if-eqz v3, :cond_2b9

    .line 1293
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    :cond_2b9
    move-object v15, v1

    goto :goto_293

    :cond_2bb
    const v3, 0x70617370

    if-ne v1, v3, :cond_2cf

    .line 1296
    invoke-static {v0, v13}, Landroidx/media3/extractor/mp4/AtomParsers;->parsePaspFromParent(Landroidx/media3/common/util/ParsableByteArray;I)F

    move-result v1

    move/from16 v16, v1

    move/from16 v8, v30

    move/from16 v6, v31

    const/4 v1, -0x1

    const/16 v27, 0x1

    goto/16 :goto_38c

    :cond_2cf
    const v3, 0x73763364

    if-ne v1, v3, :cond_2d9

    .line 1299
    invoke-static {v0, v13, v14}, Landroidx/media3/extractor/mp4/AtomParsers;->parseProjFromParent(Landroidx/media3/common/util/ParsableByteArray;II)[B

    move-result-object v19

    goto :goto_293

    :cond_2d9
    const v3, 0x73743364

    if-ne v1, v3, :cond_302

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v3, 0x3

    .line 1302
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_293

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_2ff

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2fc

    if-eq v1, v10, :cond_2f9

    if-eq v1, v3, :cond_2f6

    goto :goto_293

    :cond_2f6
    move/from16 v20, v3

    goto :goto_293

    :cond_2f9
    move/from16 v20, v10

    goto :goto_293

    :cond_2fc
    move/from16 v20, v8

    goto :goto_293

    :cond_2ff
    const/16 v20, 0x0

    goto :goto_293

    :cond_302
    const/4 v8, 0x1

    const v3, 0x636f6c72

    move/from16 v13, v22

    if-ne v1, v3, :cond_363

    const/4 v1, -0x1

    move/from16 v3, v24

    if-ne v13, v1, :cond_384

    if-ne v3, v1, :cond_384

    .line 1330
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v6, 0x6e636c78

    if-eq v4, v6, :cond_339

    const v6, 0x6e636c63

    if-ne v4, v6, :cond_320

    goto :goto_339

    .line 1349
    :cond_320
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported color type: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroidx/media3/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AtomParsers"

    invoke-static {v6, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_384

    .line 1334
    :cond_339
    :goto_339
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 1335
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1336
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v6, 0x13

    if-ne v14, v6, :cond_352

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_352

    move v6, v8

    goto :goto_353

    :cond_352
    const/4 v6, 0x0

    .line 1344
    :goto_353
    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v22

    if-eqz v6, :cond_35c

    move/from16 v23, v8

    goto :goto_35e

    :cond_35c
    move/from16 v23, v10

    .line 1347
    :goto_35e
    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v24

    goto :goto_388

    :cond_363
    move/from16 v3, v24

    const/4 v1, -0x1

    goto :goto_384

    :cond_367
    :goto_367
    move-object/from16 v36, v3

    move/from16 v31, v6

    move/from16 v30, v8

    move/from16 v28, v11

    move-object/from16 v29, v12

    move/from16 v13, v22

    move/from16 v3, v24

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1210
    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/DolbyVisionConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/DolbyVisionConfig;

    move-result-object v4

    if-eqz v4, :cond_384

    .line 1212
    iget-object v4, v4, Landroidx/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string/jumbo v15, "video/dolby-vision"

    move-object/from16 v18, v4

    :cond_384
    :goto_384
    move/from16 v24, v3

    move/from16 v22, v13

    :goto_388
    move/from16 v8, v30

    move/from16 v6, v31

    :goto_38c
    add-int/2addr v9, v14

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v3, v36

    goto/16 :goto_87

    :cond_39b
    :goto_39b
    move-object/from16 v36, v3

    move/from16 v31, v6

    move/from16 v30, v8

    move/from16 v13, v22

    move/from16 v3, v24

    const/4 v2, 0x0

    if-nez v15, :cond_3a9

    return-void

    .line 1361
    :cond_3a9
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v1, p4

    .line 1363
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1364
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v10, v18

    .line 1365
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1366
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 1367
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v15, v16

    .line 1368
    invoke-virtual {v0, v15}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    .line 1369
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v10, v19

    .line 1370
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v20

    .line 1371
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v10, v17

    .line 1372
    invoke-virtual {v0, v10}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move/from16 v1, v21

    .line 1373
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setMaxNumReorderSamples(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v36

    .line 1374
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 1379
    invoke-virtual {v1, v13}, Landroidx/media3/common/ColorInfo$Builder;->setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v13, v23

    .line 1380
    invoke-virtual {v1, v13}, Landroidx/media3/common/ColorInfo$Builder;->setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1381
    invoke-virtual {v1, v3}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    if-eqz v25, :cond_40a

    .line 1382
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    goto :goto_40b

    :cond_40a
    move-object v10, v2

    :goto_40b
    invoke-virtual {v1, v10}, Landroidx/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v6, v31

    .line 1383
    invoke-virtual {v1, v6}, Landroidx/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    move/from16 v8, v30

    .line 1384
    invoke-virtual {v1, v8}, Landroidx/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object v1

    .line 1385
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    .line 1377
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    if-eqz v26, :cond_43c

    .line 1389
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$600(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 1390
    invoke-static/range {v26 .. v26}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->access$500(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 1393
    :cond_43c
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Landroidx/media3/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method private static parseXyz(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/Metadata;
    .registers 6

    .line 815
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v0

    const/4 v1, 0x2

    .line 816
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 817
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 819
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 820
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 821
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 823
    :try_start_1d
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 825
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    .line 826
    new-instance v0, Landroidx/media3/common/Metadata;

    new-array v3, v4, [Landroidx/media3/common/Metadata$Entry;

    new-instance v4, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v4, v2, p0}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    aput-object v4, v3, v1

    invoke-direct {v0, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_41
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_41} :catch_42
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_41} :catch_42

    return-object v0

    :catch_42
    const/4 p0, 0x0

    return-object p0
.end method
