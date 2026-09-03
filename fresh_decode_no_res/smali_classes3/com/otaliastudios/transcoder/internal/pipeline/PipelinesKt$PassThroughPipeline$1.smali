.class final Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;
.super Lkotlin/jvm/internal/Lambda;
.source "pipelines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->PassThroughPipeline(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
        "*",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field final synthetic $sink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field final synthetic $source:Lcom/otaliastudios/transcoder/source/DataSource;

.field final synthetic $track:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/sink/DataSink;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$track:Lcom/otaliastudios/transcoder/common/TrackType;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "*",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/Reader;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/transcoder/internal/data/Reader;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 31
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$track:Lcom/otaliastudios/transcoder/common/TrackType;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/data/ReaderTimer;-><init>(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 30
    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelineKt;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/Bridge;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v2, v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "source.getTrackFormat(track)!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/otaliastudios/transcoder/internal/data/Bridge;-><init>(Landroid/media/MediaFormat;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 30
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/Writer;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->$track:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/data/Writer;-><init>(Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 30
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;->invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method
