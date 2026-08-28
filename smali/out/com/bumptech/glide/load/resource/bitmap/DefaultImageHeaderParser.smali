.class public final Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;
.super Ljava/lang/Object;
.source "DefaultImageHeaderParser.java"

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;,
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;
    }
.end annotation


# static fields
.field private static final AVIF_BRAND:I = 0x61766966

.field private static final AVIS_BRAND:I = 0x61766973

.field private static final BYTES_PER_FORMAT:[I

.field static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final FTYP_HEADER:I = 0x66747970

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final RIFF_HEADER:I = 0x52494646

.field private static final SEGMENT_SOS:I = 0xda

.field static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "DfltImageHeaderParser"

.field private static final VP8_HEADER:I = 0x56503800

.field private static final VP8_HEADER_MASK:I = -0x100

.field private static final VP8_HEADER_TYPE_EXTENDED:I = 0x58

.field private static final VP8_HEADER_TYPE_LOSSLESS:I = 0x4c

.field private static final VP8_HEADER_TYPE_MASK:I = 0xff

.field private static final WEBP_EXTENDED_ALPHA_FLAG:I = 0x10

.field private static final WEBP_EXTENDED_ANIMATION_FLAG:I = 0x2

.field private static final WEBP_HEADER:I = 0x57454250

.field private static final WEBP_LOSSLESS_ALPHA_FLAG:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-8"

    .line 38
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_18

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->BYTES_PER_FORMAT:[I

    return-void

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcTagOffset(II)I
    .registers 2

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Parser doesn\'t handle magic number: "

    const/4 v1, -0x1

    .line 226
    :try_start_3
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v2

    .line 228
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->handles(I)Z

    move-result v3
    :try_end_b
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_3 .. :try_end_b} :catch_4e

    const/4 v4, 0x3

    const-string v5, "DfltImageHeaderParser"

    if-nez v3, :cond_27

    .line 229
    :try_start_10
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return v1

    .line 234
    :cond_27
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->moveToExifSegmentAndGetLength(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)I

    move-result v0

    if-ne v0, v1, :cond_39

    .line 236
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_38

    const-string p1, "Failed to parse exif segment length, or exif segment not found"

    .line 237
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return v1

    .line 242
    :cond_39
    const-class v2, [B

    invoke-interface {p2, v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_41
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_10 .. :try_end_41} :catch_4e

    .line 244
    :try_start_41
    invoke-direct {p0, p1, v2, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;[BI)I

    move-result p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_49

    .line 246
    :try_start_45
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    return p1

    :catchall_49
    move-exception p1

    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 247
    throw p1
    :try_end_4e
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_45 .. :try_end_4e} :catch_4e

    :catch_4e
    return v1
.end method

.method private getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_c

    .line 103
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_c
    shl-int/lit8 v0, v0, 0x8

    .line 106
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x474946

    if-ne v0, v1, :cond_1b

    .line 108
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_1b
    shl-int/lit8 v0, v0, 0x8

    .line 111
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v1

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_3c

    const-wide/16 v0, 0x15

    .line 116
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J
    :try_end_2c
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_0 .. :try_end_2c} :catch_a9

    .line 118
    :try_start_2c
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_36

    .line 120
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_38

    :cond_36
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_38
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_2c .. :try_end_38} :catch_39

    :goto_38
    return-object p1

    .line 126
    :catch_39
    :try_start_39
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_3c
    const v1, 0x52494646

    if-eq v0, v1, :cond_46

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->sniffAvif(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;I)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1

    :cond_46
    const-wide/16 v0, 0x4

    .line 139
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 140
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v3

    or-int/2addr v2, v3

    const v3, 0x57454250

    if-eq v2, v3, :cond_5e

    .line 142
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    .line 144
    :cond_5e
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v3

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, -0x100

    const v4, 0x56503800

    if-eq v3, v4, :cond_73

    .line 146
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_73
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x58

    if-ne v2, v3, :cond_91

    .line 150
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 151
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result p1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_87

    .line 153
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_87
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_8e

    .line 155
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    .line 157
    :cond_8e
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_91
    const/16 v3, 0x4c

    if-ne v2, v3, :cond_a6

    .line 163
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    .line 164
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a3

    .line 165
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_a5

    :cond_a3
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_a5
    return-object p1

    .line 167
    :cond_a6
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_a8
    .catch Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException; {:try_start_39 .. :try_end_a8} :catch_a9

    return-object p1

    .line 173
    :catch_a9
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method private static handles(I)Z
    .registers 3

    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_12

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_12

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method private hasJpegExifPreamble([BI)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 286
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v1, v1

    if-le p2, v1, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    move p2, v0

    :goto_b
    if-eqz p2, :cond_1d

    move v1, v0

    .line 289
    :goto_e
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 290
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    move v0, p2

    :goto_1e
    return v0
.end method

.method private moveToExifSegmentAndGetLength(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, -0x1

    const-string v4, "DfltImageHeaderParser"

    if-eq v0, v1, :cond_25

    .line 307
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown segmentId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v3

    .line 313
    :cond_25
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt8()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_2e

    return v3

    :cond_2e
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_3e

    .line 317
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "Found MARKER_EOI in exif segment"

    .line 318
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v3

    .line 323
    :cond_3e
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v5, 0xe1

    if-eq v0, v5, :cond_7e

    int-to-long v5, v1

    .line 327
    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_0

    .line 329
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to skip enough data, type: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", wanted to skip: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", but actually skipped: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v3

    :cond_7e
    return v1
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;)I
    .registers 13

    const/4 v0, 0x6

    .line 351
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v1

    const/16 v2, 0x4949

    const/4 v3, 0x3

    const-string v4, "DfltImageHeaderParser"

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_2b

    .line 361
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown endianness = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_28
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_30

    .line 355
    :cond_2b
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_30

    .line 358
    :cond_2e
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 368
    :goto_30
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    const/16 v1, 0xa

    .line 370
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 371
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v0, :cond_13a

    .line 373
    invoke-static {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->calcTagOffset(II)I

    move-result v5

    .line 375
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v6

    const/16 v7, 0x112

    if-eq v6, v7, :cond_4f

    goto/16 :goto_136

    :cond_4f
    add-int/lit8 v7, v5, 0x2

    .line 381
    invoke-virtual {p0, v7}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_11e

    const/16 v8, 0xc

    if-le v7, v8, :cond_5e

    goto/16 :goto_11e

    :cond_5e
    add-int/lit8 v8, v5, 0x4

    .line 390
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v8

    if-gez v8, :cond_73

    .line 392
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_136

    const-string v5, "Negative tiff component count"

    .line 393
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    .line 398
    :cond_73
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    const-string v10, " tagType="

    if-eqz v9, :cond_a9

    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Got tagIndex="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " formatCode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " componentCount="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_a9
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    const/4 v9, 0x4

    if-le v8, v9, :cond_ca

    .line 413
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    :cond_ca
    add-int/lit8 v5, v5, 0x8

    if-ltz v5, :cond_fd

    .line 420
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->length()I

    move-result v7

    if-le v5, v7, :cond_d5

    goto :goto_fd

    :cond_d5
    if-ltz v8, :cond_e4

    add-int/2addr v8, v5

    .line 427
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->length()I

    move-result v7

    if-le v8, v7, :cond_df

    goto :goto_e4

    .line 435
    :cond_df
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result p0

    return p0

    .line 428
    :cond_e4
    :goto_e4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Illegal number of bytes for TI tag data tagType="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 421
    :cond_fd
    :goto_fd
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_136

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Illegal tagValueOffset="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 384
    :cond_11e
    :goto_11e
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got invalid format code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    :goto_136
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3f

    :cond_13a
    const/4 p0, -0x1

    return p0
.end method

.method private parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;[BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-interface {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->read([BI)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "DfltImageHeaderParser"

    if-eq p1, p3, :cond_2d

    .line 262
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read exif segment data, length: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", actually read: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v0

    .line 274
    :cond_2d
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->hasJpegExifPreamble([BI)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 276
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;

    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;-><init>([BI)V

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$RandomAccessReader;)I

    move-result p1

    return p1

    .line 278
    :cond_3d
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "Missing jpeg exif preamble"

    .line 279
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v0
.end method

.method private sniffAvif(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;I)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x66747970

    if-eq v0, v1, :cond_13

    .line 187
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    .line 190
    :cond_13
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x61766973

    if-ne v0, v1, :cond_26

    .line 195
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_26
    const/4 v2, 0x0

    const v3, 0x61766966

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2f

    move v0, v4

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    const-wide/16 v5, 0x4

    .line 199
    invoke-interface {p1, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->skip(J)J

    add-int/lit8 p2, p2, -0x10

    .line 204
    rem-int/lit8 v5, p2, 0x4

    if-nez v5, :cond_58

    :goto_3b
    const/4 v5, 0x5

    if-ge v2, v5, :cond_58

    if-lez p2, :cond_58

    .line 206
    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    invoke-interface {p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;->getUInt16()I

    move-result v6

    or-int/2addr v5, v6

    if-ne v5, v1, :cond_50

    .line 208
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p1

    :cond_50
    if-ne v5, v3, :cond_53

    move v0, v4

    :cond_53
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p2, p2, -0x4

    goto :goto_3b

    :cond_58
    if-eqz v0, :cond_5d

    .line 214
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_5f

    :cond_5d
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_5f
    return-object p1
.end method


# virtual methods
.method public getOrientation(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;

    .line 85
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    .line 86
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 84
    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1

    return p1
.end method

.method public getOrientation(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;

    .line 93
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 94
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getOrientation(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1

    return p1
.end method

.method public getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;

    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;->getType(Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method
