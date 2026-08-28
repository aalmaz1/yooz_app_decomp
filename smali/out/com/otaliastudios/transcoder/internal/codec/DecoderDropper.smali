.class public final Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;
.super Ljava/lang/Object;
.source "DecoderDropper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecoderDropper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecoderDropper.kt\ncom/otaliastudios/transcoder/internal/codec/DecoderDropper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1849#2,2:93\n*S KotlinDebug\n*F\n+ 1 DecoderDropper.kt\ncom/otaliastudios/transcoder/internal/codec/DecoderDropper\n*L\n69#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003H\u0002J\u0016\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0003J\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u001aR\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;",
        "",
        "continuous",
        "",
        "(Z)V",
        "closedDeltas",
        "",
        "Lkotlin/ranges/LongRange;",
        "",
        "closedRanges",
        "",
        "firstInputUs",
        "Ljava/lang/Long;",
        "firstOutputUs",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "pendingRange",
        "debug",
        "",
        "message",
        "",
        "important",
        "input",
        "timeUs",
        "render",
        "output",
        "(J)Ljava/lang/Long;",
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
.field private final closedDeltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/ranges/LongRange;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final closedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/ranges/LongRange;",
            ">;"
        }
    .end annotation
.end field

.field private final continuous:Z

.field private firstInputUs:Ljava/lang/Long;

.field private firstOutputUs:Ljava/lang/Long;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private pendingRange:Lkotlin/ranges/LongRange;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->continuous:Z

    .line 26
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v0, "DecoderDropper"

    invoke-direct {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 27
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedDeltas:Ljava/util/Map;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    return-void
.end method

.method private final debug(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method static synthetic debug$default(Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 34
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final input(JZ)V
    .registers 10

    .line 43
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstInputUs:Ljava/lang/Long;

    if-nez v0, :cond_a

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstInputUs:Ljava/lang/Long;

    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p3, :cond_3e

    const-string p3, "INPUT: inputUs="

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, v2, v4, v3}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug$default(Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    iget-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    if-nez p3, :cond_2d

    new-instance p3, Lkotlin/ranges/LongRange;

    invoke-direct {p3, p1, p2, v0, v1}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    goto :goto_9b

    .line 50
    :cond_2d
    new-instance p3, Lkotlin/ranges/LongRange;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v0

    invoke-direct {p3, v0, v1, p1, p2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    goto :goto_9b

    :cond_3e
    const-string p3, "INPUT: Got SKIPPING input! inputUs="

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2, v4, v3}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug$default(Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    if-eqz p1, :cond_99

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_99

    .line 54
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedDeltas:Ljava/util/Map;

    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v4, :cond_90

    .line 56
    iget-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v0

    iget-object p3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/ranges/LongRange;

    invoke-virtual {p3}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_92

    :cond_90
    const-wide/16 v0, 0x0

    .line 57
    :goto_92
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 55
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_99
    iput-object v3, p0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    :goto_9b
    return-void
.end method

.method public final output(J)Ljava/lang/Long;
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 64
    iget-object v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstOutputUs:Ljava/lang/Long;

    if-nez v3, :cond_e

    .line 65
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstOutputUs:Ljava/lang/Long;

    .line 67
    :cond_e
    iget-object v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstInputUs:Ljava/lang/Long;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->firstOutputUs:Ljava/lang/Long;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    .line 69
    iget-object v5, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 93
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v11, " deltaUs="

    const-string v12, " newOutputTimeUs="

    const-string v13, "OUTPUT: Rendering! outputTimeUs="

    const/4 v14, 0x0

    if-eqz v8, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/ranges/LongRange;

    .line 70
    iget-object v15, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedDeltas:Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    add-long/2addr v6, v15

    .line 71
    invoke-virtual {v8, v3, v4}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v10, v9, v14}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug$default(Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    iget-boolean v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->continuous:Z

    if-eqz v3, :cond_83

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_87

    .line 75
    :cond_83
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_87
    return-object v1

    .line 78
    :cond_88
    iget-object v5, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    const/4 v8, 0x1

    if-eqz v5, :cond_e8

    .line 79
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v4}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 80
    iget-object v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v8

    if-eqz v3, :cond_b8

    .line 81
    iget-object v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->pendingRange:Lkotlin/ranges/LongRange;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/ranges/LongRange;->getFirst()J

    move-result-wide v3

    iget-object v5, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->closedRanges:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/ranges/LongRange;

    invoke-virtual {v5}, Lkotlin/ranges/LongRange;->getLast()J

    move-result-wide v15

    sub-long/2addr v3, v15

    add-long/2addr v6, v3

    .line 83
    :cond_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v1, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v10, v9, v14}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug$default(Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    iget-boolean v3, v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->continuous:Z

    if-eqz v3, :cond_e3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_e7

    .line 86
    :cond_e3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_e7
    return-object v1

    :cond_e8
    const-string v3, "OUTPUT: SKIPPING! outputTimeUs="

    .line 89
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->debug(Ljava/lang/String;Z)V

    return-object v14
.end method
