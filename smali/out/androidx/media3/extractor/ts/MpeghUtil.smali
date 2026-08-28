.class final Landroidx/media3/extractor/ts/MpeghUtil;
.super Ljava/lang/Object;
.source "MpeghUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;,
        Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;
    }
.end annotation


# static fields
.field private static final MHAS_SYNC_WORD:I = 0xc001a5


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOutputFrameLength(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_25

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const/16 p0, 0x1000

    return p0

    .line 116
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported coreSbrFrameLengthIndex "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_25
    const/16 p0, 0x800

    return p0

    :cond_28
    const/16 p0, 0x400

    return p0

    :cond_2b
    const/16 p0, 0x300

    return p0
.end method

.method private static getResamplingRatio(I)D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_24

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported sampling rate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_17
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :sswitch_1a
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    return-wide v0

    :sswitch_1d
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0

    :sswitch_20
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    return-wide v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x396c -> :sswitch_20
        0x3e80 -> :sswitch_20
        0x5622 -> :sswitch_1d
        0x5dc0 -> :sswitch_1d
        0x72d8 -> :sswitch_1a
        0x7d00 -> :sswitch_1a
        0xac44 -> :sswitch_17
        0xbb80 -> :sswitch_17
        0xe5b0 -> :sswitch_1a
        0xfa00 -> :sswitch_1a
        0x15888 -> :sswitch_17
        0x17700 -> :sswitch_17
    .end sparse-switch
.end method

.method private static getSamplingFrequency(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_70

    .line 303
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported sampling rate index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :pswitch_17
    const/16 p0, 0x2580

    return p0

    :pswitch_1a
    const/16 p0, 0x3200

    return p0

    :pswitch_1d
    const/16 p0, 0x3840

    return p0

    :pswitch_20
    const/16 p0, 0x42b3

    return p0

    :pswitch_23
    const/16 p0, 0x4b00

    return p0

    :pswitch_26
    const/16 p0, 0x4e20

    return p0

    :pswitch_29
    const/16 p0, 0x6400

    return p0

    :pswitch_2c
    const/16 p0, 0x7080

    return p0

    :pswitch_2f
    const p0, 0x8566

    return p0

    :pswitch_33
    const p0, 0x9600

    return p0

    :pswitch_37
    const p0, 0x9c40

    return p0

    :pswitch_3b
    const p0, 0xc800

    return p0

    :pswitch_3f
    const p0, 0xe100

    return p0

    :pswitch_43
    const/16 p0, 0x1cb6

    return p0

    :pswitch_46
    const/16 p0, 0x1f40

    return p0

    :pswitch_49
    const/16 p0, 0x2b11

    return p0

    :pswitch_4c
    const/16 p0, 0x2ee0

    return p0

    :pswitch_4f
    const/16 p0, 0x3e80

    return p0

    :pswitch_52
    const/16 p0, 0x5622

    return p0

    :pswitch_55
    const/16 p0, 0x5dc0

    return p0

    :pswitch_58
    const/16 p0, 0x7d00

    return p0

    :pswitch_5b
    const p0, 0xac44

    return p0

    :pswitch_5f
    const p0, 0xbb80

    return p0

    :pswitch_63
    const p0, 0xfa00

    return p0

    :pswitch_67
    const p0, 0x15888

    return p0

    :pswitch_6b
    const p0, 0x17700

    return p0

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3
        :pswitch_3
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static getSbrRatioIndex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v1, 0x2

    if-eq p0, v1, :cond_23

    const/4 v1, 0x3

    if-eq p0, v1, :cond_23

    const/4 v1, 0x4

    if-ne p0, v1, :cond_f

    return v0

    .line 141
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported coreSbrFrameLengthIndex "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_23
    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static isSyncWord(I)Z
    .registers 2

    const v0, 0xffffff

    and-int/2addr p0, v0

    const v0, 0xc001a5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static parseAudioTruncationInfo(Landroidx/media3/common/util/ParsableBitArray;)I
    .registers 2

    .line 318
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    .line 319
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v0, 0xd

    .line 320
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static parseMhasPacketHeader(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    const/4 v0, 0x3

    const/16 v1, 0x8

    .line 61
    invoke-static {p0, v0, v1, v1}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v0

    iput v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    .line 62
    iget v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_13

    return v2

    :cond_13
    const/16 v0, 0x20

    const/4 v4, 0x2

    .line 66
    invoke-static {p0, v4, v1, v0}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedLongValue(Landroidx/media3/common/util/ParsableBitArray;III)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    .line 67
    iget-wide v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_25

    return v2

    .line 71
    :cond_25
    iget-wide v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, 0x10

    cmp-long v0, v0, v5

    if-gtz v0, :cond_67

    .line 76
    iget-wide v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    const/4 v1, 0x1

    if-nez v0, :cond_57

    .line 77
    iget v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    const/4 v5, 0x0

    if-eq v0, v1, :cond_50

    if-eq v0, v4, :cond_49

    const/16 v4, 0x11

    if-eq v0, v4, :cond_42

    goto :goto_57

    :cond_42
    const-string p0, "AudioTruncation packet with invalid packet label 0"

    .line 82
    invoke-static {p0, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_49
    const-string p0, "Mpegh3daFrame packet with invalid packet label 0"

    .line 85
    invoke-static {p0, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_50
    const-string p0, "Mpegh3daConfig packet with invalid packet label 0"

    .line 79
    invoke-static {p0, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_57
    :goto_57
    const/16 v0, 0xb

    const/16 v4, 0x18

    .line 92
    invoke-static {p0, v0, v4, v4}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result p0

    iput p0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    .line 93
    iget p0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    if-eq p0, v3, :cond_66

    move v2, v1

    :cond_66
    return v2

    .line 72
    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Contains sub-stream with an invalid packet label "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p1, Landroidx/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseMpegh3daConfig(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 190
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v1, 0x5

    .line 193
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_16

    const/16 v1, 0x18

    .line 195
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    goto :goto_1a

    .line 197
    :cond_16
    invoke-static {v1}, Landroidx/media3/extractor/ts/MpeghUtil;->getSamplingFrequency(I)I

    move-result v1

    :goto_1a
    const/4 v3, 0x3

    .line 200
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 201
    invoke-static {v3}, Landroidx/media3/extractor/ts/MpeghUtil;->getOutputFrameLength(I)I

    move-result v4

    .line 202
    invoke-static {v3}, Landroidx/media3/extractor/ts/MpeghUtil;->getSbrRatioIndex(I)I

    move-result v3

    const/4 v5, 0x2

    .line 204
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 206
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 207
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseSignals3d(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v6

    .line 208
    invoke-static {p0, v6, v3}, Landroidx/media3/extractor/ts/MpeghUtil;->skipMpegh3daDecoderConfig(Landroidx/media3/common/util/ParsableBitArray;II)V

    .line 210
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_75

    const/4 v3, 0x4

    .line 212
    invoke-static {p0, v5, v3, v0}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    move v8, v7

    :goto_45
    if-ge v8, v5, :cond_75

    const/16 v9, 0x10

    .line 214
    invoke-static {p0, v3, v0, v9}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v10

    .line 215
    invoke-static {p0, v3, v0, v9}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v9

    const/4 v11, 0x7

    if-ne v10, v11, :cond_6e

    .line 218
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 219
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 220
    new-array v9, v6, [B

    move v10, v7

    :goto_60
    if-ge v10, v6, :cond_6c

    .line 222
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_60

    :cond_6c
    move-object v6, v9

    goto :goto_72

    :cond_6e
    mul-int/2addr v9, v0

    .line 225
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :goto_72
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_75
    move-object v5, v6

    .line 232
    invoke-static {v1}, Landroidx/media3/extractor/ts/MpeghUtil;->getResamplingRatio(I)D

    move-result-wide v6

    int-to-double v0, v1

    mul-double/2addr v0, v6

    double-to-int v3, v0

    int-to-double v0, v4

    mul-double/2addr v0, v6

    double-to-int v4, v0

    .line 236
    new-instance p0, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;-><init>(III[BLandroidx/media3/extractor/ts/MpeghUtil$1;)V

    return-object p0
.end method

.method private static parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z
    .registers 3

    const/4 v0, 0x3

    .line 512
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 513
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0xd

    .line 517
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_f
    return v0
.end method

.method private static parseSignals3d(Landroidx/media3/common/util/ParsableBitArray;)I
    .registers 8

    const/4 v0, 0x5

    .line 402
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_2c

    const/4 v4, 0x3

    .line 405
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0x8

    const/16 v6, 0x10

    .line 406
    invoke-static {p0, v0, v5, v6}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    if-eqz v4, :cond_20

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 411
    :cond_20
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 412
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2c
    return v3
.end method

.method private static readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I
    .registers 8

    .line 561
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 562
    :goto_10
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    shl-int v0, v2, p1

    sub-int/2addr v0, v2

    shl-int v1, v2, p2

    sub-int/2addr v1, v2

    .line 565
    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v3

    shl-int/2addr v2, p3

    invoke-static {v3, v2}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    .line 567
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, p1, :cond_29

    return v3

    .line 571
    :cond_29
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    if-ne p1, v0, :cond_49

    .line 573
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    if-ge v0, p2, :cond_36

    return v3

    .line 576
    :cond_36
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p2

    add-int/2addr p1, p2

    if-ne p2, v1, :cond_49

    .line 580
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p2

    if-ge p2, p3, :cond_44

    return v3

    .line 583
    :cond_44
    invoke-virtual {p0, p3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/2addr p1, p0

    :cond_49
    return p1
.end method

.method private static readEscapedLongValue(Landroidx/media3/common/util/ParsableBitArray;III)J
    .registers 12

    .line 609
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 610
    :goto_f
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    sub-long/2addr v2, v0

    shl-long v4, v0, p2

    sub-long/2addr v4, v0

    .line 614
    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v6

    shl-long/2addr v0, p3

    .line 613
    invoke-static {v6, v7, v0, v1}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    .line 616
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const-wide/16 v6, -0x1

    if-ge v0, p1, :cond_2b

    return-wide v6

    .line 620
    :cond_2b
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_4f

    .line 622
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    if-ge p1, p2, :cond_3a

    return-wide v6

    .line 626
    :cond_3a
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p1

    add-long/2addr v0, p1

    cmp-long p1, p1, v4

    if-nez p1, :cond_4f

    .line 630
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    if-ge p1, p3, :cond_4a

    return-wide v6

    .line 634
    :cond_4a
    invoke-virtual {p0, p3}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_4f
    return-wide v0
.end method

.method private static skipMpegh3daDecoderConfig(Landroidx/media3/common/util/ParsableBitArray;II)V
    .registers 16

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/16 v2, 0x10

    .line 431
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 432
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v3, :cond_b3

    const/4 v7, 0x2

    .line 435
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    if-eqz v8, :cond_a7

    const/4 v9, 0x3

    if-eq v8, v4, :cond_3c

    if-eq v8, v9, :cond_20

    goto/16 :goto_af

    .line 485
    :cond_20
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 486
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v7

    .line 488
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 489
    invoke-static {p0, v1, v2, v5}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    .line 491
    :cond_30
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    if-lez v7, :cond_af

    mul-int/lit8 v7, v7, 0x8

    .line 494
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_af

    .line 445
    :cond_3c
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 447
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_45
    if-lez p2, :cond_4f

    .line 451
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V

    .line 452
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    goto :goto_50

    :cond_4f
    move v8, v5

    :goto_50
    if-lez v8, :cond_73

    const/4 v10, 0x6

    .line 456
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 457
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 458
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 459
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_67

    const/4 v12, 0x5

    .line 460
    invoke-virtual {p0, v12}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_67
    if-eq v8, v7, :cond_6b

    if-ne v8, v9, :cond_6e

    .line 463
    :cond_6b
    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_6e
    if-ne v11, v7, :cond_73

    .line 466
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :cond_73
    add-int/lit8 v8, p1, -0x1

    int-to-double v8, v8

    .line 470
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/2addr v8, v4

    .line 471
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-lez v7, :cond_96

    .line 473
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_96

    .line 474
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 477
    :cond_96
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 478
    invoke-virtual {p0, v8}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_9f
    if-nez p2, :cond_af

    if-nez v7, :cond_af

    .line 481
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    goto :goto_af

    .line 439
    :cond_a7
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->parseMpegh3daCoreConfig(Landroidx/media3/common/util/ParsableBitArray;)Z

    if-lez p2, :cond_af

    .line 441
    invoke-static {p0}, Landroidx/media3/extractor/ts/MpeghUtil;->skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_af
    :goto_af
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    :cond_b3
    return-void
.end method

.method private static skipMpegh3daFlexibleSpeakerConfig(Landroidx/media3/common/util/ParsableBitArray;I)V
    .registers 12

    .line 357
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    const/4 v4, 0x7

    if-eqz v0, :cond_f

    move v1, v4

    :cond_f
    if-eqz v0, :cond_14

    const/16 v0, 0x8

    goto :goto_15

    :cond_14
    const/4 v0, 0x6

    :goto_15
    const/4 v5, 0x0

    move v6, v5

    :goto_17
    if-ge v6, p1, :cond_55

    .line 365
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    const/16 v8, 0xb4

    if-eqz v7, :cond_26

    .line 366
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    move v7, v5

    goto :goto_47

    :cond_26
    const/4 v7, 0x2

    .line 368
    invoke-virtual {p0, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_38

    .line 370
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    mul-int/2addr v7, v3

    if-eqz v7, :cond_38

    .line 373
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 376
    :cond_38
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    mul-int/2addr v7, v3

    if-eqz v7, :cond_44

    if-eq v7, v8, :cond_44

    .line 379
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 381
    :cond_44
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    :goto_47
    if-eqz v7, :cond_53

    if-eq v7, v8, :cond_53

    .line 385
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_53

    add-int/lit8 v6, v6, 0x1

    :cond_53
    add-int/2addr v6, v2

    goto :goto_17

    :cond_55
    return-void
.end method

.method private static skipSbrConfig(Landroidx/media3/common/util/ParsableBitArray;)V
    .registers 3

    const/4 v0, 0x3

    .line 529
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v0, 0x8

    .line 530
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 531
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 532
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    .line 534
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_17
    if-eqz v1, :cond_1d

    const/4 v0, 0x6

    .line 538
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_1d
    return-void
.end method

.method private static skipSpeakerConfig3d(Landroidx/media3/common/util/ParsableBitArray;)V
    .registers 6

    const/4 v0, 0x2

    .line 333
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x6

    .line 335
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_c
    const/16 v2, 0x8

    const/16 v3, 0x10

    const/4 v4, 0x5

    .line 339
    invoke-static {p0, v4, v2, v3}, Landroidx/media3/extractor/ts/MpeghUtil;->readEscapedIntValue(Landroidx/media3/common/util/ParsableBitArray;III)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v1, v3, :cond_1f

    mul-int/lit8 v2, v2, 0x7

    .line 341
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_24

    :cond_1f
    if-ne v1, v0, :cond_24

    .line 343
    invoke-static {p0, v2}, Landroidx/media3/extractor/ts/MpeghUtil;->skipMpegh3daFlexibleSpeakerConfig(Landroidx/media3/common/util/ParsableBitArray;I)V

    :cond_24
    :goto_24
    return-void
.end method
