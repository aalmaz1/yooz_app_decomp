.class final Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final C40_BASIC_SET_CHARS:[C

.field private static final C40_SHIFT2_SET_CHARS:[C

.field private static final TEXT_BASIC_SET_CHARS:[C

.field private static final TEXT_SHIFT2_SET_CHARS:[C

.field private static final TEXT_SHIFT3_SET_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x28

    new-array v1, v0, [C

    .line 57
    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    const/16 v1, 0x1b

    new-array v1, v1, [C

    .line 63
    fill-array-data v1, :array_52

    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    new-array v0, v0, [C

    .line 72
    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    .line 79
    sput-object v1, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 81
    fill-array-data v0, :array_9e

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    return-void

    nop

    :array_26
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_52
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_72
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_9e
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([B)Lcom/google/zxing/common/DecoderResult;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 91
    new-instance v1, Lcom/google/zxing/common/ECIStringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 93
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 96
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 100
    :cond_27
    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-ne v8, v10, :cond_30

    .line 101
    invoke-static {v0, v1, v2, v9}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    move-result-object v8

    goto :goto_5a

    .line 103
    :cond_30
    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v8

    aget v8, v10, v8

    packed-switch v8, :pswitch_data_d4

    .line 124
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 120
    :pswitch_40
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    move v3, v6

    goto :goto_58

    .line 117
    :pswitch_45
    invoke-static {v0, v1, v5}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V

    goto :goto_58

    .line 114
    :pswitch_49
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    goto :goto_58

    .line 111
    :pswitch_4d
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V

    goto :goto_58

    .line 108
    :pswitch_51
    invoke-static {v0, v1, v9}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    goto :goto_58

    .line 105
    :pswitch_55
    invoke-static {v0, v1, v9}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V

    .line 126
    :goto_58
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 128
    :goto_5a
    sget-object v10, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    if-eq v8, v10, :cond_64

    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    if-gtz v10, :cond_27

    .line 129
    :cond_64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6d

    .line 130
    invoke-virtual {v1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendCharacters(Ljava/lang/StringBuilder;)V

    :cond_6d
    const/4 v0, 0x5

    const/4 v2, 0x4

    if-eqz v3, :cond_99

    .line 135
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    goto :goto_97

    .line 137
    :cond_82
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    goto :goto_95

    :cond_93
    move v12, v2

    goto :goto_be

    :cond_95
    :goto_95
    const/4 v6, 0x6

    goto :goto_bd

    :cond_97
    :goto_97
    move v12, v0

    goto :goto_be

    .line 143
    :cond_99
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_bc

    .line 145
    :cond_aa
    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    :cond_ba
    const/4 v6, 0x3

    goto :goto_bd

    :cond_bc
    :goto_bc
    const/4 v6, 0x2

    :cond_bd
    :goto_bd
    move v12, v6

    .line 152
    :goto_be
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 153
    invoke-virtual {v1}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cb

    const/4 v5, 0x0

    :cond_cb
    move-object v10, v5

    const/4 v11, 0x0

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    return-object v0

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_40
    .end packed-switch
.end method

.method private static decodeAnsiX12Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 433
    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    return-void

    .line 436
    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_15

    return-void

    .line 441
    :cond_15
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v0, :cond_60

    .line 444
    aget v3, v1, v2

    if-eqz v3, :cond_58

    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4c

    if-eq v3, v0, :cond_46

    const/16 v4, 0xe

    if-ge v3, v4, :cond_36

    add-int/lit8 v3, v3, 0x2c

    int-to-char v3, v3

    .line 460
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5d

    :cond_36
    const/16 v4, 0x28

    if-ge v3, v4, :cond_41

    add-int/lit8 v3, v3, 0x33

    int-to-char v3, v3

    .line 462
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5d

    .line 464
    :cond_41
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_46
    const/16 v3, 0x20

    .line 456
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5d

    :cond_4c
    const/16 v3, 0x3e

    .line 453
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5d

    :cond_52
    const/16 v3, 0x2a

    .line 450
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_5d

    :cond_58
    const/16 v3, 0xd

    .line 447
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 469
    :cond_60
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_3

    return-void
.end method

.method private static decodeAsciiSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/lang/StringBuilder;Ljava/util/Set;)Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/16 v2, 0x8

    .line 168
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_8a

    const/4 v3, 0x1

    const/16 v4, 0x80

    if-gt v2, v4, :cond_1b

    if-eqz v1, :cond_13

    add-int/lit16 v2, v2, 0x80

    :cond_13
    sub-int/2addr v2, v3

    int-to-char p0, v2

    .line 176
    invoke-virtual {p1, p0}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 177
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_1b
    const/16 v4, 0x81

    if-ne v2, v4, :cond_22

    .line 179
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :cond_22
    const/16 v4, 0xe5

    if-gt v2, v4, :cond_35

    add-int/lit16 v2, v2, -0x82

    const/16 v3, 0xa

    if-ge v2, v3, :cond_31

    const/16 v3, 0x30

    .line 183
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 185
    :cond_31
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(I)V

    goto :goto_7c

    :cond_35
    const-string v4, "\u001e\u0004"

    packed-switch v2, :pswitch_data_90

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_85

    .line 223
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-nez v2, :cond_85

    goto :goto_7c

    .line 219
    :pswitch_45
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 217
    :pswitch_48
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 215
    :pswitch_4b
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 213
    :pswitch_4e
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    :pswitch_51
    const-string v2, "[)>\u001e06\u001d"

    .line 209
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :pswitch_5a
    const-string v2, "[)>\u001e05\u001d"

    .line 205
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7c

    :pswitch_63
    move v1, v3

    goto :goto_7c

    .line 193
    :pswitch_65
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1d

    .line 194
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_7c

    .line 191
    :pswitch_76
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 189
    :pswitch_79
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 229
    :goto_7c
    :pswitch_7c
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    if-gtz v2, :cond_2

    .line 230
    sget-object p0, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0

    .line 224
    :cond_85
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 170
    :cond_8a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_90
    .packed-switch 0xe6
        :pswitch_79
        :pswitch_76
        :pswitch_65
        :pswitch_7c
        :pswitch_7c
        :pswitch_63
        :pswitch_5a
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method private static decodeBase256Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    .line 522
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v0

    if-nez v0, :cond_1a

    .line 525
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_2e

    :cond_1a
    const/16 v2, 0xfa

    if-ge v0, v2, :cond_1f

    goto :goto_2e

    :cond_1f
    add-int/lit16 v0, v0, -0xf9

    mul-int/2addr v0, v2

    .line 529
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v2

    add-int/2addr v0, v2

    move v3, v4

    :goto_2e
    if-ltz v0, :cond_5f

    .line 537
    new-array v2, v0, [B

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v0, :cond_51

    .line 541
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-lt v5, v1, :cond_4c

    .line 544
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_33

    .line 542
    :cond_4c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 546
    :cond_51
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance p0, Ljava/lang/String;

    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, p0}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    return-void

    .line 534
    :cond_5f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeC40Segment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 248
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    return-void

    .line 251
    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_18

    return-void

    .line 256
    :cond_18
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move v5, v2

    :goto_20
    if-ge v5, v0, :cond_aa

    .line 259
    aget v6, v1, v5

    if-eqz v4, :cond_87

    const/4 v7, 0x1

    if-eq v4, v7, :cond_77

    const/4 v8, 0x2

    if-eq v4, v8, :cond_43

    if-ne v4, v0, :cond_3e

    if-eqz v3, :cond_37

    add-int/lit16 v6, v6, 0xe0

    int-to-char v3, v6

    .line 311
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_7f

    :cond_37
    add-int/lit8 v6, v6, 0x60

    int-to-char v4, v6

    .line 314
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_85

    .line 319
    :cond_3e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 286
    :cond_43
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    array-length v8, v4

    if-ge v6, v8, :cond_57

    .line 287
    aget-char v4, v4, v6

    if-eqz v3, :cond_53

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 289
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_7f

    .line 292
    :cond_53
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_85

    :cond_57
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_66

    const/16 v3, 0x1e

    if-ne v6, v3, :cond_61

    move v3, v7

    goto :goto_85

    .line 304
    :cond_61
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 297
    :cond_66
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x1d

    .line 298
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_85

    :cond_77
    if-eqz v3, :cond_81

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 278
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_7f
    move v3, v2

    goto :goto_85

    :cond_81
    int-to-char v4, v6

    .line 281
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_85
    move v4, v2

    goto :goto_a1

    :cond_87
    if-ge v6, v0, :cond_8d

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_a1

    .line 264
    :cond_8d
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_a5

    .line 265
    aget-char v6, v7, v6

    if-eqz v3, :cond_9e

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 267
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    move v3, v2

    goto :goto_a1

    .line 270
    :cond_9e
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_a1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20

    .line 273
    :cond_a5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 322
    :cond_aa
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    return-void
.end method

.method private static decodeECISegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_16

    .line 559
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x1

    .line 561
    invoke-virtual {p1, p0}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    :cond_15
    return-void

    .line 557
    :cond_16
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeEdifactSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;)V
    .registers 5

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_31

    const/4 v1, 0x6

    .line 493
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_24

    .line 498
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result p1

    const/16 v0, 0x8

    rsub-int/lit8 p1, p1, 0x8

    if-eq p1, v0, :cond_23

    .line 500
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    :cond_23
    return-void

    :cond_24
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_2a

    or-int/lit8 v1, v1, 0x40

    :cond_2a
    int-to-char v1, v1

    .line 508
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 510
    :cond_31
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method

.method private static decodeTextSegment(Lcom/google/zxing/common/BitSource;Lcom/google/zxing/common/ECIStringBuilder;Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Lcom/google/zxing/common/ECIStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_f

    return-void

    .line 342
    :cond_f
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_18

    return-void

    .line 347
    :cond_18
    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move v5, v2

    :goto_20
    if-ge v5, v0, :cond_b3

    .line 350
    aget v6, v1, v5

    if-eqz v4, :cond_90

    const/4 v7, 0x1

    if-eq v4, v7, :cond_80

    const/4 v8, 0x2

    if-eq v4, v8, :cond_4c

    if-ne v4, v0, :cond_47

    .line 402
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    array-length v7, v4

    if-ge v6, v7, :cond_42

    .line 403
    aget-char v4, v4, v6

    if-eqz v3, :cond_3e

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 405
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_88

    .line 408
    :cond_3e
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_8e

    .line 412
    :cond_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 416
    :cond_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 378
    :cond_4c
    sget-object v4, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    array-length v8, v4

    if-ge v6, v8, :cond_60

    .line 379
    aget-char v4, v4, v6

    if-eqz v3, :cond_5c

    add-int/lit16 v4, v4, 0x80

    int-to-char v3, v4

    .line 381
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_88

    .line 384
    :cond_5c
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_8e

    :cond_60
    const/16 v4, 0x1b

    if-eq v6, v4, :cond_6f

    const/16 v3, 0x1e

    if-ne v6, v3, :cond_6a

    move v3, v7

    goto :goto_8e

    .line 396
    :cond_6a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 389
    :cond_6f
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIStringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x1d

    .line 390
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_8e

    :cond_80
    if-eqz v3, :cond_8a

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 369
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_88
    move v3, v2

    goto :goto_8e

    :cond_8a
    int-to-char v4, v6

    .line 372
    invoke-virtual {p1, v4}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_8e
    move v4, v2

    goto :goto_aa

    :cond_90
    if-ge v6, v0, :cond_96

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_aa

    .line 355
    :cond_96
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    array-length v8, v7

    if-ge v6, v8, :cond_ae

    .line 356
    aget-char v6, v7, v6

    if-eqz v3, :cond_a7

    add-int/lit16 v6, v6, 0x80

    int-to-char v3, v6

    .line 358
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    move v3, v2

    goto :goto_aa

    .line 361
    :cond_a7
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_aa
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20

    .line 364
    :cond_ae
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 419
    :cond_b3
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_6

    return-void
.end method

.method private static parseTwoBytes(II[I)V
    .registers 5

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    .line 474
    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    .line 475
    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    .line 477
    div-int/lit8 v0, p0, 0x28

    .line 478
    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    .line 479
    aput p0, p2, p1

    return-void
.end method

.method private static unrandomize255State(II)I
    .registers 2

    mul-int/lit16 p1, p1, 0x95

    .line 585
    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_a

    goto :goto_c

    :cond_a
    add-int/lit16 p0, p0, 0x100

    :goto_c
    return p0
.end method
