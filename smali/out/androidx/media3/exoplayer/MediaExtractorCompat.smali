.class public final Landroidx/media3/exoplayer/MediaExtractorCompat;
.super Ljava/lang/Object;
.source "MediaExtractorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;,
        Landroidx/media3/exoplayer/MediaExtractorCompat$SeekMode;
    }
.end annotation


# static fields
.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaExtractorCompat"


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private currentDataSource:Landroidx/media3/datasource/DataSource;

.field private currentExtractor:Landroidx/media3/extractor/Extractor;

.field private currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private hasBeenPrepared:Z

.field private final noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private offsetInCurrentFile:J

.field private pendingSeek:Landroidx/media3/extractor/SeekPoint;

.field private final positionHolder:Landroidx/media3/extractor/PositionHolder;

.field private final sampleHolder:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:Landroidx/media3/extractor/SeekMap;

.field private final selectedTrackIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private upstreamFormatsCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 135
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;-><init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/datasource/DataSource$Factory;)V
    .registers 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    .line 146
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 147
    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    .line 148
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 p2, 0x1

    const/high16 v0, 0x10000

    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    .line 151
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    .line 152
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 153
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolder:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 154
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 155
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroid/util/SparseArray;
    .registers 1

    .line 85
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/MediaExtractorCompat;)Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p0
.end method

