.class public final Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;
.super Ljava/lang/Object;
.source "pipelines.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a@\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u001a\u0008\u0010\u0010\u001a\u00020\u0001H\u0000\u001a(\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001aP\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u001a8\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "AudioPipeline",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        "source",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "sink",
        "Lcom/otaliastudios/transcoder/sink/DataSink;",
        "interpolator",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "format",
        "Landroid/media/MediaFormat;",
        "codecs",
        "Lcom/otaliastudios/transcoder/internal/Codecs;",
        "audioStretcher",
        "Lcom/otaliastudios/transcoder/stretch/AudioStretcher;",
        "audioResampler",
        "Lcom/otaliastudios/transcoder/resample/AudioResampler;",
        "EmptyPipeline",
        "PassThroughPipeline",
        "track",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "RegularPipeline",
        "videoRotation",
        "",
        "VideoPipeline",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final AudioPipeline(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 10

    .line 76
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    new-instance v9, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$AudioPipeline$1;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/sink/DataSink;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const-string v1, "Audio"

    invoke-virtual {v0, v1, v9}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public static final EmptyPipeline()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 4

    .line 22
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Empty"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release$default(Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public static final PassThroughPipeline(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 3

    const-string v0, "track"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PassThrough("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;

    invoke-direct {v2, p1, p0, p3, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$PassThroughPipeline$1;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/sink/DataSink;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    return-object p0
.end method

.method public static final RegularPipeline(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 7

    const-string v0, "track"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codecs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioStretcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioResampler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p6, 0x2

    if-ne p0, p6, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p8

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->AudioPipeline(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 47
    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->VideoPipeline(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;I)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final VideoPipeline(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;I)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 9

    .line 58
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    new-instance v8, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$VideoPipeline$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt$VideoPipeline$1;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/time/TimeInterpolator;ILandroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/sink/DataSink;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const-string p0, "Video"

    invoke-virtual {v0, p0, v8}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    return-object p0
.end method
