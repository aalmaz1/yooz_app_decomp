.class Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/sink/DefaultDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedSample"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mSize:I

.field private final mTimeUs:J

.field private final mType:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mType:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 47
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput p1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mSize:I

    .line 48
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    .line 49
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaCodec$BufferInfo;Lcom/otaliastudios/transcoder/sink/DefaultDataSink$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;-><init>(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return p0
.end method

.method static synthetic access$400(Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;)Lcom/otaliastudios/transcoder/common/TrackType;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink$QueuedSample;->mType:Lcom/otaliastudios/transcoder/common/TrackType;

    return-object p0
.end method
