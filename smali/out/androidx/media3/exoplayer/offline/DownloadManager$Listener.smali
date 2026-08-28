.class public interface abstract Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onDownloadChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public onDownloadRemoved(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;)V
    .registers 3

    return-void
.end method

.method public onDownloadsPausedChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .registers 3

    return-void
.end method

.method public onIdle(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .registers 2

    return-void
.end method

.method public onInitialized(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .registers 2

    return-void
.end method

.method public onRequirementsStateChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .registers 4

    return-void
.end method

.method public onWaitingForRequirementsChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .registers 3

    return-void
.end method
