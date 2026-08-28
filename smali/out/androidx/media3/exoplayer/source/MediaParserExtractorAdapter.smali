.class public final Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;
.super Ljava/lang/Object;
.source "MediaParserExtractorAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

.field private parserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->FACTORY:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 101
    new-instance v1, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 102
    invoke-static {v0, v1}, Landroid/media/MediaParser;->create(Landroid/media/MediaParser$OutputConsumer;[Ljava/lang/String;)Landroid/media/MediaParser;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    const/4 v1, 0x1

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "android.media.mediaparser.eagerlyExposeTrackType"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.inBandCryptoInfo"

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v2, "android.media.mediaparser.includeSupplementalData"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 106
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    goto :goto_36

    :cond_52
    const-string p2, "android.media.mediaparser.UNKNOWN"

    .line 109
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 110
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_61

    .line 111
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    :cond_61
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter$1;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .registers 3

    .line 55
    new-instance v0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    const-string v0, "android.media.mediaparser.Mp3Parser"

    .line 149
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 150
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->disableSeeking()V

    :cond_f
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 156
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/DataReader;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Landroidx/media3/extractor/ExtractorOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p8}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 125
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p2, p1, p6, p7}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setDataReader(Landroidx/media3/common/DataReader;J)V

    .line 126
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p1, p4, p5}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 127
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.mediaparser.UNKNOWN"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 130
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {p1, p2}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    .line 131
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 132
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    goto :goto_47

    .line 133
    :cond_32
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 135
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {p1}, Landroid/media/MediaParser;->getParserName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->parserName:Ljava/lang/String;

    .line 136
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public read(Landroidx/media3/extractor/PositionHolder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, v1}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->getAndResetSeekPosition()J

    move-result-wide v1

    iput-wide v1, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    if-nez v0, :cond_14

    const/4 p1, -0x1

    goto :goto_1f

    .line 172
    :cond_14
    iget-wide v0, p1, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public release()V
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->release()V

    return-void
.end method

.method public seek(JJ)V
    .registers 7

    .line 161
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setCurrentPosition(J)V

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    invoke-virtual {v0, p3, p4}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p3

    .line 163
    iget-object p4, p0, Landroidx/media3/exoplayer/source/MediaParserExtractorAdapter;->mediaParser:Landroid/media/MediaParser;

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaParser$SeekPoint;

    iget-wide v0, v0, Landroid/media/MediaParser$SeekPoint;->position:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1a

    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_1c

    :cond_1a
    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    :goto_1c
    check-cast p1, Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {p4, p1}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    return-void
.end method
