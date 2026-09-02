.class public interface abstract Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onAudioCodecError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 3

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .registers 3

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 2

    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 2

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .registers 6

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 2

    return-void
.end method
