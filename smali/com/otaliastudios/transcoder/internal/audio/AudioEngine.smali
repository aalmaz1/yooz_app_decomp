.class public final Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;
.super Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;
.source "AudioEngine.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep<",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 )2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003:\u0001)B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040 H\u0014J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0014J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0002H\u0014J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u000bH\u0016J\u0012\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u000bH\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\u001a*\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001a*\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001c\u00a8\u0006*"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        "stretcher",
        "Lcom/otaliastudios/transcoder/stretch/AudioStretcher;",
        "resampler",
        "Lcom/otaliastudios/transcoder/resample/AudioResampler;",
        "targetFormat",
        "Landroid/media/MediaFormat;",
        "(Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Landroid/media/MediaFormat;)V",
        "buffers",
        "Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;",
        "chunks",
        "Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "rawFormat",
        "remixer",
        "Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;",
        "channels",
        "",
        "getChannels",
        "(Landroid/media/MediaFormat;)I",
        "sampleRate",
        "getSampleRate",
        "drain",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "enqueue",
        "",
        "data",
        "enqueueEos",
        "handleRawFormat",
        "handleSourceFormat",
        "Landroid/view/Surface;",
        "sourceFormat",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$Companion;

.field private static final ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final buffers:Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

.field private final channel:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

.field private chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private rawFormat:Landroid/media/MediaFormat;

.field private remixer:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

.field private final resampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

.field private final stretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field private final targetFormat:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->Companion:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$Companion;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Landroid/media/MediaFormat;)V
    .registers 5

    const-string v0, "stretcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resampler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->stretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 23
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->resampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    .line 24
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->targetFormat:Landroid/media/MediaFormat;

    .line 30
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AudioEngine("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x29

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 32
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->channel:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    .line 33
    new-instance p1, Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

    invoke-direct {p1}, Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->buffers:Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

    return-void
.end method

.method public static final synthetic access$getBuffers$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->buffers:Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

    return-object p0
.end method

.method public static final synthetic access$getChannels(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getChannels(Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getRawFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->rawFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public static final synthetic access$getRemixer$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->remixer:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    return-object p0
.end method

.method public static final synthetic access$getResampler$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/resample/AudioResampler;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->resampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    return-object p0
.end method

.method public static final synthetic access$getSampleRate(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getSampleRate(Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getStretcher$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/stretch/AudioStretcher;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->stretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    return-object p0
.end method

.method public static final synthetic access$getTargetFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->targetFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method private final getChannels(Landroid/media/MediaFormat;)I
    .registers 3

    const-string v0, "channel-count"

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final getSampleRate(Landroid/media/MediaFormat;)I
    .registers 3

    const-string v0, "sample-rate"

    .line 35
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected drain()Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    const/4 v1, 0x0

    const-string v2, "chunks"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 66
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "drain(): no chunks, waiting..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object v0

    .line 69
    :cond_1d
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getNext()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;->buffer()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_38

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    .line 70
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "drain(): no next buffer, waiting..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    .line 69
    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object v0

    :cond_38
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 73
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    if-nez v5, :cond_54

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_55

    :cond_54
    move-object v1, v5

    .line 75
    :goto_55
    new-instance v2, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    new-instance v5, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v3, v0, v6, v7}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-direct {v2, v5}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    .line 74
    new-instance v5, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;

    invoke-direct {v5, v4, p0, v3, v0}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;-><init>(Ljava/nio/ShortBuffer;Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Ljava/nio/ByteBuffer;I)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v2, v5}, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->drain(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object v0
.end method

.method protected enqueue(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-nez v0, :cond_14

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_18

    :cond_14
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimerData;->getTimeStretch()D

    move-result-wide v2

    :goto_18
    move-wide v8, v2

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    if-nez v0, :cond_24

    const-string v0, "chunks"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_25

    :cond_24
    move-object v4, v0

    :goto_25
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    const-string v0, "data.buffer.asShortBuffer()"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getTimeUs()J

    move-result-wide v6

    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$enqueue$1;-><init>(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v4 .. v10}, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->enqueue(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic enqueue(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->enqueue(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V

    return-void
.end method

.method protected enqueueEos(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V
    .registers 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "enqueueEos()"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    if-nez p1, :cond_22

    const-string p1, "chunks"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_22
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->enqueueEos()V

    return-void
.end method

.method public bridge synthetic enqueueEos(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->enqueueEos(Lcom/otaliastudios/transcoder/internal/codec/DecoderData;)V

    return-void
.end method

.method public getChannel()Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->channel:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getChannel()Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public handleRawFormat(Landroid/media/MediaFormat;)V
    .registers 5

    const-string v0, "rawFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleRawFormat("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->rawFormat:Landroid/media/MediaFormat;

    .line 47
    sget-object v0, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;->Companion:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;

    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getChannels(Landroid/media/MediaFormat;)I

    move-result v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->targetFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v2}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getChannels(Landroid/media/MediaFormat;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;->get$lib_release(II)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->remixer:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    .line 48
    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getSampleRate(Landroid/media/MediaFormat;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->getChannels(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;-><init>(II)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->chunks:Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;

    return-void
.end method

.method public handleSourceFormat(Landroid/media/MediaFormat;)Landroid/view/Surface;
    .registers 3

    const-string v0, "sourceFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
