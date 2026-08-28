.class public final Landroidx/media3/extractor/mp4/SmtaAtomUtil;
.super Ljava/lang/Object;
.source "SmtaAtomUtil.java"


# static fields
.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION:I = 0x9

.field private static final CAMCORDER_FRC_SUPERSLOW_MOTION_HEVC:I = 0x16

.field private static final CAMCORDER_NORMAL:I = 0x0

.field private static final CAMCORDER_QFRC_SUPERSLOW_MOTION:I = 0x17

.field private static final CAMCORDER_SINGLE_SUPERSLOW_MOTION:I = 0x7

.field private static final CAMCORDER_SLOW_MOTION_V2:I = 0xc

.field private static final CAMCORDER_SLOW_MOTION_V2_120:I = 0xd

.field private static final CAMCORDER_SLOW_MOTION_V2_HEVC:I = 0x15

.field private static final NO_VALUE:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I
    .registers 6

    const/16 v0, 0xc

    if-ne p0, v0, :cond_7

    const/16 p0, 0xf0

    return p0

    :cond_7
    const/16 v1, 0xd

    if-ne p0, v1, :cond_e

    const/16 p0, 0x78

    return p0

    :cond_e
    const/16 v1, 0x15

    const v2, -0x7fffffff

    if-eq p0, v1, :cond_16

    return v2

    .line 129
    :cond_16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_3b

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    add-int/2addr p0, v1

    if-le p0, p2, :cond_26

    goto :goto_3b

    .line 133
    :cond_26
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 134
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    if-lt p0, v0, :cond_3b

    const p0, 0x73726672

    if-eq p2, p0, :cond_36

    goto :goto_3b

    .line 139
    :cond_36
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result p0

    return p0

    :cond_3b
    :goto_3b
    return v2
.end method

.method public static parseSmta(Landroidx/media3/common/util/ParsableByteArray;I)Landroidx/media3/common/Metadata;
    .registers 10

    const/16 v0, 0xc

    .line 73
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    :goto_5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p1, :cond_5f

    .line 75
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 77
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x73617574

    if-ne v3, v4, :cond_5a

    const/16 v0, 0x10

    if-ge v2, v0, :cond_22

    return-object v1

    :cond_22
    const/4 v0, 0x4

    .line 83
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    move v4, v3

    :goto_2a
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v5, :cond_40

    .line 90
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 91
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-nez v5, :cond_3a

    move v2, v7

    goto :goto_3d

    :cond_3a
    if-ne v5, v6, :cond_3d

    move v4, v7

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 99
    :cond_40
    invoke-static {v2, p0, p1}, Landroidx/media3/extractor/mp4/SmtaAtomUtil;->getCaptureFrameRate(ILandroidx/media3/common/util/ParsableByteArray;I)I

    move-result p0

    const p1, -0x7fffffff

    if-ne p0, p1, :cond_4a

    return-object v1

    .line 104
    :cond_4a
    new-instance p1, Landroidx/media3/common/Metadata;

    new-array v1, v6, [Landroidx/media3/common/Metadata$Entry;

    new-instance v2, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    int-to-float p0, p0

    invoke-direct {v2, p0, v4}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    aput-object v2, v1, v0

    invoke-direct {p1, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object p1

    :cond_5a
    add-int/2addr v0, v2

    .line 106
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_5

    :cond_5f
    return-object v1
.end method
