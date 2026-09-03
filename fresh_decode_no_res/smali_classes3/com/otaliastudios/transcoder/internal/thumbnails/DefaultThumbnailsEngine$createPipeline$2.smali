.class final Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultThumbnailsEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
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
.field final synthetic $outputFormat:Landroid/media/MediaFormat;

.field final synthetic $positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source:Lcom/otaliastudios/transcoder/source/DataSource;

.field final synthetic $stubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:Lcom/otaliastudios/transcoder/common/TrackType;

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;Ljava/util/List;Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;Landroid/media/MediaFormat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$positions:Ljava/util/List;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    iput-object p5, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$outputFormat:Landroid/media/MediaFormat;

    iput-object p6, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$stubs:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "*",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/Seeker;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$positions:Ljava/util/List;

    new-instance v3, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;

    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$stubs:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;-><init>(Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/data/Seeker;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 98
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/Reader;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/data/Reader;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 97
    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelineKt;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v2, v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "source.getTrackFormat(type)!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;-><init>(Landroid/media/MediaFormat;Z)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 97
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {v2}, Lcom/otaliastudios/transcoder/source/DataSource;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    invoke-static {v3}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->access$getRotation$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)I

    move-result v3

    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$outputFormat:Landroid/media/MediaFormat;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;-><init>(IILandroid/media/MediaFormat;Z)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 97
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 101
    new-instance v7, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$outputFormat:Landroid/media/MediaFormat;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$positions:Ljava/util/List;

    const-wide/32 v4, 0xc350

    .line 97
    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;

    iget-object v6, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->$stubs:Ljava/util/List;

    iget-object v8, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    invoke-direct {v1, v6, v8}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;-><init>(Ljava/util/List;Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v1, v7

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;-><init>(Landroid/media/MediaFormat;Ljava/util/List;JLkotlin/jvm/functions/Function2;)V

    check-cast v7, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 97
    invoke-virtual {v0, v7}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method
