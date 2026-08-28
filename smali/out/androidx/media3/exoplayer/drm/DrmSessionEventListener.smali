.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSessionEventListener;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .registers 4

    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    return-void
.end method
