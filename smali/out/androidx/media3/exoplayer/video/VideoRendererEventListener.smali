.class public interface abstract Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDroppedFrames(IJ)V
    .registers 4

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 4

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .registers 4

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 3

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .registers 2

    return-void
.end method
