.class public final Landroidx/media3/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private hasCRC:Z

.field private final headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private final roleFlags:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    .line 93
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 95
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 96
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 97
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 99
    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 100
    iput p2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->roleFlags:I

    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 178
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 180
    iget p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private parseHeader()V
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 211
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    invoke-static {v0}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 212
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_2c

    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->channelCount:I

    if-ne v1, v3, :cond_2c

    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v3, v3, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 216
    :cond_2c
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 220
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 221
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->roleFlags:I

    .line 223
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    .line 225
    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 227
    :cond_5e
    iget v1, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    .line 230
    iget v0, v0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z
    .registers 7

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_31

    .line 193
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 194
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v3

    :cond_15
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_0

    .line 197
    :cond_18
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    .line 198
    :goto_21
    iput-boolean v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_2b

    if-ne v0, v4, :cond_0

    :cond_2b
    if-ne v0, v4, :cond_2e

    move v1, v3

    .line 200
    :cond_2e
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    return v3

    :cond_31
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .registers 13

    .line 126
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_a0

    .line 128
    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_78

    if-eq v0, v3, :cond_58

    if-eq v0, v1, :cond_17

    goto :goto_5

    .line 146
    :cond_17
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    iget v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 148
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 149
    iget v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v0, :cond_5

    .line 151
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v2

    :goto_3f
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 152
    iget-object v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 153
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 154
    iput v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 138
    :cond_58
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Landroidx/media3/extractor/ts/Ac4Reader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Reader;->parseHeader()V

    .line 140
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 141
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 142
    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 130
    :cond_78
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/Ac4Reader;->skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 132
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v2

    .line 133
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v2, :cond_97

    const/16 v2, 0x41

    goto :goto_99

    :cond_97
    const/16 v2, 0x40

    :goto_99
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 134
    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_5

    :cond_a0
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 114
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 115
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 121
    iput-wide p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    .line 106
    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 107
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 108
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 109
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
