.class public Lcom/otaliastudios/transcoder/sink/DefaultDataSink;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/sink/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40000

.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# instance fields
.field private final mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mMuxerChecks:Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

.field private final mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerStarted:Z

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueBuffer:Ljava/nio/ByteBuffer;

.field private final mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "DefaultDataSink"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;-><init>(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 64
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 65
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 66
    new-instance v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerChecks:Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

    .line 90
    :try_start_27
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 64
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 65
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    .line 66
    new-instance v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerChecks:Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

    .line 75
    :try_start_27
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private drainQueue()V
    .registers 11

    .line 200
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    sget-object v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Output format determined, writing pending data into the muxer. samples:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    .line 203
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v8, v2

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;

    .line 208
    invoke-static {v9}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v4

    invoke-static {v9}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->access$200(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)J

    move-result-wide v5

    invoke-static {v9}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->access$300(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v7

    move-object v2, v0

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 209
    invoke-static {v9}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->access$400(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)Lcom/otaliastudios/transcoder/common/TrackType;

    move-result-object v2

    iget-object v3, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3, v0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 210
    invoke-static {v9}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_45

    .line 212
    :cond_72
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private enqueue(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_14

    const/high16 v0, 0x40000

    .line 181
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 183
    :cond_14
    sget-object v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enqueue("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\trealOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\trealSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tavailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ttotal=262144"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 189
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 192
    iget-object p2, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    new-instance v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;-><init>(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaCodec$BufferInfo;Lcom/otaliastudios/transcoder/sink/DefaultDataSink$1;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private maybeStart()V
    .registers 12

    .line 125
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/common/TrackStatus;->isTranscoding()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    sget-object v2, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/common/TrackStatus;->isTranscoding()Z

    move-result v1

    .line 128
    iget-object v2, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    sget-object v3, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v2, v3}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    .line 129
    iget-object v3, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    sget-object v4, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v3, v4}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_3e

    if-nez v0, :cond_3c

    goto :goto_3e

    :cond_3c
    move v6, v4

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v6, v5

    :goto_3f
    if-nez v3, :cond_43

    if-nez v1, :cond_44

    :cond_43
    move v4, v5

    :cond_44
    if-eqz v6, :cond_c1

    if-nez v4, :cond_49

    goto :goto_c1

    :cond_49
    const-string v4, " to muxer"

    const-string v6, "mime"

    const-string v7, " with "

    const-string v8, "Added track #"

    if-eqz v0, :cond_84

    .line 137
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 138
    iget-object v9, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->setVideo(Ljava/lang/Object;)V

    .line 139
    sget-object v9, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    :cond_84
    if-eqz v1, :cond_b7

    .line 142
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->setAudio(Ljava/lang/Object;)V

    .line 144
    sget-object v1, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 146
    :cond_b7
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 147
    iput-boolean v5, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 148
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->drainQueue()V

    :cond_c1
    :goto_c1
    return-void
.end method


# virtual methods
.method public release()V
    .registers 4

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 226
    sget-object v1, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v2, "Failed to release the muxer."

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method

.method public setLocation(DD)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V
    .registers 6

    .line 115
    sget-object v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTrackFormat("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_32

    .line 118
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerChecks:Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/transcoder/sink/DefaultDataSinkChecks;->checkOutputFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V

    .line 120
    :cond_32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mLastFormat:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->maybeStart()V

    return-void
.end method

.method public setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mStatus:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    return-void
.end method

.method public writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 6

    .line 153
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_16

    .line 163
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->mMuxerIndex:Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_19

    .line 165
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;->enqueue(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_19
    return-void
.end method
