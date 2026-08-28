.class final Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;
.super Ljava/lang/Object;
.source "RtpVp9Reader.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final MEDIA_CLOCK_FREQUENCY:I = 0x15f90

.field private static final SCALABILITY_STRUCTURE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RtpVp9Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfVp9Frame:Z

.field private height:I

.field private isKeyFrame:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private reportedOutputFormat:Z

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;

.field private width:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 81
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    .line 84
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    .line 85
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 86
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .registers 9

    .line 268
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    .line 271
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->isKeyFrame:Z

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 269
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v0, -0x1

    .line 275
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 276
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    return-void
.end method

.method private validateVp9Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .registers 10

    .line 170
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1b

    .line 172
    iget-boolean p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    if-eqz p2, :cond_18

    iget p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    if-lez p2, :cond_18

    .line 174
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 176
    :cond_18
    iput-boolean v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    goto :goto_41

    .line 177
    :cond_1b
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    const-string v6, "RtpVp9Reader"

    if-eqz v1, :cond_c5

    .line 179
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    invoke-static {v1}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v1

    if-ge p2, v1, :cond_41

    new-array p1, v2, [Ljava/lang/Object;

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 183
    invoke-static {p2, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_41
    :goto_41
    and-int/lit16 p2, v0, 0x80

    if-eqz p2, :cond_54

    .line 199
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_54

    .line 202
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-ge p2, v3, :cond_54

    return v4

    :cond_54
    and-int/lit8 p2, v0, 0x10

    if-nez p2, :cond_5a

    move v1, v3

    goto :goto_5b

    :cond_5a
    move v1, v4

    :goto_5b
    const-string v6, "VP9 flexible mode is not supported."

    .line 209
    invoke-static {v1, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_73

    .line 213
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 214
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v3, :cond_6e

    return v4

    :cond_6e
    if-nez p2, :cond_73

    .line 219
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_73
    and-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_c4

    .line 225
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    shr-int/lit8 v0, p2, 0x5

    and-int/lit8 v0, v0, 0x7

    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_9f

    add-int/2addr v0, v3

    .line 231
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    mul-int/lit8 v6, v0, 0x4

    if-ge v1, v6, :cond_8d

    return v4

    :cond_8d
    move v1, v4

    :goto_8e
    if-ge v1, v0, :cond_9f

    .line 235
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    .line 236
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_9f
    and-int/2addr p2, v5

    if-eqz p2, :cond_c4

    .line 243
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 244
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-ge v0, p2, :cond_ad

    return v4

    :cond_ad
    move v0, v4

    :goto_ae
    if-ge v0, p2, :cond_c4

    .line 249
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    and-int/lit8 v1, v1, 0xc

    shr-int/2addr v1, v2

    .line 251
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-ge v5, v1, :cond_be

    return v4

    .line 255
    :cond_be
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    :cond_c4
    return v3

    :cond_c5
    const-string p1, "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet."

    .line 190
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .registers 13

    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-direct {p0, p1, p4}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->validateVp9Descriptor(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 107
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_22

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->gotFirstPacketOfVp9Frame:Z

    if-eqz v0, :cond_22

    .line 110
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->isKeyFrame:Z

    .line 113
    :cond_22
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->reportedOutputFormat:Z

    if-nez v0, :cond_5f

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    if-eq v0, v2, :cond_5f

    iget v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    if-eq v3, v2, :cond_5f

    .line 114
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->width:I

    if-ne v0, v3, :cond_40

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->height:I

    if-eq v0, v3, :cond_5d

    .line 115
    :cond_40
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v3, v3, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 116
    invoke-virtual {v3}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->width:I

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->height:I

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 115
    invoke-interface {v0, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 118
    :cond_5d
    iput-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->reportedOutputFormat:Z

    .line 121
    :cond_5f
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 123
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 124
    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    if-ne p1, v2, :cond_6f

    .line 125
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    goto :goto_72

    :cond_6f
    add-int/2addr p1, v0

    .line 127
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 129
    :goto_72
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    const v6, 0x15f90

    move-wide v2, p2

    .line 130
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleTimeUs:J

    if-eqz p5, :cond_85

    .line 134
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 136
    :cond_85
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->previousSequenceNumber:I

    :cond_87
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .registers 4

    const/4 v0, 0x2

    .line 91
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 92
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .registers 8

    .line 97
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_d

    const/4 p3, 0x1

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    :goto_e
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 98
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 142
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 143
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->fragmentedSampleSizeBytes:I

    .line 144
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;->startTimeOffsetUs:J

    return-void
.end method
