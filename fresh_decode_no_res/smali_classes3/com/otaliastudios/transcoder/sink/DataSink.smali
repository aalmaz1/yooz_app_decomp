.class public interface abstract Lcom/otaliastudios/transcoder/sink/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# virtual methods
.method public abstract release()V
.end method

.method public abstract setLocation(DD)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V
.end method

.method public abstract setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V
.end method

.method public abstract stop()V
.end method

.method public abstract writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
