.class public final Landroidx/media3/datasource/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

.field private final dataSpec:Landroidx/media3/datasource/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V
    .registers 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 77
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCache()Landroidx/media3/datasource/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 78
    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-nez p3, :cond_13

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    .line 80
    :cond_13
    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    .line 81
    iput-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    .line 82
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 83
    iget-wide p1, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    return-void
.end method

.method private getLength()J
    .registers 6

    .line 228
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_f

    :cond_9
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_f
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .registers 12

    .line 221
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    .line 222
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_13

    .line 223
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_13
    return-void
.end method

.method private onRequestEndPosition(J)V
    .registers 11

    .line 211
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 214
    :cond_7
    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    .line 215
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v1, :cond_18

    .line 216
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_18
    return-void
.end method

.method private readBlockToCache(JJ)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    .line 150
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_13

    cmp-long v0, p3, v3

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v1

    :goto_14
    cmp-long v5, p3, v3

    if-eqz v5, :cond_36

    .line 157
    iget-object v5, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 158
    invoke-virtual {v5}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    .line 160
    :try_start_2a
    iget-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p3
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_38

    .line 163
    :catch_31
    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {p3}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    :cond_36
    move v1, v2

    move-wide p3, v3

    :goto_38
    if-nez v1, :cond_5d

    .line 170
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 171
    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 172
    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, v3, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    .line 174
    :try_start_4f
    iget-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p3
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_5d

    :catch_56
    move-exception p1

    .line 176
    iget-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {p2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 177
    throw p1

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_6a

    cmp-long v1, p3, v3

    if-eqz v1, :cond_6a

    add-long/2addr p3, p1

    .line 184
    :try_start_64
    invoke-direct {p0, p3, p4}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V

    goto :goto_6a

    :catch_68
    move-exception p1

    goto :goto_8b

    :cond_6a
    :goto_6a
    move p3, v2

    move p4, p3

    :cond_6c
    :goto_6c
    const/4 v1, -0x1

    if-eq p3, v1, :cond_83

    .line 188
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 189
    iget-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    array-length v4, v3

    invoke-virtual {p3, v3, v2, v4}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_6c

    int-to-long v3, p3

    .line 191
    invoke-direct {p0, v3, v4}, Landroidx/media3/datasource/cache/CacheWriter;->onNewBytesCached(J)V

    add-int/2addr p4, p3

    goto :goto_6c

    :cond_83
    if-eqz v0, :cond_91

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 196
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8a} :catch_68

    goto :goto_91

    .line 199
    :goto_8b
    iget-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {p2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 200
    throw p1

    .line 206
    :cond_91
    :goto_91
    iget-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

    int-to-long p1, p4

    return-wide p1
.end method

.method private throwIfCanceled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    if-nez v0, :cond_5

    return-void

    .line 233
    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cache()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 114
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    .line 115
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    .line 116
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    goto :goto_3e

    .line 118
    :cond_2b
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3c

    move-wide v0, v2

    .line 119
    :cond_3c
    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    .line 121
    :goto_3e
    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v4, :cond_4d

    .line 122
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v9, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 125
    :cond_4d
    :goto_4d
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5b

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_5a

    goto :goto_5b

    :cond_5a
    return-void

    .line 126
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 128
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v4, v0, v2

    const-wide v5, 0x7fffffffffffffffL

    if-nez v4, :cond_6b

    move-wide v11, v5

    goto :goto_6f

    :cond_6b
    iget-wide v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v7

    move-wide v11, v0

    .line 129
    :goto_6f
    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v9, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    invoke-interface/range {v7 .. v12}, Landroidx/media3/datasource/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v4, v0, v7

    if-lez v4, :cond_85

    .line 131
    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    goto :goto_4d

    :cond_85
    neg-long v0, v0

    cmp-long v4, v0, v5

    if-nez v4, :cond_8b

    move-wide v0, v2

    .line 136
    :cond_8b
    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    invoke-direct {p0, v4, v5, v0, v1}, Landroidx/media3/datasource/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    goto :goto_4d
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    return-void
.end method
