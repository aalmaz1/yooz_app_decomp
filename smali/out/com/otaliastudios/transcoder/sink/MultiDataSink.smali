.class public Lcom/otaliastudios/transcoder/sink/MultiDataSink;
.super Ljava/lang/Object;
.source "MultiDataSink.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/sink/DataSink;


# instance fields
.field private final sinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/sink/DataSink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/otaliastudios/transcoder/sink/DataSink;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 72
    invoke-interface {v1}, Lcom/otaliastudios/transcoder/sink/DataSink;->release()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setLocation(DD)V
    .registers 7

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 33
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/sink/DataSink;->setLocation(DD)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 25
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 26
    invoke-interface {v1, p1}, Lcom/otaliastudios/transcoder/sink/DataSink;->setOrientation(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 47
    invoke-interface {v1, p1, p2}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 40
    invoke-interface {v1, p1, p2}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public stop()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 65
    invoke-interface {v1}, Lcom/otaliastudios/transcoder/sink/DataSink;->stop()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 8

    .line 53
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 54
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/otaliastudios/transcoder/sink/MultiDataSink;->sinks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 56
    invoke-interface {v3, p1, p2, p3}, Lcom/otaliastudios/transcoder/sink/DataSink;->writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 57
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_e

    :cond_24
    return-void
.end method
