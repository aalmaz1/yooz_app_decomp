.class public final Lcom/otaliastudios/transcoder/internal/data/Writer;
.super Ljava/lang/Object;
.source "Writer.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;
.implements Lcom/otaliastudios/transcoder/internal/data/WriterChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        "Lkotlin/Unit;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u000b\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/Writer;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "sink",
        "Lcom/otaliastudios/transcoder/sink/DataSink;",
        "track",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "(Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/common/TrackType;)V",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/data/Writer;",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "handleFormat",
        "format",
        "Landroid/media/MediaFormat;",
        "step",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "fresh",
        "",
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
.field private final channel:Lcom/otaliastudios/transcoder/internal/data/Writer;

.field private final info:Landroid/media/MediaCodec$BufferInfo;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final sink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field private final track:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 26
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 29
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->channel:Lcom/otaliastudios/transcoder/internal/data/Writer;

    .line 31
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p2, "Writer"

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 32
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->info:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/data/Writer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->channel:Lcom/otaliastudios/transcoder/internal/data/Writer;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/data/Writer;->getChannel()Lcom/otaliastudios/transcoder/internal/data/Writer;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public handleFormat(Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleFormat("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v0, v1, p1}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->release(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)V

    return-void
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/data/WriterData;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/data/WriterData;->component1()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/data/WriterData;->component2()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/data/WriterData;->component3()I

    move-result p2

    .line 41
    instance-of v7, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    .line 42
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-eqz v7, :cond_0

    and-int/lit8 p2, p2, 0x4

    :cond_0
    move v6, p2

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 50
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/data/Writer;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {p2, v1, v0, v2}, Lcom/otaliastudios/transcoder/sink/DataSink;->writeTrack(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 51
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/data/WriterData;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/data/WriterData;->getRelease()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 52
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    :goto_0
    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
