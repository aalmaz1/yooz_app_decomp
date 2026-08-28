.class public final Lcom/otaliastudios/transcoder/internal/data/Bridge;
.super Ljava/lang/Object;
.source "Bridge.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;
.implements Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0014\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\r0\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J$\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/Bridge;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        "format",
        "Landroid/media/MediaFormat;",
        "(Landroid/media/MediaFormat;)V",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "kotlin.jvm.PlatformType",
        "bufferSize",
        "",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/data/Bridge;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "Lkotlin/Pair;",
        "initialize",
        "",
        "next",
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
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final channel:Lcom/otaliastudios/transcoder/internal/data/Bridge;

.field private final format:Landroid/media/MediaFormat;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;)V
    .registers 4

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->format:Landroid/media/MediaFormat;

    .line 14
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "Bridge"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v0, "max-input-size"

    .line 15
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->bufferSize:I

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->buffer:Ljava/nio/ByteBuffer;

    .line 17
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->channel:Lcom/otaliastudios/transcoder/internal/data/Bridge;

    return-void
.end method


# virtual methods
.method public buffer()Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lcom/otaliastudios/transcoder/internal/data/Bridge;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->channel:Lcom/otaliastudios/transcoder/internal/data/Bridge;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/data/Bridge;->getChannel()Lcom/otaliastudios/transcoder/internal/data/Bridge;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/data/WriterChannel;)V
    .registers 5

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "initialize(): format="

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->format:Landroid/media/MediaFormat;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Bridge;->format:Landroid/media/MediaFormat;

    invoke-interface {p1, v0}, Lcom/otaliastudios/transcoder/internal/data/WriterChannel;->handleFormat(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public bridge synthetic initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .registers 2

    .line 11
    check-cast p1, Lcom/otaliastudios/transcoder/internal/data/WriterChannel;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/data/Bridge;->initialize(Lcom/otaliastudios/transcoder/internal/data/WriterChannel;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 11
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->release(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)V

    return-void
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->component1()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    move-result-object p2

    .line 32
    iget-boolean v4, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    .line 33
    new-instance v6, Lcom/otaliastudios/transcoder/internal/data/WriterData;

    iget-object v1, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    const-string v0, "chunk.buffer"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    sget-object p2, Lcom/otaliastudios/transcoder/internal/data/Bridge$step$result$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/data/Bridge$step$result$1;

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/transcoder/internal/data/WriterData;-><init>(Ljava/nio/ByteBuffer;JILkotlin/jvm/functions/Function0;)V

    .line 34
    instance-of p1, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz p1, :cond_2f

    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    invoke-direct {p1, v6}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    goto :goto_34

    :cond_2f
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    invoke-direct {p1, v6}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    :goto_34
    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
