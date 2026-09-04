.class final Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;
.super Ljava/lang/Object;
.source "eos.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/sink/DataSink;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\nH\u0096\u0001J\u0019\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0096\u0001J\u0011\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0001J\u001d\u0010\u0012\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016H\u0096\u0001J\u001d\u0010\u0017\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0019H\u0096\u0001J\t\u0010\u001a\u001a\u00020\nH\u0096\u0001J \u0010\u001b\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;",
        "Lcom/otaliastudios/transcoder/sink/DataSink;",
        "sink",
        "ignore",
        "Lkotlin/Function0;",
        "",
        "(Lcom/otaliastudios/transcoder/sink/DataSink;Lkotlin/jvm/functions/Function0;)V",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "release",
        "",
        "setLocation",
        "latitude",
        "",
        "longitude",
        "setOrientation",
        "orientation",
        "",
        "setTrackFormat",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "format",
        "Landroid/media/MediaFormat;",
        "setTrackStatus",
        "status",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        "stop",
        "writeTrack",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "bufferInfo",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ignore:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final info:Landroid/media/MediaCodec$BufferInfo;

.field private final sink:Lcom/otaliastudios/transcoder/sink/DataSink;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/sink/DataSink;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/sink/DataSink;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ignore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 17
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->ignore:Lkotlin/jvm/functions/Function0;

    .line 19
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->info:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/sink/DataSink;->release()V

    return-void
.end method

.method public setLocation(DD)V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/sink/DataSink;->setLocation(DD)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/sink/DataSink;->setOrientation(I)V

    return-void
.end method

.method public setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0, p1, p2}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/sink/DataSink;->stop()V

    return-void
.end method

.method public writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteBuffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->ignore:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v0, -0x5

    .line 23
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz v0, :cond_0

    if-eqz v6, :cond_2

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 25
    iget-object p3, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p3, p1, p2, v0}, Lcom/otaliastudios/transcoder/sink/DataSink;->writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/EosIgnoringDataSink;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/otaliastudios/transcoder/sink/DataSink;->writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
