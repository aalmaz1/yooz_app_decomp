.class public final Lcom/otaliastudios/transcoder/internal/data/Reader;
.super Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep<",
        "Lkotlin/Unit;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reader.kt\ncom/otaliastudios/transcoder/internal/data/Reader\n*L\n1#1,58:1\n28#1,6:59\n28#1,6:65\n*S KotlinDebug\n*F\n+ 1 Reader.kt\ncom/otaliastudios/transcoder/internal/data/Reader\n*L\n40#1:59,6\n51#1:65,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ/\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00142\u001e\u0010\u0015\u001a\u001a\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00140\u0016H\u0082\u0008J$\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00142\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/Reader;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "source",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "track",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;)V",
        "channel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "chunk",
        "Lcom/otaliastudios/transcoder/source/DataSource$Chunk;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "nextBufferOrWait",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "action",
        "Lkotlin/Function2;",
        "Ljava/nio/ByteBuffer;",
        "",
        "step",
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
.field private final channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

.field private final chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final source:Lcom/otaliastudios/transcoder/source/DataSource;

.field private final track:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    .line 20
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 23
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p2, "Reader"

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 24
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    .line 25
    new-instance p1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-direct {p1}, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    return-void
.end method

.method public static final synthetic access$getLog$p(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/utils/Logger;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getNext(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->getNext()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;

    return-object p0
.end method

.method private final nextBufferOrWait(Lkotlin/jvm/functions/Function2;)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;>;)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getNext(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;->buffer()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getLog$p(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object p1

    const-string v0, "Returning State.Wait because buffer is null."

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->isDrained()Z

    move-result p1

    const-string p2, "Returning State.Wait because buffer is null."

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v0, "Source is drained! Returning Eos as soon as possible."

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getNext(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;

    move-result-object p1

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;->buffer()Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getLog$p(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto/16 :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 42
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    iput-object p2, v1, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 43
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    iput-boolean v0, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    .line 44
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    .line 45
    new-instance p2, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-direct {v0, v1, p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;-><init>(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)V

    invoke-direct {p2, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p1, v0}, Lcom/otaliastudios/transcoder/source/DataSource;->canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Returning State.Wait because source can\'t read "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " right now."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getNext(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;

    move-result-object p1

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;->buffer()Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_3

    .line 67
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/data/Reader;->access$getLog$p(Lcom/otaliastudios/transcoder/internal/data/Reader;)Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    iput-object p2, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    .line 53
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-interface {p2, v0}, Lcom/otaliastudios/transcoder/source/DataSource;->readTrack(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;)V

    .line 54
    new-instance p2, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/Reader;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-direct {v0, v1, p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;-><init>(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)V

    invoke-direct {p2, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    :goto_0
    return-object p1
.end method
