.class public final Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;
.super Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;
.source "DefaultTranscodeEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$Companion;,
        Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTranscodeEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTranscodeEngine.kt\ncom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 /2\u00020\u0001:\u0001/BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J(\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002J\u001c\u0010)\u001a\u00020\u001f2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u001f0+H\u0016J\u0008\u0010-\u001a\u00020.H\u0016R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;",
        "Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;",
        "dataSources",
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "dataSink",
        "Lcom/otaliastudios/transcoder/sink/DataSink;",
        "strategies",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "Lcom/otaliastudios/transcoder/strategy/TrackStrategy;",
        "validator",
        "Lcom/otaliastudios/transcoder/validator/Validator;",
        "videoRotation",
        "",
        "audioStretcher",
        "Lcom/otaliastudios/transcoder/stretch/AudioStretcher;",
        "audioResampler",
        "Lcom/otaliastudios/transcoder/resample/AudioResampler;",
        "interpolator",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/validator/Validator;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V",
        "codecs",
        "Lcom/otaliastudios/transcoder/internal/Codecs;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "segments",
        "Lcom/otaliastudios/transcoder/internal/Segments;",
        "timer",
        "Lcom/otaliastudios/transcoder/internal/Timer;",
        "tracks",
        "Lcom/otaliastudios/transcoder/internal/Tracks;",
        "cleanup",
        "",
        "createPipeline",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "index",
        "status",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        "outputFormat",
        "Landroid/media/MediaFormat;",
        "transcode",
        "progress",
        "Lkotlin/Function1;",
        "",
        "validate",
        "",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$Companion;

.field private static final PROGRESS_LOOPS:J

.field private static final WAIT_MS:J


# instance fields
.field private final audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

.field private final audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field private final codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

.field private final dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field private final dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final segments:Lcom/otaliastudios/transcoder/internal/Segments;

.field private final timer:Lcom/otaliastudios/transcoder/internal/Timer;

.field private final tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

.field private final validator:Lcom/otaliastudios/transcoder/validator/Validator;

