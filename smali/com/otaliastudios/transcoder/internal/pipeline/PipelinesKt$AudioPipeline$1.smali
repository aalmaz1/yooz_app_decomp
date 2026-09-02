.class final Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;
.super Lkotlin/jvm/internal/Lambda;
.source "pipelines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->AudioPipeline(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
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
.field final synthetic $audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

.field final synthetic $audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field final synthetic $codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

.field final synthetic $format:Landroid/media/MediaFormat;

.field final synthetic $interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field final synthetic $sink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field final synthetic $source:Lcom/otaliastudios/transcoder/source/DataSource;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/sink/DataSink;)V
    .registers 8

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    iput-object p5, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$format:Landroid/media/MediaFormat;

    iput-object p6, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

    iput-object p7, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder<",
            "*",
            "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/Reader;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    sget-object v2, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/transcoder/internal/data/Reader;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 78
    new-instance v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$source:Lcom/otaliastudios/transcoder/source/DataSource;

    sget-object v3, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v2, v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "source.getTrackFormat(TrackType.AUDIO)!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;-><init>(Landroid/media/MediaFormat;Z)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 77
    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelineKt;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;

    sget-object v2, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/codec/DecoderTimer;-><init>(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 77
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$format:Landroid/media/MediaFormat;

    invoke-direct {v1, v2, v3, v4}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;-><init>(Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Landroid/media/MediaFormat;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 77
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

    sget-object v3, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 77
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/Writer;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->$sink:Lcom/otaliastudios/transcoder/sink/DataSink;

    sget-object v3, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/data/Writer;-><init>(Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    .line 77
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;->plus(Lcom/otaliastudios/transcoder/internal/pipeline/Step;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;->invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;

    move-result-object v0

    return-object v0
.end method
