.class final Landroidx/media3/extractor/avi/StreamFormatChunk;
.super Ljava/lang/Object;
.source "StreamFormatChunk.java"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamFormatChunk"


# instance fields
.field public final format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media3/extractor/avi/StreamFormatChunk;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method private static getMimeTypeFromCompression(I)Ljava/lang/String;
    .registers 1

    sparse-switch p0, :sswitch_data_1a

    const/4 p0, 0x0

    return-object p0

    :sswitch_5
    const-string/jumbo p0, "video/mjpeg"

    return-object p0

    :sswitch_9
    const-string/jumbo p0, "video/mp43"

    return-object p0

    :sswitch_d
    const-string/jumbo p0, "video/mp42"

    return-object p0

    :sswitch_11
    const-string/jumbo p0, "video/avc"

    return-object p0

    :sswitch_15
    const-string/jumbo p0, "video/mp4v-es"

    return-object p0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x30355844 -> :sswitch_15
        0x31435641 -> :sswitch_11
        0x31637661 -> :sswitch_11
        0x3234504d -> :sswitch_d
        0x3334504d -> :sswitch_9
        0x34363248 -> :sswitch_11
        0x34504d46 -> :sswitch_15
        0x44495633 -> :sswitch_15
        0x44495658 -> :sswitch_15
        0x47504a4d -> :sswitch_5
        0x58564944 -> :sswitch_15
        0x64697678 -> :sswitch_15
        0x67706a6d -> :sswitch_5
        0x78766964 -> :sswitch_15
    .end sparse-switch
.end method

.method private static getMimeTypeFromTag(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2001

    if-eq p0, v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_18
    const-string p0, "audio/ac3"

    return-object p0

    :cond_1b
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_1e
    const-string p0, "audio/mpeg"

    return-object p0

    :cond_21
    const-string p0, "audio/raw"

    return-object p0
.end method

.method private static parseBitmapInfoHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .registers 4

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 61
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    .line 63
    invoke-static {p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromCompression(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring track with unsupported compression "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_2f
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 69
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 70
    new-instance v0, Landroidx/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 34
    invoke-static {p1}, Landroidx/media3/extractor/avi/StreamFormatChunk;->parseBitmapInfoHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 36
    invoke-static {p1}, Landroidx/media3/extractor/avi/StreamFormatChunk;->parseWaveFormatEx(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    .line 38
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring strf box for unsupported track type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamFormatChunk"

    .line 38
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseWaveFormatEx(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .registers 8

    .line 77
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 78
    invoke-static {v0}, Landroidx/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromTag(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring track with unsupported format tag "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_20
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const/4 v3, 0x6

    .line 85
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    .line 87
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v3

    .line 88
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_40

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    goto :goto_41

    :cond_40
    move v4, v5

    .line 89
    :goto_41
    new-array v6, v4, [B

    .line 90
    invoke-virtual {p0, v6, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 92
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 94
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 95
    invoke-virtual {v5, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    const-string v0, "audio/raw"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-eqz v3, :cond_63

    .line 98
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    :cond_63
    const-string v0, "audio/mp4a-latm"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    if-lez v4, :cond_74

    .line 101
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 103
    :cond_74
    new-instance v0, Landroidx/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    const v0, 0x66727473

    return v0
.end method
