.class public final Landroidx/media3/datasource/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheDataSource$EventListener;,
        Landroidx/media3/datasource/cache/CacheDataSource$CacheIgnoredReason;,
        Landroidx/media3/datasource/cache/CacheDataSource$Flags;,
        Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    }
.end annotation


# static fields
.field public static final CACHE_IGNORED_REASON_ERROR:I = 0x0

.field public static final CACHE_IGNORED_REASON_UNSET_LENGTH:I = 0x1

.field private static final CACHE_NOT_IGNORED:I = -0x1

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private actualUri:Landroid/net/Uri;

.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field private final cacheReadDataSource:Landroidx/media3/datasource/DataSource;

.field private final cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Landroidx/media3/datasource/DataSource;

.field private currentDataSourceBytesRead:J

.field private currentDataSpec:Landroidx/media3/datasource/DataSpec;

.field private currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private readPosition:J

.field private requestDataSpec:Landroidx/media3/datasource/DataSpec;

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;)V
    .registers 4

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V
    .registers 11

    .line 452
    new-instance v3, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v3}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    new-instance v4, Landroidx/media3/datasource/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Landroidx/media3/datasource/cache/CacheDataSink;-><init>(Landroidx/media3/datasource/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 483
    invoke-direct/range {v0 .. v7}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V
    .registers 18

    const/4 v7, 0x0

    const/16 v8, -0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v9, p6

    .line 517
    invoke-direct/range {v0 .. v9}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .registers 10

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 540
    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz p5, :cond_a

    goto :goto_c

    .line 541
    :cond_a
    sget-object p5, Landroidx/media3/datasource/cache/CacheKeyFactory;->DEFAULT:Landroidx/media3/datasource/cache/CacheKeyFactory;

    :goto_c
    iput-object p5, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_16

    move p1, p5

    goto :goto_17

    :cond_16
    move p1, p3

    .line 542
    :goto_17
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1f

    move p1, p5

    goto :goto_20

    :cond_1f
    move p1, p3

    .line 543
    :goto_20
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_27

    move p3, p5

    .line 544
    :cond_27
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_40

    if-eqz p7, :cond_34

    .line 548
    new-instance p3, Landroidx/media3/datasource/PriorityDataSource;

    invoke-direct {p3, p2, p7, p8}, Landroidx/media3/datasource/PriorityDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/common/PriorityTaskManager;I)V

    move-object p2, p3

    .line 552
    :cond_34
    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz p4, :cond_3d

    .line 555
    new-instance p1, Landroidx/media3/datasource/TeeDataSource;

    invoke-direct {p1, p2, p4}, Landroidx/media3/datasource/TeeDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V

    .line 556
    :cond_3d
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_46

    .line 558
    :cond_40
    sget-object p2, Landroidx/media3/datasource/PlaceholderDataSource;->INSTANCE:Landroidx/media3/datasource/PlaceholderDataSource;

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 559
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    .line 561
    :goto_46
    iput-object p9, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheDataSource$1;)V
    .registers 11

    .line 63
    invoke-direct/range {p0 .. p9}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;ILandroidx/media3/common/PriorityTaskManager;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private closeCurrentSource()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 855
    :try_start_6
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    .line 857
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 858
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 859
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v0, :cond_18

    .line 860
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 861
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    .line 857
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 858
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 859
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v2, :cond_29

    .line 860
    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v3, v2}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 861
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    .line 863
    :cond_29
    throw v0
.end method

