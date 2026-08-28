.class public final Landroidx/media3/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    iput-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method

.method private checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .registers 5

    .line 122
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 125
    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 126
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 128
    :cond_10
    iget p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 129
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p1
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .registers 8

    .line 102
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3c

    .line 103
    iget v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 107
    :cond_12
    iget v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-direct {p0, p1, v1}, Landroidx/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 111
    :cond_1f
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 113
    iget-object v3, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v4, v3

    :goto_2a
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    .line 114
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 115
    invoke-interface {v5, p1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 117
    :cond_37
    iget p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3c
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 8

    const/4 v0, 0x0

    .line 62
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 63
    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 64
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 65
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    .line 66
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 68
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    .line 69
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 70
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v1, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 66
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 73
    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4b
    return-void
.end method

.method public packetFinished(Z)V
    .registers 12

    .line 90
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz p1, :cond_2d

    .line 92
    iget-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 93
    iget-object p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    array-length v1, p1

    move v2, v0

    :goto_1a
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    .line 94
    iget-wide v4, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v6, 0x1

    iget v7, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 96
    :cond_2b
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_2d
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 83
    iput-wide p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    .line 85
    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method
