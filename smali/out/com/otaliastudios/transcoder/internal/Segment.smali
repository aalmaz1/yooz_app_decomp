.class public final Lcom/otaliastudios/transcoder/internal/Segment;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/Segment;",
        "",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "index",
        "",
        "pipeline",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        "(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/internal/pipeline/Pipeline;)V",
        "getIndex",
        "()I",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "",
        "getType",
        "()Lcom/otaliastudios/transcoder/common/TrackType;",
        "advance",
        "",
        "canAdvance",
        "release",
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
.field private final index:I

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final pipeline:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

.field private state:Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/internal/pipeline/Pipeline;)V
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pipeline"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Segment;->type:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 10
    iput p2, p0, Lcom/otaliastudios/transcoder/internal/Segment;->index:I

    .line 11
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Segment;->pipeline:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    .line 14
    new-instance p3, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Segment("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Segment;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method


# virtual methods
.method public final advance()Z
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->pipeline:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->execute()Lcom/otaliastudios/transcoder/internal/pipeline/State;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->state:Lcom/otaliastudios/transcoder/internal/pipeline/State;

    .line 19
    instance-of v0, v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    return v0
.end method

.method public final canAdvance()Z
    .registers 4

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "canAdvance(): state="

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/Segment;->state:Lcom/otaliastudios/transcoder/internal/pipeline/State;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->state:Lcom/otaliastudios/transcoder/internal/pipeline/State;

    if-eqz v0, :cond_18

    instance-of v0, v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public final getIndex()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->index:I

    return v0
.end method

.method public final getType()Lcom/otaliastudios/transcoder/common/TrackType;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->type:Lcom/otaliastudios/transcoder/common/TrackType;

    return-object v0
.end method

.method public final release()V
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Segment;->pipeline:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->release()V

    return-void
.end method
