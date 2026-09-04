.class public Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;
.super Ljava/lang/Object;
.source "BlankAudioDataSource.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/source/DataSource;


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final PERIOD_SIZE:I

.field private static final SAMPLE_RATE:I = 0xac44


# instance fields
.field private audioFormat:Landroid/media/MediaFormat;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final durationUs:J

.field private initialized:Z

.field private positionUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x800

    const/4 v1, 0x2

    .line 28
    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->samplesToBytes(II)I

    move-result v0

    sput v0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->PERIOD_SIZE:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->initialized:Z

    .line 38
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->durationUs:J

    return-void
.end method


# virtual methods
.method public canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .locals 1

    .line 105
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deinitialize()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->initialized:Z

    return-void
.end method

.method public getDurationUs()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->durationUs:J

    return-wide v0
.end method

.method public getLocation()[D
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    return-wide v0
.end method

.method public getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;
    .locals 1

    .line 100
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public initialize()V
    .locals 6

    .line 43
    sget v0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->PERIOD_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "audio/raw"

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const v2, 0xac44

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->bitRate(II)I

    move-result v4

    const-string v5, "bitrate"

    invoke-virtual {v1, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 47
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v4, "channel-count"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v3, "max-input-size"

    invoke-virtual {v1, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 49
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->audioFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->initialized:Z

    return-void
.end method

.method public isDrained()Z
    .locals 4

    .line 134
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->getDurationUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->initialized:Z

    return v0
.end method

.method public readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V
    .locals 4

    .line 112
    iget-object v0, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 113
    iget-object v1, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sget v2, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->PERIOD_SIZE:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    iget-object v2, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 117
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    .line 122
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    iput-wide v2, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    .line 123
    iput-boolean v0, p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    .line 124
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    const p1, 0xac44

    const/4 v0, 0x2

    invoke-static {v1, p1, v0}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->bytesToUs(III)J

    move-result-wide v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    return-void
.end method

.method public releaseTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 0

    return-void
.end method

.method public seekTo(J)J
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;->positionUs:J

    return-wide p1
.end method

.method public selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 0

    return-void
.end method
