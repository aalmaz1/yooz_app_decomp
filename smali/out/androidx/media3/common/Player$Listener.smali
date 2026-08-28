.class public interface abstract Landroidx/media3/common/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .registers 2

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .registers 2

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .registers 2

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .registers 2

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .registers 2

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .registers 3

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .registers 3

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .registers 3

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .registers 2

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .registers 2

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .registers 2

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .registers 2

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .registers 2

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .registers 4

    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .registers 3

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .registers 3

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .registers 3

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .registers 3

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .registers 2

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .registers 2

    return-void
.end method

.method public onVolumeChanged(F)V
    .registers 2

    return-void
.end method