.field private final videoRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->Companion:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$Companion;

    const-wide/16 v0, 0xa

    .line 148
    sput-wide v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->WAIT_MS:J

    .line 149
    sput-wide v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->PROGRESS_LOOPS:J

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/validator/Validator;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/DataSources;",
            "Lcom/otaliastudios/transcoder/sink/DataSink;",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/strategy/TrackStrategy;",
            ">;",
            "Lcom/otaliastudios/transcoder/validator/Validator;",
            "I",
            "Lcom/otaliastudios/transcoder/stretch/AudioStretcher;",
            "Lcom/otaliastudios/transcoder/resample/AudioResampler;",
            "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
            ")V"
        }
    .end annotation

    const-string v0, "dataSources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSink"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioStretcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioResampler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    .line 29
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 31
    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    .line 32
    iput p5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->videoRotation:I

    .line 33
    iput-object p6, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 34
    iput-object p7, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    .line 38
    new-instance p4, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p6, "TranscodeEngine"

    invoke-direct {p4, p6}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 40
    new-instance p6, Lcom/otaliastudios/transcoder/internal/Tracks;

    const/4 p7, 0x0

    invoke-direct {p6, p3, p1, p5, p7}, Lcom/otaliastudios/transcoder/internal/Tracks;-><init>(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/internal/DataSources;IZ)V

    iput-object p6, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    .line 42
    new-instance p3, Lcom/otaliastudios/transcoder/internal/Segments;

    new-instance p5, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$segments$1;

    invoke-direct {p5, p0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$segments$1;-><init>(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/jvm/functions/Function4;

    invoke-direct {p3, p1, p6, p5}, Lcom/otaliastudios/transcoder/internal/Segments;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lkotlin/jvm/functions/Function4;)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    .line 44
    new-instance p5, Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {p3}, Lcom/otaliastudios/transcoder/internal/Segments;->getCurrentIndex()Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-direct {p5, p8, p1, p6, v0}, Lcom/otaliastudios/transcoder/internal/Timer;-><init>(Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V

    iput-object p5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    .line 46
    new-instance p5, Lcom/otaliastudios/transcoder/internal/Codecs;

    invoke-virtual {p3}, Lcom/otaliastudios/transcoder/internal/Segments;->getCurrentIndex()Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-direct {p5, p1, p6, p3}, Lcom/otaliastudios/transcoder/internal/Codecs;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V

    iput-object p5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

    const-string p3, "Created Tracks, Segments, Timer..."

    .line 49
    invoke-virtual {p4, p3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 53
    invoke-interface {p2, p7}, Lcom/otaliastudios/transcoder/sink/DataSink;->setOrientation(I)V

    .line 54
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->all()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object p3, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$location$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    if-eqz p1, :cond_95

    .line 56
    aget-wide p7, p1, p7

    const/4 p3, 0x1

    aget-wide v0, p1, p3

    invoke-interface {p2, p7, p8, v0, v1}, Lcom/otaliastudios/transcoder/sink/DataSink;->setLocation(DD)V

    .line 58
    :cond_95
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {p6}, Lcom/otaliastudios/transcoder/internal/Tracks;->getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-interface {p2, p1, p3}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V

    .line 59
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {p6}, Lcom/otaliastudios/transcoder/internal/Tracks;->getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p3

    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-interface {p2, p1, p3}, Lcom/otaliastudios/transcoder/sink/DataSink;->setTrackStatus(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/common/TrackStatus;)V

    const-string p1, "Set up the DataSink..."

    .line 60
    invoke-virtual {p4, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$createPipeline(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;)Lcom/otaliastudios/transcoder/internal/Timer;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    return-object p0
.end method

.method private final createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .registers 15

    .line 69
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createPipeline("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/Timer;->interpolator(Lcom/otaliastudios/transcoder/common/TrackType;I)Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    move-result-object v4

    .line 71
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/source/DataSource;

    new-instance v2, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;

    invoke-direct {v2, p0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/EosKt;->forcingEos(Lcom/otaliastudios/transcoder/source/DataSource;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/source/DataSource;

    move-result-object v2

    .line 77
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    new-instance v3, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;

    invoke-direct {v3, p2, v0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$sink$1;-><init>(ILjava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lcom/otaliastudios/transcoder/internal/utils/EosKt;->ignoringEos(Lcom/otaliastudios/transcoder/sink/DataSink;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/sink/DataSink;

    move-result-object v3

    .line 78
    sget-object p2, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/otaliastudios/transcoder/common/TrackStatus;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_8d

    const/4 p3, 0x2

    if-eq p2, p3, :cond_88

    const/4 p3, 0x3

    if-eq p2, p3, :cond_83

    const/4 p3, 0x4

    if-ne p2, p3, :cond_7d

    .line 83
    iget-object v6, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

    .line 84
    iget v7, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->videoRotation:I

    iget-object v8, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    iget-object v9, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-object v1, p1

    move-object v5, p4

    .line 82
    invoke-static/range {v1 .. v9}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->RegularPipeline(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;Landroid/media/MediaFormat;Lcom/otaliastudios/transcoder/internal/Codecs;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    goto :goto_91

    :cond_7d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 81
    :cond_83
    invoke-static {p1, v2, v3, v4}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->PassThroughPipeline(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    goto :goto_91

    .line 80
    :cond_88
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->EmptyPipeline()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    goto :goto_91

    .line 79
    :cond_8d
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->EmptyPipeline()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p1

    :goto_91
    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .line 140
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Segments;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_1a
    :try_start_1a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/sink/DataSink;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2a

    goto :goto_34

    :catchall_2a
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_34
    :try_start_34
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_44

    goto :goto_4e

    :catchall_44
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_4e
    :try_start_4e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->codecs:Lcom/otaliastudios/transcoder/internal/Codecs;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Codecs;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_5e

    goto :goto_68

    :catchall_5e
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_68
    return-void
.end method

.method public transcode(Lkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transcode(): about to start, durationUs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Timer;->getTotalDurationUs()J

    move-result-wide v2

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Timer;->getDurationUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->audioOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Timer;->getDurationUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->videoOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 112
    :cond_4a
    :goto_4a
    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    sget-object v5, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v4, v5}, Lcom/otaliastudios/transcoder/internal/Segments;->next(Lcom/otaliastudios/transcoder/common/TrackType;)Lcom/otaliastudios/transcoder/internal/Segment;

    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    sget-object v6, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {v5, v6}, Lcom/otaliastudios/transcoder/internal/Segments;->next(Lcom/otaliastudios/transcoder/common/TrackType;)Lcom/otaliastudios/transcoder/internal/Segment;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v4, :cond_5f

    move v4, v6

    goto :goto_63

    .line 114
    :cond_5f
    invoke-virtual {v4}, Lcom/otaliastudios/transcoder/internal/Segment;->advance()Z

    move-result v4

    :goto_63
    if-nez v5, :cond_67

    move v5, v6

    goto :goto_6b

    :cond_67
    invoke-virtual {v5}, Lcom/otaliastudios/transcoder/internal/Segment;->advance()Z

    move-result v5

    :goto_6b
    or-int/2addr v4, v5

    if-nez v4, :cond_77

    .line 115
    iget-object v5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    invoke-virtual {v5}, Lcom/otaliastudios/transcoder/internal/Segments;->hasNext()Z

    move-result v5

    if-nez v5, :cond_77

    const/4 v6, 0x1

    .line 117
    :cond_77
    iget-object v5, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "transcode(): executed step="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " advanced="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " completed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_11c

    if-eqz v6, :cond_b6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/sink/DataSink;->stop()V

    return-void

    :cond_b6
    if-nez v4, :cond_bd

    .line 126
    sget-wide v4, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->WAIT_MS:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_bd
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 129
    sget-wide v4, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->PROGRESS_LOOPS:J

    rem-long v4, v2, v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_4a

    .line 130
    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v4}, Lcom/otaliastudios/transcoder/internal/Timer;->getProgress()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v4

    invoke-interface {v4}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 131
    iget-object v6, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v6}, Lcom/otaliastudios/transcoder/internal/Timer;->getProgress()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v6

    invoke-interface {v6}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 132
    iget-object v8, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "transcode(): got progress, video="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " audio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    add-double/2addr v6, v4

    .line 133
    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v4}, Lcom/otaliastudios/transcoder/internal/Tracks;->getActive()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v4

    invoke-interface {v4}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getSize()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4a

    .line 119
    :cond_11c
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public validate()Z
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/Tracks;->getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/common/TrackStatus;

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Tracks;->getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/transcoder/validator/Validator;->validate(Lcom/otaliastudios/transcoder/common/TrackStatus;Lcom/otaliastudios/transcoder/common/TrackStatus;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 90
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "Validator has decided that the input is fine and transcoding is not necessary."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_29
    const/4 v0, 0x1

    return v0
.end method