.method static synthetic access$302(Landroidx/media3/exoplayer/MediaExtractorCompat;Z)Z
    .registers 2

    .line 85
    iput-boolean p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/MediaExtractorCompat;)Landroidx/media3/exoplayer/upstream/Allocator;
    .registers 1

    .line 85
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/extractor/SeekMap;)Landroidx/media3/extractor/SeekMap;
    .registers 2

    .line 85
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaExtractorCompat;->onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/MediaExtractorCompat;)Ljava/util/ArrayDeque;
    .registers 1

    .line 85
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private advanceToSampleOrEndOfInput()Z
    .registers 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "trackIndicesPerSampleInQueuedOrder.peekFirst()"
        }
        result = true
    .end annotation

    const-string v0, "Treating exception as the end of input."

    const-string v1, "MediaExtractorCompat"

    const/4 v2, 0x0

    .line 483
    :try_start_5
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->maybeResolvePendingSeek()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_57

    move v3, v2

    .line 491
    :cond_9
    :goto_9
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_25

    .line 493
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    return v5

    .line 497
    :cond_21
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    goto :goto_9

    :cond_25
    if-nez v3, :cond_56

    .line 504
    :try_start_27
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    .line 505
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/Extractor;

    iget-object v6, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 506
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/ExtractorInput;

    iget-object v7, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {v4, v6, v7}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_41

    goto :goto_54

    :cond_41
    if-ne v4, v5, :cond_9

    .line 510
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v6, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4d} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_4d} :catch_4e

    goto :goto_9

    :catch_4e
    move-exception v3

    goto :goto_51

    :catch_50
    move-exception v3

    .line 513
    :goto_51
    invoke-static {v1, v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_54
    move v3, v5

    goto :goto_9

    :cond_56
    return v2

    :catch_57
    move-exception v3

    .line 485
    invoke-static {v1, v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private static buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;
    .registers 4

    .line 584
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 585
    invoke-virtual {v0, p0}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 586
    invoke-virtual {p0, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p0

    const/4 p1, 0x6

    .line 587
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p0

    .line 589
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$selectExtractor$0(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;
    .registers 1

    .line 463
    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private maybeResolvePendingSeek()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    if-nez v0, :cond_5

    return-void

    .line 571
    :cond_5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/SeekPoint;

    .line 572
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/Extractor;

    iget-wide v2, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v4, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    .line 573
    iget-wide v0, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method

.method private onSampleQueueFormatInitialized(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;Landroidx/media3/common/Format;)V
    .registers 8

    .line 547
    iget v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    .line 548
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setMainTrackIndex(I)V

    .line 549
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_34

    .line 558
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->setCompatibilityTrackIndex(I)V

    .line 559
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    new-instance v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-direct {v2, p1, v1, p2, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;Z)V
    .registers 10

    .line 405
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    .line 406
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    .line 407
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p2, :cond_22

    move p2, v2

    goto :goto_23

    :cond_22
    move p2, v3

    :goto_23
    const/4 v4, 0x1

    or-int/2addr p2, v4

    .line 410
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 411
    invoke-virtual {v1, v5, p1, p2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v5

    const/4 v6, -0x5

    if-ne v5, v6, :cond_34

    .line 414
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 415
    invoke-virtual {v1, v5, p1, p2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v5

    .line 418
    :cond_34
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    const/4 p1, -0x4

    if-ne v5, p1, :cond_3d

    return-void

    .line 422
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array p2, v2, [Ljava/lang/Object;

    .line 428
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    aput-object v0, p2, v4

    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    aput-object v1, p2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    aput-object v1, p2, v0

    const-string v0, "Sample read result: %s\nTrack sample: %s\nTrackIndicesPerSampleInQueuedOrder: %s\nTracks added: %s\n"

    .line 423
    invoke-static {v0, p2}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/datasource/DataSource;

    .line 534
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 535
    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 536
    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    add-long/2addr v3, p1

    .line 538
    invoke-static {v0, v3, v4}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object v0

    .line 537
    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_28

    add-long/2addr v0, p1

    :cond_28
    move-wide v5, v0

    .line 542
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v1, v0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    return-object v0
.end method

.method private selectExtractor(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/Extractor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    move-result-object v0

    .line 442
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 444
    :try_start_c
    invoke-interface {v3, p1}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v4
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_10} :catch_1b
    .catchall {:try_start_c .. :try_end_10} :catchall_16

    if-eqz v4, :cond_1b

    .line 452
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_22

    :catchall_16
    move-exception v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 453
    throw v0

    .line 452
    :catch_1b
    :cond_1b
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_25

    return-object v3

    .line 456
    :cond_25
    new-instance p1, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "None of the available extractors ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    .line 458
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    .line 461
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v3, Landroidx/media3/exoplayer/MediaExtractorCompat$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/exoplayer/MediaExtractorCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 460
    invoke-static {v0, v3}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    .line 459
    invoke-virtual {v2, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 465
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/DataSource;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 466
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p1
.end method

.method private skipOneSample()V
    .registers 3

    .line 524
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 525
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    .line 526
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->isCompatibilityTrack:Z

    if-nez v1, :cond_1b

    .line 528
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->discardFrontSample()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public advance()Z
    .registers 2

    .line 321
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 325
    :cond_8
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->skipOneSample()V

    .line 326
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    return v0
.end method

.method public getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;
    .registers 2

    .line 392
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method public getSampleFlags()I
    .registers 3

    .line 380
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 383
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;Z)V

    .line 385
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    or-int/2addr v0, v1

    .line 386
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getSampleTime()J
    .registers 3

    .line 371
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 374
    :cond_9
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;Z)V

    .line 375
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    return-wide v0
.end method

.method public getSampleTrackIndex()I
    .registers 2

    .line 360
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 363
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTrackCount()I
    .registers 2

    .line 235
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .registers 4

    .line 240
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->createDownstreamMediaFormat(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .registers 5

    .line 341
    invoke-direct {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->advanceToSampleOrEndOfInput()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, -0x1

    return p1

    .line 345
    :cond_8
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolder:Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object p1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 348
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolder:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->peekNextSelectedTrackSample(Landroidx/media3/decoder/DecoderInputBuffer;Z)V

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 350
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 351
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleHolder:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    iput-object v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x0

    .line 219
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 220
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_17
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 223
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 224
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    .line 225
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    .line 227
    :cond_26
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 228
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 230
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    return-void
.end method

.method public seekTo(JI)V
    .registers 9

    .line 271
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v0, :cond_5

    return-void

    .line 276
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    instance-of v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-eqz v2, :cond_37

    .line 279
    check-cast v0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracks:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    .line 282
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->getIdOfBackingTrack()I

    move-result v2

    .line 281
    invoke-virtual {v0, p1, p2, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    goto :goto_3d

    .line 284
    :cond_37
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    :goto_3d
    if-eqz p3, :cond_6a

    if-eq p3, v1, :cond_67

    const/4 v1, 0x2

    if-ne p3, v1, :cond_61

    .line 290
    iget-object p3, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, p3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-object p3, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, p3, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gez p1, :cond_5e

    .line 291
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    goto :goto_6c

    .line 292
    :cond_5e
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    goto :goto_6c

    .line 302
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 295
    :cond_67
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    goto :goto_6c

    .line 298
    :cond_6a
    iget-object p1, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    .line 304
    :goto_6c
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->trackIndicesPerSampleInQueuedOrder:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clear()V

    const/4 p2, 0x0

    .line 305
    :goto_72
    iget-object p3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_88

    .line 306
    iget-object p3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {p3}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->reset()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_72

    .line 308
    :cond_88
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->pendingSeek:Landroidx/media3/extractor/SeekPoint;

    return-void
.end method

.method public selectTrack(I)V
    .registers 3

    .line 253
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 172
    iput-boolean v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->hasBeenPrepared:Z

    .line 173
    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->offsetInCurrentFile:J

    .line 174
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat;->buildDataSpec(Landroid/net/Uri;J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    .line 176
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 177
    invoke-interface {p2, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6

    .line 178
    new-instance p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentDataSource:Landroidx/media3/datasource/DataSource;

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 180
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectExtractor(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/Extractor;

    move-result-object p2

    .line 181
    new-instance p3, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Landroidx/media3/exoplayer/MediaExtractorCompat$ExtractorOutputImpl;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V

    invoke-interface {p2, p3}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    move p3, v1

    :goto_33
    if-eqz p3, :cond_79

    const/4 p3, -0x1

    .line 188
    :try_start_36
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    invoke-interface {p2, p1, v2}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v0

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    move v2, p3

    .line 194
    :goto_41
    iget-boolean v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->tracksEnded:Z

    if-eqz v3, :cond_56

    iget v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->upstreamFormatsCount:I

    iget-object v4, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v3, v4, :cond_56

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v3, :cond_54

    goto :goto_56

    :cond_54
    const/4 v3, 0x0

    goto :goto_57

    :cond_56
    :goto_56
    move v3, v1

    :goto_57
    if-nez v0, :cond_6a

    if-eqz v3, :cond_5e

    if-ne v2, p3, :cond_5e

    goto :goto_6a

    :cond_5e
    if-ne v2, v1, :cond_68

    .line 204
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v4, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/MediaExtractorCompat;->reopenCurrentDataSource(J)Landroidx/media3/extractor/ExtractorInput;

    move-result-object p1

    :cond_68
    move p3, v3

    goto :goto_33

    .line 197
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaExtractorCompat;->release()V

    if-eqz v0, :cond_72

    const-string p1, "Exception encountered while parsing input media."

    goto :goto_74

    :cond_72
    const-string p1, "Reached end of input before preparation completed."

    .line 202
    :goto_74
    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 207
    :cond_79
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 208
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->currentExtractor:Landroidx/media3/extractor/Extractor;

    return-void
.end method

.method public unselectTrack(I)V
    .registers 3

    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat;->selectedTrackIndices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
