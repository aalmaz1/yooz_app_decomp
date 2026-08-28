.class public Lcom/otaliastudios/transcoder/source/DataSourceWrapper;
.super Ljava/lang/Object;
.source "DataSourceWrapper.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/source/DataSource;


# instance fields
.field private mSource:Lcom/otaliastudios/transcoder/source/DataSource;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    return-void
.end method

.method protected constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    return-void
.end method


# virtual methods
.method public canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result p1

    return p1
.end method

.method public deinitialize()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->deinitialize()V

    return-void
.end method

.method public getDurationUs()J
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()[D
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getLocation()[D

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSource()Lcom/otaliastudios/transcoder/source/DataSource;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    return-object v0
.end method

.method public getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .registers 3

    .line 105
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_16

    .line 106
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    if-eqz v0, :cond_e

    .line 109
    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->initialize()V

    goto :goto_16

    .line 107
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DataSourceWrapper\'s source is not set!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_16
    return-void
.end method

.method public isDrained()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->isDrained()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V

    return-void
.end method

.method public releaseTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->releaseTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V

    return-void
.end method

.method public seekTo(J)J
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/transcoder/source/DataSource;->seekTo(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V

    return-void
.end method

.method protected setSource(Lcom/otaliastudios/transcoder/source/DataSource;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->mSource:Lcom/otaliastudios/transcoder/source/DataSource;

    return-void
.end method
