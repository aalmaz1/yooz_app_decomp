.class public final Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;,
        Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\ncom/otaliastudios/transcoder/internal/pipeline/Pipeline\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1849#2,2:83\n1858#2,3:85\n1849#2,2:88\n*S KotlinDebug\n*F\n+ 1 Pipeline.kt\ncom/otaliastudios/transcoder/internal/pipeline/Pipeline\n*L\n15#1:83,2\n25#1:85,3\n47#1:88,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0002\u0019\u001aB9\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012(\u0010\u0004\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u00080\u0005\u00a2\u0006\u0002\u0010\tJ\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011JJ\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\r2\"\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u00082\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0012R0\u0010\u0004\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00070\u0006j\u0002`\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        "",
        "name",
        "",
        "chain",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/AnyStep;",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "headIndex",
        "",
        "headState",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "execute",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "",
        "executeStep",
        "previous",
        "step",
        "fresh",
        "",
        "release",
        "Builder",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;


# instance fields
.field private final chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private headIndex:I

.field private headState:Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pipeline("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 11
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p1, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headState:Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    .line 15
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->zipWithNext(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 15
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 16
    invoke-interface {p2}, Lcom/otaliastudios/transcoder/internal/pipeline/Step;->getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/Step;->initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final executeStep(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Lcom/otaliastudios/transcoder/internal/pipeline/Step;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            "Ljava/lang/Object;",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-interface {p2, p1, p3}, Lcom/otaliastudios/transcoder/internal/pipeline/Step;->step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;

    move-result-object p3

    .line 53
    instance-of v0, p3, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p3, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->executeStep(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Lcom/otaliastudios/transcoder/internal/pipeline/Step;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    move-result-object p3

    goto :goto_0

    .line 55
    :cond_1
    instance-of p1, p3, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    :goto_0
    return-object p3

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final execute()Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute(): starting. head="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " steps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headIndex:I

    .line 24
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headState:Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    .line 25
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 86
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v5, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    if-ge v4, v0, :cond_2

    :cond_1
    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v3

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 28
    :goto_3
    invoke-direct {p0, v1, v5, v7}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->executeStep(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Lcom/otaliastudios/transcoder/internal/pipeline/Step;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    move-result-object v1

    const/16 v7, 0x2f

    const-string v8, " (#"

    if-nez v1, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute(): step "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/otaliastudios/transcoder/internal/pipeline/StepKt;->getName(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is waiting. headState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headState:Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " headIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object v0

    .line 33
    :cond_5
    instance-of v9, v1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz v9, :cond_1

    .line 34
    iget-object v9, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "execute(): EOS from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/otaliastudios/transcoder/internal/pipeline/StepKt;->getName(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 35
    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headState:Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    .line 36
    iput v6, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->headIndex:I

    goto/16 :goto_1

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_4

    .line 41
    :cond_7
    instance-of v0, v1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_4

    .line 42
    :cond_8
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    :goto_4
    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->chain:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 88
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 47
    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Step;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method
