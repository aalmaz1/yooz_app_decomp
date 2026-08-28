.class final Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;
.super Ljava/lang/Object;
.source "RtpVp8Reader.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final MEDIA_CLOCK_FREQUENCY:I = 0x15f90

.field private static final TAG:Ljava/lang/String; = "RtpVP8Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfVp8Frame:Z

.field private isKeyFrame:Z

.field private isOutputFormatSet:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    .line 76
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    .line 77
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .registers 9

    .line 212
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    .line 215
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isKeyFrame:Z

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 213
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v0, -0x1

    .line 219
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 220
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    return-void
.end method

.method private validateVp8Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .registers 9

    .line 154
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1d

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1d

    .line 158
    iget-boolean p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    if-eqz p2, :cond_1a

    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    if-lez p2, :cond_1a

    .line 160
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 162
    :cond_1a
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    goto :goto_45

    .line 163
    :cond_1d
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    const-string v4, "RtpVP8Reader"

    const/4 v5, 0x0

    if-eqz v1, :cond_6e

    .line 165
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v1

    if-ge p2, v1, :cond_45

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 169
    invoke-static {p2, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {v4, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_45
    :goto_45
    and-int/lit16 p2, v0, 0x80

    if-eqz p2, :cond_6d

    .line 182
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_5c

    .line 186
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5c

    .line 189
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_5c
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_63

    .line 195
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_63
    and-int/lit8 v0, p2, 0x20

    if-nez v0, :cond_6a

    and-int/2addr p2, v3

    if-eqz p2, :cond_6d

    .line 200
    :cond_6a
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_6d
    return v2

    :cond_6e
    const-string p1, "RTP packet is not the start of a new VP8 partition, skipping."

    .line 176
    invoke-static {v4, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .registers 13

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->validateVp8Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 102
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_21

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->gotFirstPacketOfVp8Frame:Z

    if-eqz v0, :cond_21

    .line 103
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isKeyFrame:Z

    .line 105
    :cond_21
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isOutputFormatSet:Z

    if-nez v0, :cond_68

    .line 107
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v3, v0, 0x6

    .line 109
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 111
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    and-int/lit16 v3, v3, 0x3fff

    .line 112
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    and-int/lit16 v4, v4, 0x3fff

    .line 113
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 115
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->width:I

    if-ne v3, v0, :cond_4d

    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v0, v0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->height:I

    if-eq v4, v0, :cond_66

    .line 116
    :cond_4d
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v5, v5, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 117
    invoke-virtual {v5}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 116
    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 119
    :cond_66
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->isOutputFormatSet:Z

    .line 122
    :cond_68
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 123
    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 124
    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    if-ne p1, v1, :cond_78

    .line 125
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    goto :goto_7b

    :cond_78
    add-int/2addr p1, v0

    .line 127
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    .line 130
    :goto_7b
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const v6, 0x15f90

    move-wide v2, p2

    .line 131
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleTimeUs:J

    if-eqz p5, :cond_8e

    .line 135
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 137
    :cond_8e
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->previousSequenceNumber:I

    :cond_90
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .registers 4

    const/4 v0, 0x2

    .line 84
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 85
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .registers 8

    .line 90
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_d

    const/4 p3, 0x1

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 91
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 143
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 144
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->fragmentedSampleSizeBytes:I

    .line 145
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;->startTimeOffsetUs:J

    return-void
.end method
