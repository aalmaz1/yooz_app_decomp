.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    .line 56
    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    :array_18
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 63
    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 279
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    .line 280
    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    .line 281
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_5
    if-ltz v0, :cond_1a

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 289
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_17

    move v3, v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 294
    :cond_1a
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_27

    return-void

    .line 295
    :cond_27
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 201
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_b3

    .line 204
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_ac

    const/16 v5, 0x64

    if-gt v4, v5, :cond_ac

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_a7

    add-int/lit8 v3, v3, 0x1

    .line 209
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x4f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    packed-switch v4, :pswitch_data_b8

    :goto_2c
    move v4, v2

    goto/16 :goto_a3

    :pswitch_2f
    if-lt v5, v8, :cond_37

    if-gt v5, v7, :cond_37

    add-int/lit8 v5, v5, 0x20

    goto/16 :goto_9c

    .line 217
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_3c
    if-lt v5, v8, :cond_43

    if-gt v5, v6, :cond_43

    add-int/lit8 v5, v5, -0x20

    goto :goto_9c

    :cond_43
    if-ne v5, v7, :cond_48

    const/16 v4, 0x3a

    goto :goto_a3

    .line 264
    :cond_48
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_4d
    if-lt v5, v8, :cond_56

    const/16 v4, 0x45

    if-gt v5, v4, :cond_56

    add-int/lit8 v5, v5, -0x26

    goto :goto_9c

    :cond_56
    const/16 v4, 0x46

    if-lt v5, v4, :cond_61

    const/16 v4, 0x4a

    if-gt v5, v4, :cond_61

    add-int/lit8 v5, v5, -0xb

    goto :goto_9c

    :cond_61
    const/16 v4, 0x4b

    if-lt v5, v4, :cond_6a

    if-gt v5, v6, :cond_6a

    add-int/lit8 v5, v5, 0x10

    goto :goto_9c

    :cond_6a
    const/16 v4, 0x50

    if-lt v5, v4, :cond_75

    const/16 v4, 0x54

    if-gt v5, v4, :cond_75

    add-int/lit8 v5, v5, 0x2b

    goto :goto_9c

    :cond_75
    const/16 v4, 0x55

    if-ne v5, v4, :cond_7a

    goto :goto_2c

    :cond_7a
    const/16 v4, 0x56

    if-ne v5, v4, :cond_81

    const/16 v4, 0x40

    goto :goto_a3

    :cond_81
    const/16 v4, 0x57

    if-ne v5, v4, :cond_88

    const/16 v4, 0x60

    goto :goto_a3

    :cond_88
    const/16 v4, 0x58

    if-lt v5, v4, :cond_91

    if-gt v5, v7, :cond_91

    const/16 v4, 0x7f

    goto :goto_a3

    .line 254
    :cond_91
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_96
    if-lt v5, v8, :cond_9e

    if-gt v5, v7, :cond_9e

    add-int/lit8 v5, v5, -0x40

    :goto_9c
    int-to-char v4, v5

    goto :goto_a3

    .line 225
    :cond_9e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 268
    :goto_a3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_af

    .line 207
    :cond_a7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 272
    :cond_ac
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    .line 275
    :cond_b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_b8
    .packed-switch 0x61
        :pswitch_96
        :pswitch_4d
        :pswitch_3c
        :pswitch_2f
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 139
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 142
    array-length v4, v3

    move v6, v1

    move v7, v6

    move v5, v2

    :goto_14
    if-ge v2, v0, :cond_52

    .line 146
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v6, :cond_23

    .line 147
    aget v8, v3, v7

    add-int/2addr v8, v9

    aput v8, v3, v7

    goto :goto_4f

    :cond_23
    add-int/lit8 v8, v4, -0x1

    if-ne v7, v8, :cond_49

    .line 150
    invoke-static {v3}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v8

    sget v10, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    const/4 v11, 0x2

    if-ne v8, v10, :cond_37

    new-array p1, v11, [I

    aput v5, p1, v1

    aput v2, p1, v9

    return-object p1

    .line 153
    :cond_37
    aget v8, v3, v1

    aget v10, v3, v9

    add-int/2addr v8, v10

    add-int/2addr v5, v8

    add-int/lit8 v8, v7, -0x1

    .line 154
    invoke-static {v3, v11, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    aput v1, v3, v8

    .line 156
    aput v1, v3, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_4b

    :cond_49
    add-int/lit8 v7, v7, 0x1

    .line 161
    :goto_4b
    aput v9, v3, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 165
    :cond_52
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method private static patternToChar(I)C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 193
    aget v1, v1, v0

    if-ne v1, p0, :cond_f

    .line 194
    sget-object p0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char p0, p0, v0

    return p0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toPattern([I)I
    .registers 9

    .line 170
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_c

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 174
    :cond_c
    array-length v0, p0

    move v2, v1

    move v4, v2

    :goto_f
    if-ge v2, v0, :cond_37

    .line 176
    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_35

    const/4 v7, 0x4

    if-le v5, v7, :cond_24

    goto :goto_35

    :cond_24
    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_31

    move v7, v1

    :goto_29
    if-ge v7, v5, :cond_32

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_31
    shl-int/2addr v4, v5

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_35
    :goto_35
    const/4 p0, -0x1

    return p0

    :cond_37
    return v4
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 72
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    const/4 v4, 0x0

    .line 76
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 77
    iget-object v5, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    :goto_1a
    invoke-static {p2, v1, v3}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 84
    invoke-static {v3}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v6

    if-ltz v6, :cond_a9

    .line 88
    invoke-static {v6}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    array-length v7, v3

    move v9, v1

    move v8, v4

    :goto_2d
    if-ge v8, v7, :cond_35

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 95
    :cond_35
    invoke-virtual {p2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_a6

    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 100
    array-length v6, v3

    move v8, v4

    move v9, v8

    :goto_48
    if-ge v8, v6, :cond_50

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    :cond_50
    if-eq v7, v2, :cond_a1

    .line 105
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_9c

    .line 114
    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 120
    aget v3, p3, v0

    aget p3, p3, v4

    add-int/2addr v3, p3

    int-to-float p3, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    int-to-float v1, v1

    int-to-float v5, v9

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 123
    new-instance v3, Lcom/google/zxing/Result;

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v2, v4

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v2, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3, v2, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 130
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string p2, "]G0"

    invoke-virtual {v3, p1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v3

    .line 111
    :cond_9c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 106
    :cond_a1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_a6
    move v1, v7

    goto/16 :goto_1a

    .line 86
    :cond_a9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
