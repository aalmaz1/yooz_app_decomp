.class public final Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;
.super Ljava/lang/Object;
.source "chunks.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005Jf\u0010\t\u001a\u0002H\n\"\u0004\u0008\u0000\u0010\n2\u0006\u0010\u000b\u001a\u0002H\n2K\u0010\u000c\u001aG\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u0002H\n0\r\u00a2\u0006\u0002\u0010\u0016J,\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aJ\u0006\u0010\u001b\u001a\u00020\u0018J\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;",
        "",
        "sampleRate",
        "",
        "channels",
        "(II)V",
        "queue",
        "Lkotlin/collections/ArrayDeque;",
        "Lcom/otaliastudios/transcoder/internal/audio/Chunk;",
        "drain",
        "T",
        "eos",
        "action",
        "Lkotlin/Function3;",
        "Ljava/nio/ShortBuffer;",
        "Lkotlin/ParameterName;",
        "name",
        "buffer",
        "",
        "timeUs",
        "",
        "timeStretch",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;",
        "enqueue",
        "",
        "release",
        "Lkotlin/Function0;",
        "enqueueEos",
        "isEmpty",
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
.field private final channels:I

.field private final queue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lcom/otaliastudios/transcoder/internal/audio/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleRate:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->sampleRate:I

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->channels:I

    .line 23
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final drain(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/ShortBuffer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Double;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    .line 41
    sget-object v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->Companion:Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;->getEos()Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-result-object v0

    if-ne v1, v0, :cond_17

    return-object p1

    .line 43
    :cond_17
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result p1

    .line 44
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    .line 45
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getTimeUs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getTimeStretch()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p2, v2, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 47
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 49
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    sub-int/2addr p1, v0

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    const/4 v2, 0x0

    .line 51
    iget v3, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->sampleRate:I

    iget v4, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->channels:I

    invoke-static {p1, v3, v4}, Lcom/otaliastudios/transcoder/internal/audio/ConversionsKt;->shortsToUs(III)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    .line 50
    invoke-static/range {v1 .. v9}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->copy$default(Lcom/otaliastudios/transcoder/internal/audio/Chunk;Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_79

    .line 55
    :cond_72
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->getRelease()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_79
    return-object p2
.end method

.method public final enqueue(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ShortBuffer;",
            "JD",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "release"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    new-instance v8, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;-><init>(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v8}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_23

    .line 31
    :cond_20
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_23
    return-void
.end method

.method public final enqueueEos()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->Companion:Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;->getEos()Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final isEmpty()Z
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/ChunkQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method
