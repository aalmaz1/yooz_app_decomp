.class public final Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;
.super Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;
.source "ReaderTimer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/DataStep<",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "track",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "interpolator",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V",
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
.field private final interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field private final track:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V
    .registers 4

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/DataStep;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 10
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of p2, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1

    .line 14
    :cond_c
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->getChunk()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    move-result-object p2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;->track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->getChunk()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    move-result-object v2

    iget-wide v2, v2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/otaliastudios/transcoder/time/TimeInterpolator;->interpolate(Lcom/otaliastudios/transcoder/common/TrackType;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    .line 15
    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
