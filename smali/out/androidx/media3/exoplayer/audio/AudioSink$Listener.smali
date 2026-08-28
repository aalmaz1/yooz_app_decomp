.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink$Listener;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .registers 1

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

.method public onOffloadBufferEmptying()V
    .registers 1

    return-void
.end method

.method public onOffloadBufferFull()V
    .registers 1

    return-void
.end method

.method public onPositionAdvancing(J)V
    .registers 3

    return-void
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public onSilenceSkipped()V
    .registers 1

    return-void
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract onUnderrun(IJJ)V
.end method
