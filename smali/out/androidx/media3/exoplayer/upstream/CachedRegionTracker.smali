.class public final Landroidx/media3/exoplayer/upstream/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Landroidx/media3/datasource/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Landroidx/media3/extractor/ChunkIndex;

.field private final lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroidx/media3/extractor/ChunkIndex;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 51
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    .line 53
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 54
    new-instance p3, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object p3, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1a
    invoke-interface {p1, p2, p0}, Landroidx/media3/datasource/cache/Cache;->addListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 61
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/datasource/cache/CacheSpan;

    .line 63
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    goto :goto_22

    .line 65
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw p1
.end method

.method private mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
    .registers 9

    .line 142
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v3, p1, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v5, p1, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 143
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 144
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    .line 145
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z

    move-result v2

    .line 146
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v2, :cond_31

    .line 151
    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 152
    iget v0, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_3e

    .line 155
    :cond_31
    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 156
    iget p1, v1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 157
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_3e
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_44
    if-eqz v2, :cond_67

    .line 162
    iget-wide v0, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 163
    iget v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 164
    :goto_4c
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget v1, v1, Landroidx/media3/extractor/ChunkIndex;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_64

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v1, v1, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v1, v2

    iget-wide v5, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_64

    move v0, v2

    goto :goto_4c

    .line 168
    :cond_64
    iput v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_7d

    .line 171
    :cond_67
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p1, p1, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iget-wide v1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_76

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 172
    :cond_76
    iput p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 173
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_7d
    return-void
.end method

.method private regionsConnect(Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;)Z
    .registers 5

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 178
    iget-wide v0, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide p1, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .registers 10

    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iput-wide p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 84
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->lookupRegion:Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    const/4 v1, -0x1

    if-eqz v0, :cond_63

    .line 85
    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_63

    iget p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne p1, v1, :cond_1d

    goto :goto_63

    .line 90
    :cond_1d
    iget p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 91
    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget p2, p2, Landroidx/media3/extractor/ChunkIndex;->length:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3e

    iget-wide v1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v3, p2, p1

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_65

    int-to-long v5, p2

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-nez p2, :cond_3e

    .line 93
    monitor-exit p0

    const/4 p1, -0x2

    return p1

    .line 95
    :cond_3e
    :try_start_3e
    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v1, p2, p1

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v5, p2, p1

    sub-long/2addr v3, v5

    mul-long/2addr v1, v3

    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1

    int-to-long v3, p2

    div-long/2addr v1, v3

    .line 98
    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object p2, p2, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    aget-wide p1, p2, p1

    add-long/2addr p1, v1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_65

    long-to-int p1, p1

    monitor-exit p0

    return p1

    .line 88
    :cond_63
    :goto_63
    monitor-exit p0

    return v1

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .registers 3

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->mergeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 104
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .registers 9

    monitor-enter p0

    .line 108
    :try_start_1
    new-instance p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v0, p2, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v2, p2, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    iget-wide v4, p2, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 111
    iget-object p2, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    if-nez p2, :cond_20

    const-string p1, "CachedRegionTracker"

    const-string p2, "Removed a span we were not aware of"

    .line 113
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_6b

    .line 114
    monitor-exit p0

    return-void

    .line 118
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-wide v0, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4c

    .line 122
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v1, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 124
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->chunkIndex:Landroidx/media3/extractor/ChunkIndex;

    iget-object v1, v1, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_45

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 125
    :cond_45
    iput v1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 126
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_4c
    iget-wide v0, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_69

    .line 130
    new-instance v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 131
    iget p1, p2, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 132
    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_20 .. :try_end_69} :catchall_6b

    .line 134
    :cond_69
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSpanTouched(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .registers 4

    return-void
.end method

.method public release()V
    .registers 3

    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroidx/media3/datasource/cache/Cache;->removeListener(Ljava/lang/String;Landroidx/media3/datasource/cache/Cache$Listener;)V

    return-void
.end method
