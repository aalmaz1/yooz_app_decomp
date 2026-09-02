.class public Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;
.super Ljava/lang/Object;
.source "MediaFormatProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeMediaFormat(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 14

    .line 93
    invoke-interface {p1, p2}, Lcom/otaliastudios/transcoder/source/DataSource;->selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V

    :try_start_3
    const-string v0, "mime"

    .line 96
    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, p3, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_39

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 102
    new-instance p3, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    invoke-direct {p3, v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;-><init>(Landroid/media/MediaCodec;)V

    .line 103
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 104
    new-instance v9, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-direct {v9}, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;-><init>()V

    :goto_24
    if-nez v2, :cond_32

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, v9

    move-object v5, v0

    move-object v6, p3

    move-object v7, v8

    .line 107
    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->decodeOnce(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object v2

    goto :goto_24

    .line 109
    :cond_32
    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->deinitialize()V

    .line 110
    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->initialize()V

    return-object v2

    :catch_39
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Can\'t decode this track"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private decodeOnce(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;
    .registers 7

    .line 122
    invoke-direct {p0, p4, p5, p6}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->drainOnce(Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object p6

    if-eqz p6, :cond_7

    return-object p6

    .line 124
    :cond_7
    invoke-direct/range {p0 .. p5}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->feedOnce(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private drainOnce(Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;
    .registers 6

    const-wide/16 v0, 0x0

    .line 132
    invoke-virtual {p1, p3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1a

    const/4 p2, -0x2

    if-eq v0, p2, :cond_15

    const/4 p2, -0x1

    const/4 p3, 0x0

    if-eq v0, p2, :cond_14

    const/4 p2, 0x0

    .line 142
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_14
    return-object p3

    .line 137
    :cond_15
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1

    .line 139
    :cond_1a
    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->onOutputBuffersChanged()V

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->drainOnce(Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method private feedOnce(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/source/DataSource$Chunk;Landroid/media/MediaCodec;Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;)V
    .registers 15

    .line 152
    invoke-interface {p2, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result p1

    if-eqz p1, :cond_2d

    const-wide/16 v0, 0x0

    .line 155
    invoke-virtual {p4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_f

    return-void

    .line 157
    :cond_f
    invoke-virtual {p5, v3}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p3, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 158
    invoke-interface {p2, p3}, Lcom/otaliastudios/transcoder/source/DataSource;->readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V

    .line 159
    iget-object p1, p3, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object p1, p3, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-wide v6, p3, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    .line 163
    iget-boolean v8, p3, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    move-object v2, p4

    .line 159
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void

    .line 153
    :cond_2d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This should never happen!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isComplete(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Z
    .registers 5

    .line 63
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_11

    const-string v0, "frame-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x18

    .line 67
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    :cond_11
    sget-object v0, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider$1;->$SwitchMap$com$otaliastudios$transcoder$common$TrackType:[I

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 71
    invoke-direct {p0, p2}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->isCompleteVideoFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1

    .line 72
    :cond_24
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_39
    invoke-direct {p0, p2}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->isCompleteAudioFormat(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method private isCompleteAudioFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    const-string v0, "mime"

    .line 84
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "channel-count"

    .line 85
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "sample-rate"

    .line 86
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private isCompleteVideoFormat(Landroid/media/MediaFormat;)Z
    .registers 3

    const-string v0, "mime"

    .line 77
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "height"

    .line 78
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "width"

    .line 79
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "frame-rate"

    .line 80
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method


# virtual methods
.method public provideMediaFormat(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 5

    .line 39
    invoke-direct {p0, p2, p3}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->isComplete(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p3

    .line 42
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->decodeMediaFormat(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p1

    .line 46
    invoke-direct {p0, p2, p1}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->isComplete(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Z

    move-result p3

    if-nez p3, :cond_c6

    .line 48
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not get a complete format! hasMimeType:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-eq p2, v0, :cond_69

    .line 53
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p2, v0, :cond_c0

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " hasChannels:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "channel-count"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " hasSampleRate:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "sample-rate"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_c0

    .line 50
    :cond_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " hasWidth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " hasHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " hasFrameRate:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "frame-rate"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 57
    :cond_c0
    :goto_c0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c6
    return-object p1
.end method
