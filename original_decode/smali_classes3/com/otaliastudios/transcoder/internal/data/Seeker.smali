.class public final Lcom/otaliastudios/transcoder/internal/data/Seeker;
.super Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;
.source "Seeker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep<",
        "Lkotlin/Unit;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lkotlin/Unit;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ$\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000bH\u0016R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/Seeker;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "source",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "positions",
        "",
        "",
        "seek",
        "Lkotlin/Function1;",
        "",
        "(Lcom/otaliastudios/transcoder/source/DataSource;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "channel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "",
        "step",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "fresh",
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

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final seek:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/otaliastudios/transcoder/source/DataSource;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seek"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    .line 14
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->seek:Lkotlin/jvm/functions/Function1;

    .line 17
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p3, "Seeker"

    invoke-direct {p1, p3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 18
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    .line 19
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->positions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/data/Seeker;->getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

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
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->positions:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 23
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->seek:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->positions:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->positions:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Seeking to next position "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->positions:Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 26
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/Seeker;->source:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {p2, v0, v1}, Lcom/otaliastudios/transcoder/source/DataSource;->seekTo(J)J

    .line 31
    :cond_0
    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
