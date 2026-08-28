.class public final Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "BundledExtractorsAdapter.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field private extractor:Landroidx/media3/extractor/Extractor;

.field private extractorInput:Landroidx/media3/extractor/ExtractorInput;

.field private final extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorsFactory;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method static synthetic lambda$init$0(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;
    .registers 1

    .line 105
    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disableSeekingOnMp3Streams()V
    .registers 3

    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v0, :cond_5

    return-void

    .line 128
    :cond_5
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v0

    .line 129
    instance-of v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v1, :cond_12

    .line 130
    check-cast v0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking()V

    :cond_12
    return-void
.end method

.method public getCurrentInputPosition()J
    .registers 3

    .line 136
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method

.method public init(Landroidx/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .registers 16
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

    .line 70
    new-instance v6, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 71
    iput-object v6, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 72
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz p1, :cond_10

    return-void

    .line 75
    :cond_10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorsFactory:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {p1, p2, p3}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object p1

    .line 76
    array-length p3, p1

    .line 77
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p3

    .line 78
    array-length p6, p1

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-ne p6, v0, :cond_26

    .line 79
    aget-object p1, p1, p7

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    goto/16 :goto_8c

    .line 81
    :cond_26
    array-length p6, p1

    move v1, p7

    :goto_28
    if-ge v1, p6, :cond_88

    aget-object v2, p1, v1

    .line 83
    :try_start_2c
    invoke-interface {v2, v6}, Landroidx/media3/extractor/Extractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 84
    iput-object v2, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_34} :catch_6f
    .catchall {:try_start_2c .. :try_end_34} :catchall_5a

    if-nez v2, :cond_3e

    .line 93
    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    cmp-long p4, v1, p4

    if-nez p4, :cond_3f

    :cond_3e
    move p7, v0

    :cond_3f
    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_88

    .line 87
    :cond_46
    :try_start_46
    invoke-interface {v2}, Landroidx/media3/extractor/Extractor;->getSniffFailureDetails()Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-virtual {p3, v2}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;
    :try_end_4d
    .catch Ljava/io/EOFException; {:try_start_46 .. :try_end_4d} :catch_6f
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5a

    .line 93
    iget-object v2, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v2, :cond_7e

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_7c

    goto :goto_7e

    :catchall_5a
    move-exception p1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez p2, :cond_67

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_68

    :cond_67
    move p7, v0

    :cond_68
    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 95
    throw p1

    .line 93
    :catch_6f
    iget-object v2, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-nez v2, :cond_7e

    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_7c

    goto :goto_7e

    :cond_7c
    move v2, p7

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v2, v0

    :goto_7f
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 94
    invoke-interface {v6}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 97
    :cond_88
    :goto_88
    iget-object p4, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    if-eqz p4, :cond_92

    .line 111
    :goto_8c
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-interface {p1, p8}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    .line 98
    :cond_92
    new-instance p4, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "None of the available extractors ("

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p6, ", "

    .line 100
    invoke-static {p6}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p6

    .line 103
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    new-instance p7, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p7}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 102
    invoke-static {p1, p7}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-virtual {p6, p1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, ") could read the stream."

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 108
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p4
.end method

.method public read(Landroidx/media3/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    .line 147
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ExtractorInput;

    invoke-interface {v0, v1, p1}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 3

    .line 116
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 117
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->release()V

    .line 118
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    .line 120
    :cond_a
    iput-object v1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractorInput:Landroidx/media3/extractor/ExtractorInput;

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 141
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->extractor:Landroidx/media3/extractor/Extractor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method
