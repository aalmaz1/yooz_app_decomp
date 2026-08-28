.class public final Landroidx/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final id3Header:Landroidx/media3/common/util/ParsableByteArray;

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .registers 9

    .line 88
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_a

    return-void

    .line 92
    :cond_a
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 93
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_71

    rsub-int/lit8 v1, v1, 0xa

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 97
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 98
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 99
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 96
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_71

    .line 104
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 105
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 106
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    .line 107
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_57

    goto :goto_67

    .line 112
    :cond_57
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 113
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_71

    :cond_67
    :goto_67
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 108
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    return-void

    .line 117
    :cond_71
    :goto_71
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 119
    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 66
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 67
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 68
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 70
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    const-string v0, "application/id3"

    .line 71
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    .line 68
    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public packetFinished(Z)V
    .registers 10

    .line 124
    iget-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz p1, :cond_32

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz p1, :cond_32

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, p1, :cond_12

    goto :goto_32

    .line 129
    :cond_12
    iget-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    move p1, v0

    :goto_21
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 130
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 131
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_32
    :goto_32
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 80
    iput-boolean p3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 81
    iput-wide p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 82
    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    .line 83
    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method
