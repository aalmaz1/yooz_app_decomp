.class public interface abstract Lcom/otaliastudios/transcoder/source/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/source/DataSource$Chunk;
    }
.end annotation


# virtual methods
.method public abstract canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z
.end method

.method public abstract deinitialize()V
.end method

.method public abstract getDurationUs()J
.end method

.method public abstract getLocation()[D
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPositionUs()J
.end method

.method public abstract getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;
.end method

.method public abstract initialize()V
.end method

.method public abstract isDrained()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V
.end method

.method public abstract releaseTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
.end method

.method public abstract seekTo(J)J
.end method

.method public abstract selectTrack(Lcom/otaliastudios/transcoder/common/TrackType;)V
.end method
