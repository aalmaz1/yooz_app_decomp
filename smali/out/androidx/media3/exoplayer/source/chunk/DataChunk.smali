.class public abstract Landroidx/media3/exoplayer/source/chunk/DataChunk;
.super Landroidx/media3/exoplayer/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;[B)V
    .registers 19

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 60
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/source/chunk/Chunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p7, :cond_1c

    .line 69
    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v1, p0

    goto :goto_1f

    :cond_1c
    move-object v1, p0

    move-object/from16 v0, p7

    :goto_1f
    iput-object v0, v1, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    return-void
.end method

.method private maybeExpandData(I)V
    .registers 4

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    array-length v1, v0

    add-int/lit16 p1, p1, 0x4000

    if-ge v1, p1, :cond_10

    .line 125
    array-length p1, v0

    add-int/lit16 p1, p1, 0x4000

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    :cond_10
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .registers 2

    .line 80
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final load()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v0, 0x0

    move v1, v0

    :cond_9
    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 96
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_21

    .line 97
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/chunk/DataChunk;->maybeExpandData(I)V

    .line 98
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    const/16 v4, 0x4000

    invoke-virtual {v0, v3, v1, v4}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_9

    add-int/2addr v1, v0

    goto :goto_9

    .line 103
    :cond_21
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2a

    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->data:[B

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/chunk/DataChunk;->consume([BI)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_30

    .line 107
    :cond_2a
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v0}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    return-void

    :catchall_30
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 108
    throw v0
.end method
