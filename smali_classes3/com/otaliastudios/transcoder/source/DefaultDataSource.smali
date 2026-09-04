.class public abstract Lcom/otaliastudios/transcoder/source/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/source/DataSource;


# static fields
.field private static final ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private mDontRenderRangeEnd:J

.field private mDontRenderRangeStart:J

.field private mExtractor:Landroid/media/MediaExtractor;

.field private final mFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Landroid/media/MediaMetadataRetriever;

.field private mOriginUs:J

.field private final mSelectedTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultDataSource("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 34
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    const-wide/16 v1, 0x0

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 38
    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 39
    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    const-wide/high16 v0, -0x8000000000000000L

    .line 40
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mInitialized:Z

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    .line 44
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    return-void
.end method


# virtual methods
.method public canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deinitialize()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "deinitialize(): deinitializing..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v2, "Could not release extractor:"

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v2, "Could not release metadata:"

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 106
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    .line 107
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->reset(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->reset(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0, v1, v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->reset(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    .line 110
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    .line 111
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mInitialized:Z

    return-void
.end method

.method public getDurationUs()J
    .locals 4

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLocation()[D
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "getLocation()"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;

    invoke-direct {v1}, Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/otaliastudios/transcoder/internal/utils/ISO6709LocationParser;->parse(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 258
    aget v3, v0, v2

    float-to-double v3, v3

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    .line 259
    aget v0, v0, v2

    float-to-double v3, v0

    aput-wide v3, v1, v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "getOrientation()"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionUs()J
    .locals 4

    .line 239
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTrackFormat("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    return-object p1
.end method

.method public initialize()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "initialize(): initializing..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 51
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->initializeExtractor(Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mMetadata:Landroid/media/MediaMetadataRetriever;

    .line 57
    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->initializeRetriever(Landroid/media/MediaMetadataRetriever;)V

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 61
    iget-object v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/otaliastudios/transcoder/common/TrackTypeKt;->getTrackTypeOrNull(Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v5, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v5, v4}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->has(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    iget-object v5, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    .line 65
    iget-object v5, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v5, v4, v3}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 71
    :goto_1
    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    .line 73
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialize(): found origin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mInitialized:Z

    return-void

    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v2, "Got IOException while trying to open MediaExtractor."

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract initializeExtractor(Landroid/media/MediaExtractor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract initializeRetriever(Landroid/media/MediaMetadataRetriever;)V
.end method

.method public isDrained()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mInitialized:Z

    return v0
.end method

.method public readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 198
    iget-object v1, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 199
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 200
    iget-object v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-ltz v3, :cond_8

    add-int/2addr v3, v1

    if-gt v3, v2, :cond_7

    .line 208
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    .line 212
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    .line 213
    iget-wide v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    iget-wide v6, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iget-wide v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    iget-wide v6, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    iput-boolean v3, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    .line 214
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readTrack(): time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", render="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getHasAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    goto :goto_1

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getHasVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 225
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mLastTimestampUs:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    iget-wide v3, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 231
    iget-boolean v0, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->isDrained()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Force rendering the last frame. timeUs="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;)V

    .line 233
    iput-boolean v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    :cond_5
    return-void

    .line 223
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MediaExtractor is not respecting the buffer limit. This might cause other issues down the pipeline."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No samples available! Forgot to call canReadTrack / isDrained?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseTrack("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_0
    return-void
.end method

.method public seekTo(J)J
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    sget-object v2, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "seekTo(): seeking to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originUs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extractorUs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    .line 148
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " externalUs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hasVideo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hasAudio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 157
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "seekTo(): unselected AUDIO, seeking to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    add-long/2addr v3, p1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (extractorUs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    add-long/2addr v4, p1

    invoke-virtual {v0, v4, v5, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 159
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo(): unselected AUDIO and sought (extractorUs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 161
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo(): reselected AUDIO, seeking to extractorUs (extractorUs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 163
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo(): seek workaround completed. (extractorUs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    add-long/2addr v3, p1

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    .line 168
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 175
    iput-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "seekTo(): dontRenderRange="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeEnd:J

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mDontRenderRangeStart:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "us)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mOriginUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectTrack("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mSelectedTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/DefaultDataSource;->mIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_0
    return-void
.end method