.method private static getRedirectedUriOrDefault(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 830
    invoke-interface {p0, p1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/datasource/cache/ContentMetadata;->getRedirectedUri(Landroidx/media3/datasource/cache/ContentMetadata;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    move-object p2, p0

    :cond_b
    return-object p2
.end method

.method private handleBeforeThrow(Ljava/lang/Throwable;)V
    .registers 3

    .line 867
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-nez v0, :cond_a

    instance-of p1, p1, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz p1, :cond_d

    :cond_a
    const/4 p1, 0x1

    .line 868
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->seenCacheError:Z

    :cond_d
    return-void
.end method

.method private isBypassingCache()Z
    .registers 3

    .line 839
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromCache()Z
    .registers 3

    .line 843
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromUpstream()Z
    .registers 2

    .line 835
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isWritingToCache()Z
    .registers 3

    .line 847
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private notifyBytesRead()V
    .registers 8

    .line 889
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_19

    iget-wide v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 890
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v1}, Landroidx/media3/datasource/cache/Cache;->getCacheSpace()J

    move-result-wide v1

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v1, v2, v5, v6}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 891
    iput-wide v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_19
    return-void
.end method

.method private notifyCacheIgnored(I)V
    .registers 3

    .line 883
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_7

    .line 884
    invoke-interface {v0, p1}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->onCacheIgnored(I)V

    :cond_7
    return-void
.end method

.method private openNextSource(Landroidx/media3/datasource/DataSpec;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 712
    iget-object v2, v0, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 713
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_13

    move-object v3, v9

    goto :goto_3b

    .line 715
    :cond_13
    iget-boolean v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v3, :cond_30

    .line 717
    :try_start_17
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->startReadWrite(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_3b

    .line 719
    :catch_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 720
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 723
    :cond_30
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-wide v5, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroidx/media3/datasource/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3

    :goto_3b
    const-wide/16 v4, -0x1

    if-nez v3, :cond_57

    .line 731
    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v7, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    invoke-virtual {v7, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    goto/16 :goto_c8

    .line 734
    :cond_57
    iget-boolean v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->isCached:Z

    if-eqz v6, :cond_94

    .line 736
    iget-object v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v6}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 737
    iget-wide v7, v3, Landroidx/media3/datasource/cache/CacheSpan;->position:J

    .line 738
    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    sub-long/2addr v10, v7

    .line 739
    iget-wide v12, v3, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    sub-long/2addr v12, v10

    .line 740
    iget-wide v14, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_79

    .line 741
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 745
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v14

    .line 746
    invoke-virtual {v14, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 747
    invoke-virtual {v6, v7, v8}, Landroidx/media3/datasource/DataSpec$Builder;->setUriPositionOffset(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 748
    invoke-virtual {v6, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 749
    invoke-virtual {v6, v12, v13}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    .line 750
    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    .line 751
    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_c8

    .line 755
    :cond_94
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/CacheSpan;->isOpenEnded()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 756
    iget-wide v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_a9

    .line 758
    :cond_9d
    iget-wide v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    .line 759
    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_a9

    .line 760
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 764
    :cond_a9
    :goto_a9
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v8, v10, v11}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    .line 765
    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cacheWriteDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz v6, :cond_c0

    goto :goto_c8

    .line 768
    :cond_c0
    iget-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    .line 769
    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v8, v3}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    move-object v3, v9

    .line 775
    :goto_c8
    iget-boolean v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v8, :cond_d7

    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v6, v8, :cond_d7

    .line 776
    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_dc

    :cond_d7
    const-wide v10, 0x7fffffffffffffffL

    .line 777
    :goto_dc
    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->checkCachePosition:J

    if-eqz p2, :cond_104

    .line 779
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isBypassingCache()Z

    move-result v8

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 780
    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    if-ne v6, v8, :cond_ec

    return-void

    .line 786
    :cond_ec
    :try_start_ec
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_104

    :catchall_f0
    move-exception v0

    move-object v2, v0

    .line 788
    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheSpan;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheSpan;->isHoleSpan()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 790
    iget-object v0, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v0, v3}, Landroidx/media3/datasource/cache/Cache;->releaseHoleSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 792
    :cond_103
    throw v2

    :cond_104
    :goto_104
    if-eqz v3, :cond_10e

    .line 796
    invoke-virtual {v3}, Landroidx/media3/datasource/cache/CacheSpan;->isHoleSpan()Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 797
    iput-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentHoleSpan:Landroidx/media3/datasource/cache/CacheSpan;

    .line 799
    :cond_10e
    iput-object v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    .line 800
    iput-object v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v10, 0x0

    .line 801
    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 802
    invoke-interface {v6, v7}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v10

    .line 805
    new-instance v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    .line 806
    iget-wide v7, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_131

    cmp-long v4, v10, v4

    if-eqz v4, :cond_131

    .line 807
    iput-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    .line 808
    iget-wide v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    add-long/2addr v4, v10

    invoke-static {v3, v4, v5}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setContentLength(Landroidx/media3/datasource/cache/ContentMetadataMutations;J)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 810
    :cond_131
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v4

    if-eqz v4, :cond_14e

    .line 811
    invoke-interface {v6}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 812
    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14b

    .line 813
    iget-object v9, v1, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    :cond_14b
    invoke-static {v3, v9}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setRedirectedUri(Landroidx/media3/datasource/cache/ContentMetadataMutations;Landroid/net/Uri;)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 815
    :cond_14e
    invoke-direct/range {p0 .. p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 816
    iget-object v0, v1, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v0, v2, v3}, Landroidx/media3/datasource/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    :cond_159
    return-void
.end method

.method private setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 821
    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    .line 822
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 823
    new-instance v0, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v0}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    .line 824
    iget-wide v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    invoke-static {v0, v1, v2}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->setContentLength(Landroidx/media3/datasource/cache/ContentMetadataMutations;J)Landroidx/media3/datasource/cache/ContentMetadataMutations;

    .line 825
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v1, p1, v0}, Landroidx/media3/datasource/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    :cond_19
    return-void
.end method

.method private shouldIgnoreCacheForRequest(Landroidx/media3/datasource/DataSpec;)I
    .registers 6

    .line 873
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->seenCacheError:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 875
    :cond_a
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v0, :cond_18

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .registers 3

    .line 576
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheReadDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 578
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 684
    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 685
    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 686
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->notifyBytesRead()V

    .line 688
    :try_start_c
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    .line 690
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 691
    throw v0
.end method

.method public getCache()Landroidx/media3/datasource/cache/Cache;
    .registers 2

    .line 566
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;
    .registers 2

    .line 571
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 677
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->upstreamDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_11

    .line 678
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 670
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    :try_start_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    .line 586
    iput-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    .line 587
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, v1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Landroidx/media3/datasource/cache/CacheDataSource;->getRedirectedUriOrDefault(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 588
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 590
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/CacheDataSource;->shouldIgnoreCacheForRequest(Landroidx/media3/datasource/DataSpec;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    move v3, v4

    .line 591
    :goto_2d
    iput-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v3, :cond_34

    .line 593
    invoke-direct {p0, v2}, Landroidx/media3/datasource/cache/CacheDataSource;->notifyCacheIgnored(I)V

    .line 596
    :cond_34
    iget-boolean v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_3f

    .line 597
    iput-wide v7, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_61

    .line 599
    :cond_3f
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->cache:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_61

    .line 601
    iget-wide v9, p1, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_59

    goto :goto_61

    .line 603
    :cond_59
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    .line 608
    :cond_61
    :goto_61
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_78

    .line 610
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v7

    if-nez v0, :cond_70

    .line 611
    iget-wide v2, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_76

    .line 612
    :cond_70
    iget-wide v9, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_76
    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    .line 614
    :cond_78
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-gtz v0, :cond_82

    cmp-long v0, v2, v7

    if-nez v0, :cond_85

    .line 615
    :cond_82
    invoke-direct {p0, v1, v4}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    .line 617
    :cond_85
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v7

    if-eqz v0, :cond_8e

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_90

    :cond_8e
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J
    :try_end_90
    .catchall {:try_start_0 .. :try_end_90} :catchall_91

    :goto_90
    return-wide v0

    :catchall_91
    move-exception p1

    .line 619
    invoke-direct {p0, p1}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 620
    throw p1
.end method

.method public read([BII)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_7

    return v2

    .line 629
    :cond_7
    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, -0x1

    if-nez v3, :cond_11

    return v4

    .line 632
    :cond_11
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->requestDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/DataSpec;

    .line 633
    iget-object v7, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/datasource/DataSpec;

    .line 635
    :try_start_21
    iget-wide v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2d

    const/4 v8, 0x1

    .line 636
    invoke-direct {p0, v3, v8}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    .line 638
    :cond_2d
    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v8}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/datasource/DataSource;

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-interface {v8, v9, v10, v0}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v8

    const-wide/16 v11, -0x1

    if-eq v8, v4, :cond_62

    .line 640
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 641
    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 643
    :cond_4d
    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->readPosition:J

    .line 644
    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 645
    iget-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_8f

    sub-long/2addr v2, v4

    .line 646
    iput-wide v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_8f

    .line 648
    :cond_62
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v4

    if-eqz v4, :cond_82

    iget-wide v13, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v13, v11

    if-eqz v4, :cond_76

    iget-wide v13, v1, Landroidx/media3/datasource/cache/CacheDataSource;->currentDataSourceBytesRead:J

    iget-wide v11, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v13, v11

    if-gez v4, :cond_82

    .line 654
    :cond_76
    iget-object v0, v3, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V

    goto :goto_8f

    .line 655
    :cond_82
    iget-wide v11, v1, Landroidx/media3/datasource/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v4, v11, v5

    if-gtz v4, :cond_90

    const-wide/16 v4, -0x1

    cmp-long v4, v11, v4

    if-nez v4, :cond_8f

    goto :goto_90

    :cond_8f
    :goto_8f
    return v8

    .line 656
    :cond_90
    :goto_90
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->closeCurrentSource()V

    .line 657
    invoke-direct {p0, v3, v2}, Landroidx/media3/datasource/cache/CacheDataSource;->openNextSource(Landroidx/media3/datasource/DataSpec;Z)V

    .line 658
    invoke-virtual/range {p0 .. p3}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result v0
    :try_end_9a
    .catchall {:try_start_21 .. :try_end_9a} :catchall_9b

    return v0

    :catchall_9b
    move-exception v0

    .line 662
    invoke-direct {p0, v0}, Landroidx/media3/datasource/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 663
    throw v0
.end method
