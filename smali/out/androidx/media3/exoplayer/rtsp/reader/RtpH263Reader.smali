.class final Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;
.super Ljava/lang/Object;
.source "RtpH263Reader.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final I_VOP:I = 0x0

.field private static final MEDIA_CLOCK_FREQUENCY:I = 0x15f90

.field private static final PICTURE_START_CODE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "RtpH263Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private fragmentedSampleTimeUs:J

.field private gotFirstPacketOfH263Frame:Z

.field private height:I

.field private isKeyFrame:Z

.field private isOutputFormatSet:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;

.field private width:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    return-void
.end method

.method private outputSampleMetadataForFragmentedPackets()V
    .registers 9

    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    .line 239
    iget-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    iget v5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 237
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 244
    iput-wide v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    .line 245
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 246
    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    return-void
.end method

.method private parseVopHeader(Landroidx/media3/common/util/ParsableByteArray;Z)V
    .registers 8

    .line 192
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 201
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const/16 v3, 0xa

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    const-wide/16 v3, 0x20

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_46

    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v1

    shr-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez p2, :cond_3d

    if-nez v3, :cond_3d

    shr-int/lit8 p2, v1, 0x2

    and-int/lit8 p2, p2, 0x7

    if-ne p2, v4, :cond_30

    const/16 p2, 0x80

    .line 215
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    const/16 p2, 0x60

    .line 216
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    goto :goto_3d

    :cond_30
    add-int/lit8 p2, p2, -0x2

    const/16 v1, 0xb0

    shl-int/2addr v1, p2

    .line 218
    iput v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    const/16 v1, 0x90

    shl-int p2, v1, p2

    .line 219
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    .line 222
    :cond_3d
    :goto_3d
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-nez v3, :cond_43

    move v2, v4

    .line 223
    :cond_43
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    return-void

    .line 226
    :cond_46
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 227
    iput-boolean v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .registers 13

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    and-int/lit16 v2, v1, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    and-int/lit16 v5, v1, 0x200

    const-string v6, "RtpH263Reader"

    if-nez v5, :cond_ea

    and-int/lit16 v5, v1, 0x1f8

    if-nez v5, :cond_ea

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_26

    goto/16 :goto_ea

    :cond_26
    if-eqz v2, :cond_57

    .line 119
    iget-boolean v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    if-eqz v1, :cond_33

    iget v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    if-lez v1, :cond_33

    .line 121
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 123
    :cond_33
    iput-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    .line 125
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    const/16 v2, 0x80

    if-ge v1, v2, :cond_45

    const-string p1, "Picture start Code (PSC) missing, dropping packet."

    .line 128
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_45
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aput-byte v3, v1, v0

    .line 133
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v2

    .line 134
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_7c

    .line 135
    :cond_57
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->gotFirstPacketOfH263Frame:Z

    if-eqz v0, :cond_e4

    .line 137
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    invoke-static {v0}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v0

    if-ge p4, v0, :cond_7c

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 141
    invoke-static {p2, p1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_7c
    :goto_7c
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    if-nez v0, :cond_c0

    .line 156
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->parseVopHeader(Landroidx/media3/common/util/ParsableByteArray;Z)V

    .line 157
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    if-nez v0, :cond_c0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    if-eqz v0, :cond_c0

    .line 158
    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->width:I

    if-ne v0, v1, :cond_a1

    iget v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    if-eq v0, v1, :cond_be

    .line 159
    :cond_a1
    iget-object v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object v1, v1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 160
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->width:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->height:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 159
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 162
    :cond_be
    iput-boolean v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    .line 165
    :cond_c0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 167
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 168
    iget p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 169
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const v6, 0x15f90

    move-wide v2, p2

    .line 170
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleTimeUs:J

    if-eqz p5, :cond_e1

    .line 173
    invoke-direct {p0}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->outputSampleMetadataForFragmentedPackets()V

    .line 175
    :cond_e1
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    return-void

    :cond_e4
    const-string p1, "First payload octet of the H263 packet is not the beginning of a new H263 partition, Dropping current packet."

    .line 148
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ea
    :goto_ea
    const-string p1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    .line 111
    invoke-static {v6, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .registers 4

    const/4 v0, 0x2

    .line 84
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 85
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .registers 8

    .line 90
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

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
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 180
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    .line 181
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 182
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    return-void
.end method
