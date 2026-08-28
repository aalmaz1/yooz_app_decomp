.class public interface abstract Landroidx/media3/exoplayer/offline/DownloadCursor;
.super Ljava/lang/Object;
.source "DownloadCursor.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getDownload()Landroidx/media3/exoplayer/offline/Download;
.end method

.method public abstract getPosition()I
.end method

.method public isAfterLast()Z
    .registers 4

    .line 120
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 123
    :cond_8
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public isBeforeFirst()Z
    .registers 4

    .line 112
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 115
    :cond_8
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public abstract isClosed()Z
.end method

.method public isFirst()Z
    .registers 2

    .line 101
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isLast()Z
    .registers 4

    .line 106
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    .line 107
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    const/4 v0, 0x0

    .line 61
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    .line 72
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .line 84
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public abstract moveToPosition(I)Z
.end method

.method public moveToPrevious()Z
    .registers 2

    .line 96
    invoke-interface {p0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
