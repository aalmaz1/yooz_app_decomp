.class final Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;
.super Ljava/lang/Object;
.source "RtpAmrReader.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

.field private static final AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

.field private static final TAG:Ljava/lang/String; = "RtpAmrReader"


# instance fields
.field private firstReceivedTimestamp:J

.field private final isWideBand:Z

.field private final payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private final sampleRate:I

.field private startTimeOffsetUs:J

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 47
    fill-array-data v1, :array_12

    sput-object v1, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

    new-array v0, v0, [I

    .line 72
    fill-array-data v0, :array_36

    sput-object v0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

    return-void

    nop

    :array_12
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 102
    iget-object v0, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 103
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "audio/amr-wb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->isWideBand:Z

    .line 104
    iget p1, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->sampleRate:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 105
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->previousSequenceNumber:I

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->startTimeOffsetUs:J

    return-void
.end method

.method public static getFrameSize(IZ)I
    .registers 5

    if-ltz p0, :cond_6

    const/16 v0, 0x8

    if-le p0, v0, :cond_a

    :cond_6
    const/16 v0, 0xf

    if-ne p0, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 179
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal AMR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    const-string v2, "WB"

    goto :goto_1b

    :cond_19
    const-string v2, "NB"

    .line 182
    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_37

    .line 185
    sget-object p1, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

    aget p0, p1, p0

    goto :goto_3b

    .line 186
    :cond_37
    sget-object p1, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE:[I

    aget p0, p1, p0

    :goto_3b
    return p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;JIZ)V
    .registers 16

    .line 127
    iget-object p5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget p5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->previousSequenceNumber:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p5, v0, :cond_2c

    .line 130
    invoke-static {p5}, Landroidx/media3/exoplayer/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result p5

    if-eq p4, p5, :cond_2c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v0, v2

    const-string p5, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 134
    invoke-static {p5, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "RtpAmrReader"

    .line 132
    invoke-static {v0, p5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2c
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 157
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->peekUnsignedByte()I

    move-result p5

    shr-int/lit8 p5, p5, 0x3

    and-int/lit8 p5, p5, 0xf

    .line 158
    iget-boolean v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->isWideBand:Z

    invoke-static {p5, v0}, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->getFrameSize(IZ)I

    move-result p5

    .line 159
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    if-ne v7, p5, :cond_44

    move v1, v2

    :cond_44
    const-string p5, "compound payload not supported currently"

    .line 160
    invoke-static {v1, p5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 161
    iget-object p5, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p5, p1, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 162
    iget-wide v0, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->startTimeOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->firstReceivedTimestamp:J

    iget v6, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->sampleRate:I

    move-wide v2, p2

    .line 163
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/rtsp/reader/RtpReaderUtils;->toSampleTimeUs(JJJI)J

    move-result-wide v4

    .line 164
    iget-object v3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 167
    iput p4, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->previousSequenceNumber:I

    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;I)V
    .registers 4

    const/4 v0, 0x1

    .line 115
    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 116
    iget-object p2, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->payloadFormat:Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .registers 4

    .line 121
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 172
    iput-wide p1, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->firstReceivedTimestamp:J

    .line 173
    iput-wide p3, p0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;->startTimeOffsetUs:J

    return-void
.end method
