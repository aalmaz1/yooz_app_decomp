.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 86
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 87
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x384

    .line 88
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 90
    :goto_25
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_37

    add-int/lit8 v3, v0, -0x1

    .line 91
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 572
    :goto_2
    aget v2, p1, v0

    if-ge p2, v2, :cond_8a

    if-nez v1, :cond_8a

    .line 574
    :goto_8
    aget v2, p1, v0

    const/16 v3, 0x39f

    const/4 v4, 0x1

    if-ge p2, v2, :cond_1c

    aget v5, p1, p2

    if-ne v5, v3, :cond_1c

    add-int/lit8 p2, p2, 0x1

    .line 575
    aget v2, p1, p2

    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    add-int/2addr p2, v4

    goto :goto_8

    :cond_1c
    if-ge p2, v2, :cond_87

    .line 579
    aget v2, p1, p2

    const/16 v5, 0x384

    if-lt v2, v5, :cond_26

    goto/16 :goto_87

    :cond_26
    const-wide/16 v6, 0x0

    move v2, v0

    :goto_29
    const-wide/16 v8, 0x384

    mul-long/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    .line 586
    aget p2, p1, p2

    int-to-long v9, p2

    add-long/2addr v6, v9

    add-int/2addr v2, v4

    const/4 p2, 0x5

    if-ge v2, p2, :cond_41

    .line 588
    aget v9, p1, v0

    if-ge v8, v9, :cond_41

    aget v9, p1, v8

    if-lt v9, v5, :cond_3f

    goto :goto_41

    :cond_3f
    move p2, v8

    goto :goto_29

    :cond_41
    :goto_41
    if-ne v2, p2, :cond_61

    const/16 p2, 0x39c

    if-eq p0, p2, :cond_4f

    .line 591
    aget p2, p1, v0

    if-ge v8, p2, :cond_61

    aget p2, p1, v8

    if-ge p2, v5, :cond_61

    :cond_4f
    move p2, v0

    :goto_50
    const/4 v2, 0x6

    if-ge p2, v2, :cond_84

    rsub-int/lit8 v2, p2, 0x5

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, v6, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 595
    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_50

    :cond_61
    sub-int/2addr v8, v2

    .line 599
    :goto_62
    aget p2, p1, v0

    if-ge v8, p2, :cond_84

    if-nez v1, :cond_84

    add-int/lit8 p2, v8, 0x1

    .line 600
    aget v2, p1, v8

    if-ge v2, v5, :cond_74

    int-to-byte v2, v2

    .line 602
    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    move v8, p2

    goto :goto_62

    :cond_74
    if-ne v2, v3, :cond_7f

    add-int/lit8 v2, p2, 0x1

    .line 604
    aget p2, p1, p2

    invoke-virtual {p3, p2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    move v8, v2

    goto :goto_62

    :cond_7f
    add-int/lit8 p2, p2, -0x1

    move v8, p2

    move v1, v4

    goto :goto_62

    :cond_84
    move p2, v8

    goto/16 :goto_2

    :cond_87
    :goto_87
    move v1, v4

    goto/16 :goto_2

    :cond_8a
    return p2
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/zxing/common/ECIStringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 102
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    .line 103
    new-instance v2, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_12
    const/4 v3, 0x0

    .line 104
    aget v3, p0, v3

    if-ge v1, v3, :cond_5d

    add-int/lit8 v3, v1, 0x1

    .line 105
    aget v1, p0, v1

    const/16 v4, 0x391

    if-eq v1, v4, :cond_54

    packed-switch v1, :pswitch_data_7e

    packed-switch v1, :pswitch_data_88

    add-int/lit8 v3, v3, -0x1

    .line 143
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    goto :goto_12

    .line 132
    :pswitch_2c
    invoke-static {p0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    goto :goto_12

    :pswitch_31
    add-int/lit8 v1, v3, 0x1

    .line 121
    aget v3, p0, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    goto :goto_12

    :pswitch_39
    add-int/lit8 v3, v3, 0x2

    goto :goto_3e

    :pswitch_3c
    add-int/lit8 v3, v3, 0x1

    :goto_3e
    move v1, v3

    goto :goto_12

    .line 137
    :pswitch_40
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 118
    :pswitch_45
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    goto :goto_12

    .line 112
    :pswitch_4a
    invoke-static {v1, p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    goto :goto_12

    .line 108
    :pswitch_4f
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v1

    goto :goto_12

    :cond_54
    add-int/lit8 v1, v3, 0x1

    .line 115
    aget v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_12

    .line 147
    :cond_5d
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6f

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->getFileId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6a

    goto :goto_6f

    .line 148
    :cond_6a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 150
    :cond_6f
    :goto_6f
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x384
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x39a
        :pswitch_40
        :pswitch_40
        :pswitch_4a
        :pswitch_3c
        :pswitch_39
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 708
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    .line 710
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 712
    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    .line 716
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 714
    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 158
    aget v2, p0, v1

    if-gt v0, v2, :cond_15b

    const/4 v0, 0x2

    new-array v2, v0, [I

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_16

    .line 164
    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 166
    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 168
    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    goto :goto_2b

    .line 171
    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_156

    .line 181
    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    :goto_30
    aget v2, p0, v1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/4 v5, 0x1

    if-ge p1, v2, :cond_56

    array-length v2, p0

    if-ge p1, v2, :cond_56

    aget v2, p0, p1

    if-eq v2, v3, :cond_56

    if-eq v2, v4, :cond_56

    new-array v3, v5, [Ljava/lang/Object;

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v2, "%03d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 189
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_151

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 196
    aget v0, p0, p1

    const/4 v2, -0x1

    if-ne v0, v4, :cond_6b

    add-int/lit8 v0, p1, 0x1

    goto :goto_6c

    :cond_6b
    move v0, v2

    .line 200
    :goto_6c
    aget v6, p0, v1

    if-ge p1, v6, :cond_13a

    .line 201
    aget v6, p0, p1

    if-eq v6, v3, :cond_133

    if-ne v6, v4, :cond_12e

    add-int/lit8 p1, p1, 0x1

    .line 204
    aget v6, p0, p1

    packed-switch v6, :pswitch_data_160

    .line 257
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 239
    :pswitch_82
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 240
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 242
    :try_start_8d
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_98} :catch_99

    goto :goto_6c

    .line 244
    :catch_99
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 248
    :pswitch_9e
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 249
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 251
    :try_start_a9
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b4} :catch_b5

    goto :goto_6c

    .line 253
    :catch_b5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 216
    :pswitch_ba
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 217
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 218
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_6c

    .line 211
    :pswitch_cd
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 212
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 213
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_6c

    .line 230
    :pswitch_e0
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 231
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 233
    :try_start_eb
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V
    :try_end_f6
    .catch Ljava/lang/NumberFormatException; {:try_start_eb .. :try_end_f6} :catch_f8

    goto/16 :goto_6c

    .line 235
    :catch_f8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 221
    :pswitch_fd
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 222
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 224
    :try_start_108
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V
    :try_end_113
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_113} :catch_115

    goto/16 :goto_6c

    .line 226
    :catch_115
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 206
    :pswitch_11a
    new-instance v6, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v6}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 207
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result p1

    .line 208
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 265
    :cond_12e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_133
    add-int/lit8 p1, p1, 0x1

    .line 262
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_6c

    :cond_13a
    if-eq v0, v2, :cond_150

    sub-int v1, p1, v0

    .line 272
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v2

    if-eqz v2, :cond_146

    add-int/lit8 v1, v1, -0x1

    :cond_146
    if-lez v1, :cond_150

    add-int/2addr v1, v0

    .line 277
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    :cond_150
    return p1

    .line 191
    :cond_151
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 174
    :catch_156
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 160
    :cond_15b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_11a
        :pswitch_fd
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_9e
        :pswitch_82
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 20

    move-object/from16 v0, p3

    const/4 v1, 0x0

    move/from16 v5, p2

    move-object/from16 v2, p4

    move-object v3, v2

    move-object v4, v3

    move v6, v1

    :goto_a
    if-ge v6, v5, :cond_f0

    .line 386
    aget v7, p0, v6

    .line 388
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/16 v9, 0x20

    const/16 v10, 0x1d

    const/16 v11, 0x1a

    const/16 v12, 0x391

    const/16 v13, 0x384

    packed-switch v8, :pswitch_data_f2

    :goto_23
    move-object v7, v4

    move-object v4, v3

    move v3, v1

    goto/16 :goto_e5

    :pswitch_28
    if-ge v7, v10, :cond_2f

    .line 530
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v3, v3, v7

    goto :goto_46

    :cond_2f
    if-eq v7, v10, :cond_3e

    if-eq v7, v13, :cond_3e

    if-eq v7, v12, :cond_36

    goto :goto_3c

    .line 540
    :cond_36
    aget v3, p1, v6

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_3c
    move v3, v1

    goto :goto_46

    .line 535
    :cond_3e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_23

    :pswitch_41
    if-ge v7, v11, :cond_49

    add-int/lit8 v7, v7, 0x41

    int-to-char v3, v7

    :goto_46
    move-object v7, v4

    goto/16 :goto_e5

    :cond_49
    if-eq v7, v11, :cond_4e

    if-eq v7, v13, :cond_51

    move v9, v1

    :cond_4e
    move-object v3, v4

    goto/16 :goto_e2

    .line 520
    :cond_51
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_dd

    :pswitch_55
    if-ge v7, v10, :cond_5d

    .line 494
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v7, v8, v7

    goto/16 :goto_bb

    :cond_5d
    if-eq v7, v10, :cond_6b

    if-eq v7, v13, :cond_6b

    if-eq v7, v12, :cond_64

    goto :goto_23

    .line 503
    :cond_64
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_23

    .line 499
    :cond_6b
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v3, v2

    goto :goto_23

    :pswitch_6f
    const/16 v8, 0x19

    if-ge v7, v8, :cond_78

    .line 460
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v7, v8, v7

    goto :goto_bb

    :cond_78
    if-eq v7, v13, :cond_93

    if-eq v7, v12, :cond_8b

    packed-switch v7, :pswitch_data_102

    goto/16 :goto_dd

    .line 482
    :pswitch_81
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ca

    .line 471
    :pswitch_84
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_d4

    .line 464
    :pswitch_88
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    .line 485
    :cond_8b
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto/16 :goto_dd

    .line 476
    :cond_93
    :pswitch_93
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    :pswitch_96
    if-ge v7, v11, :cond_9b

    add-int/lit8 v7, v7, 0x61

    goto :goto_ba

    :cond_9b
    if-eq v7, v13, :cond_b3

    if-eq v7, v12, :cond_ac

    packed-switch v7, :pswitch_data_110

    goto :goto_dd

    .line 444
    :pswitch_a3
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ca

    .line 438
    :pswitch_a6
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    .line 435
    :pswitch_a9
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ca

    .line 447
    :cond_ac
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_dd

    .line 450
    :cond_b3
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    :pswitch_b6
    if-ge v7, v11, :cond_c0

    add-int/lit8 v7, v7, 0x41

    :goto_ba
    int-to-char v7, v7

    :goto_bb
    move-object v14, v4

    move-object v4, v3

    move v3, v7

    move-object v7, v14

    goto :goto_e5

    :cond_c0
    if-eq v7, v13, :cond_df

    if-eq v7, v12, :cond_d7

    packed-switch v7, :pswitch_data_11c

    goto :goto_dd

    .line 410
    :pswitch_c8
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_ca
    move v9, v1

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    goto :goto_e2

    .line 404
    :pswitch_cf
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    .line 400
    :pswitch_d2
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_d4
    move v9, v1

    move-object v3, v2

    goto :goto_e2

    .line 413
    :cond_d7
    aget v7, p1, v6

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_dd
    move v9, v1

    goto :goto_e2

    .line 416
    :cond_df
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_d4

    :goto_e2
    :pswitch_e2
    move-object v7, v4

    move-object v4, v3

    move v3, v9

    :goto_e5
    if-eqz v3, :cond_ea

    .line 548
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :cond_ea
    add-int/lit8 v6, v6, 0x1

    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_a

    :cond_f0
    return-object v2

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_96
        :pswitch_6f
        :pswitch_55
        :pswitch_41
        :pswitch_28
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x19
        :pswitch_88
        :pswitch_e2
        :pswitch_84
        :pswitch_93
        :pswitch_81
    .end packed-switch

    :pswitch_data_110
    .packed-switch 0x1a
        :pswitch_e2
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x1a
        :pswitch_e2
        :pswitch_d2
        :pswitch_cf
        :pswitch_c8
    .end packed-switch
.end method

.method private static numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 630
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_49

    if-nez v2, :cond_49

    add-int/lit8 v5, p1, 0x1

    .line 631
    aget p1, p0, p1

    const/4 v6, 0x1

    if-ne v5, v4, :cond_15

    move v2, v6

    :cond_15
    const/16 v4, 0x384

    if-ge p1, v4, :cond_1e

    .line 636
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_1e
    if-eq p1, v4, :cond_30

    const/16 v4, 0x385

    if-eq p1, v4, :cond_30

    const/16 v4, 0x39f

    if-eq p1, v4, :cond_30

    const/16 v4, 0x3a0

    if-eq p1, v4, :cond_30

    packed-switch p1, :pswitch_data_4a

    goto :goto_33

    :cond_30
    :pswitch_30
    add-int/lit8 v5, v5, -0x1

    move v2, v6

    .line 652
    :goto_33
    rem-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_3d

    const/16 v4, 0x386

    if-eq p1, v4, :cond_3d

    if-eqz v2, :cond_47

    :cond_3d
    if-lez v3, :cond_47

    .line 657
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    move v3, v1

    :cond_47
    move p1, v5

    goto :goto_7

    :cond_49
    return p1

    :pswitch_data_4a
    .packed-switch 0x39a
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private static textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    aget v1, p0, v0

    sub-int v2, v1, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    .line 299
    new-array v1, v1, [I

    .line 303
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v4, v0

    move v5, v4

    .line 304
    :goto_12
    aget v6, p0, v0

    if-ge p1, v6, :cond_7c

    if-nez v4, :cond_7c

    add-int/lit8 v6, p1, 0x1

    .line 305
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2d

    .line 307
    div-int/lit8 v7, p1, 0x1e

    aput v7, v2, v5

    add-int/lit8 v7, v5, 0x1

    .line 308
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v2, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_3f

    :cond_2d
    const/16 v8, 0x391

    if-eq p1, v8, :cond_71

    const/16 v8, 0x39f

    if-eq p1, v8, :cond_4b

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_47

    packed-switch p1, :pswitch_data_80

    packed-switch p1, :pswitch_data_8a

    :goto_3f
    move p1, v6

    goto :goto_12

    :pswitch_41
    add-int/lit8 p1, v5, 0x1

    .line 314
    aput v7, v2, v5

    move v5, p1

    goto :goto_3f

    :cond_47
    :pswitch_47
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    goto :goto_3f

    .line 338
    :cond_4b
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object p1

    add-int/lit8 v1, v6, 0x1

    .line 339
    aget v2, p0, v6

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 340
    aget v2, p0, v0

    if-gt v1, v2, :cond_6c

    sub-int v3, v2, v1

    mul-int/lit8 v3, v3, 0x2

    .line 343
    new-array v3, v3, [I

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 344
    new-array v2, v2, [I

    move v5, v0

    move-object v9, v3

    move-object v3, p1

    move p1, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_12

    .line 341
    :cond_6c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 332
    :cond_71
    aput v8, v2, v5

    add-int/lit8 p1, v6, 0x1

    .line 333
    aget v6, p0, v6

    .line 334
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 350
    :cond_7c
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return p1

    :pswitch_data_80
    .packed-switch 0x384
        :pswitch_41
        :pswitch_47
        :pswitch_47
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x39a
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method
