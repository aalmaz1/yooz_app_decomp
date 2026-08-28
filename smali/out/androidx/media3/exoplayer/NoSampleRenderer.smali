.class public abstract Landroidx/media3/exoplayer/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field private configuration:Landroidx/media3/exoplayer/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Landroidx/media3/exoplayer/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 4

    .line 154
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 155
    iput v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 157
    iput-boolean v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 158
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p6

    .line 82
    iget v0, v8, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    move-object v0, p1

    .line 83
    iput-object v0, v8, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 84
    iput v1, v8, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 85
    invoke-virtual {p0, v9}, Landroidx/media3/exoplayer/NoSampleRenderer;->onEnabled(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    .line 86
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/NoSampleRenderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    move-wide v0, p4

    .line 87
    invoke-virtual {p0, p4, p5, v9}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .registers 1

    return-object p0
.end method

.method protected final getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;
    .registers 2

    .line 290
    iget-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .registers 2

    .line 295
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingPositionUs()J
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .registers 2

    .line 67
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .registers 2

    .line 113
    iget-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .registers 4

    .line 56
    iput p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onDisabled()V
    .registers 1

    return-void
.end method

.method protected onEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .registers 1

    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 105
    iget-boolean p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 106
    iput-object p2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 107
    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/NoSampleRenderer;->onRendererOffsetChanged(J)V

    return-void
.end method

.method public final reset()V
    .registers 2

    .line 163
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 164
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 142
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .registers 2

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    return-void
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)V
    .registers 2

    return-void
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 92
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 93
    iput v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 94
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .registers 4

    .line 147
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 148
    iput v2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 149
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStopped()V

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 181
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
