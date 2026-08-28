.class final Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;
.super Ljava/lang/Object;
.source "ExoPlayerEventListener.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field private final events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

.field private final exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private isBuffering:Z

.field private isInitialized:Z


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isBuffering:Z

    .line 17
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isInitialized:Z

    .line 20
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 21
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    return-void
.end method

.method private sendInitialized()V
    .registers 12

    .line 38
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isInitialized:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isInitialized:Z

    .line 42
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    .line 44
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    .line 45
    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    .line 47
    iget v4, v0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_21

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_25

    .line 50
    :cond_21
    iget v1, v0, Landroidx/media3/common/VideoSize;->height:I

    .line 51
    iget v2, v0, Landroidx/media3/common/VideoSize;->width:I

    :cond_25
    const/16 v0, 0xb4

    if-ne v4, v0, :cond_2d

    move v6, v1

    move v7, v2

    move v10, v4

    goto :goto_30

    :cond_2d
    move v6, v1

    move v7, v2

    move v10, v3

    .line 61
    :goto_30
    iget-object v5, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v8

    invoke-interface/range {v5 .. v10}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onInitialized(IIJI)V

    return-void
.end method

.method private setBuffering(Z)V
    .registers 3

    .line 25
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isBuffering:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 28
    :cond_5
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->isBuffering:Z

    if-eqz p1, :cond_f

    .line 30
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    invoke-interface {p1}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onBufferingStart()V

    goto :goto_14

    .line 32
    :cond_f
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    invoke-interface {p1}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onBufferingEnd()V

    :goto_14
    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .registers 3

    .line 99
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    invoke-interface {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onIsPlayingStateUpdate(Z)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a

    goto :goto_23

    .line 75
    :cond_a
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    invoke-interface {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onCompleted()V

    goto :goto_23

    .line 72
    :cond_10
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->sendInitialized()V

    goto :goto_23

    :cond_14
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, v1}, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->setBuffering(Z)V

    .line 69
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onBufferingUpdate(J)V

    :goto_23
    if-eq p1, v0, :cond_29

    const/4 p1, 0x0

    .line 81
    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->setBuffering(Z)V

    :cond_29
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .registers 5

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->setBuffering(Z)V

    .line 88
    iget v0, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_15

    .line 90
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->seekToDefaultPosition()V

    .line 91
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    goto :goto_2c

    .line 93
    :cond_15
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/ExoPlayerEventListener;->events:Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video player had error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "VideoError"

    invoke-interface {v0, v2, p1, v1}, Lio/flutter/plugins/videoplayer/VideoPlayerCallbacks;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2c
    return-void
.end method
