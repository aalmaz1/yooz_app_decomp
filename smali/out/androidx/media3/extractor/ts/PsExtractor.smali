.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroidx/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ts/PsExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 79
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 84
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 85
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 86
    new-instance p1, Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 43
    new-instance v1, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 296
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 298
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    .line 299
    new-instance v0, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 301
    invoke-virtual {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;

    move-result-object v2

    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 302
    invoke-virtual {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v3

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 304
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_45

    .line 306
    :cond_35
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance p2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :cond_45
    :goto_45
    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .registers 2

    .line 135
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_13

    move v7, v5

    goto :goto_14

    :cond_13
    move v7, v6

    :goto_14
    if-eqz v7, :cond_25

    .line 179
    iget-object v7, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v7}, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v7

    if-nez v7, :cond_25

    .line 180
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/PsDurationReader;->readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 182
    :cond_25
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 183
    iget-object v7, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 184
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 187
    :cond_39
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v4, :cond_44

    .line 189
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v7

    sub-long/2addr v0, v7

    goto :goto_45

    :cond_44
    move-wide v0, v2

    :goto_45
    cmp-long p2, v0, v2

    const/4 v2, -0x1

    if-eqz p2, :cond_51

    const-wide/16 v3, 0x4

    cmp-long p2, v0, v3

    if-gez p2, :cond_51

    return v2

    .line 194
    :cond_51
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p1, p2, v6, v0, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_5f

    return v2

    .line 198
    :cond_5f
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 199
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    const/16 v0, 0x1b9

    if-ne p2, v0, :cond_6f

    return v2

    :cond_6f
    const/16 v0, 0x1ba

    if-ne p2, v0, :cond_93

    .line 204
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v6, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 207
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 210
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 213
    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_93
    const/16 v0, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne p2, v0, :cond_b2

    .line 217
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v6, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 220
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 221
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    .line 222
    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_b2
    and-int/lit16 v0, p2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v5, :cond_bc

    .line 225
    invoke-interface {p1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_bc
    and-int/lit16 p2, p2, 0xff

    .line 234
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 235
    iget-boolean v3, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v3, :cond_141

    if-nez v0, :cond_121

    const/16 v3, 0xbd

    if-ne p2, v3, :cond_de

    .line 242
    new-instance v3, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v3}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>()V

    .line 243
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 244
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_107

    :cond_de
    and-int/lit16 v3, p2, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_f2

    .line 246
    new-instance v3, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v3}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>()V

    .line 247
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 248
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_107

    :cond_f2
    and-int/lit16 v3, p2, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_106

    .line 250
    new-instance v3, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {v3}, Landroidx/media3/extractor/ts/H262Reader;-><init>()V

    .line 251
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 252
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_107

    :cond_106
    const/4 v3, 0x0

    :goto_107
    if-eqz v3, :cond_121

    .line 255
    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v4, 0x100

    invoke-direct {v0, p2, v4}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 256
    iget-object v4, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v4, v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 257
    new-instance v0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v4, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v0, v3, v4}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 258
    iget-object v3, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    :cond_121
    iget-boolean p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_12f

    iget-boolean p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_12f

    .line 263
    iget-wide v3, p0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v7, 0x2000

    add-long/2addr v3, v7

    goto :goto_132

    :cond_12f
    const-wide/32 v3, 0x100000

    .line 265
    :goto_132
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    cmp-long p2, v7, v3

    if-lez p2, :cond_141

    .line 266
    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 267
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p2}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 272
    :cond_141
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v6, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 273
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 274
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_15c

    .line 279
    invoke-interface {p1, p2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_17d

    .line 281
    :cond_15c
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 283
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v6, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 284
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 285
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 286
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :goto_17d
    return v6
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seek(JJ)V
    .registers 10

    .line 145
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move p1, p2

    goto :goto_14

    :cond_13
    move p1, v2

    :goto_14
    if-nez p1, :cond_2d

    .line 147
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    cmp-long p1, v3, p3

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move p2, v2

    :goto_2c
    move p1, p2

    :cond_2d
    if-eqz p1, :cond_34

    .line 157
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 160
    :cond_34
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_3b

    .line 161
    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 163
    :cond_3b
    :goto_3b
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_51

    .line 164
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_51
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 94
    invoke-interface {p1, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    return v2

    :cond_34
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    return v2

    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    return v2

    :cond_51
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 126
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 128
    invoke-interface {p1, v1, v2, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_71

    move v2, v3

    :cond_71
    return v2
.end method
