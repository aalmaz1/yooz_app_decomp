.class public final Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion;
.super Ljava/lang/Object;
.source "TranscodeEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u000c\u0010\t\u001a\u00020\n*\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion;",
        "",
        "()V",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "transcode",
        "",
        "options",
        "Lcom/otaliastudios/transcoder/TranscoderOptions;",
        "isInterrupted",
        "",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion;-><init>()V

    return-void
.end method

.method private final isInterrupted(Ljava/lang/Throwable;)Z
    .registers 4

    .line 21
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    .line 23
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_1d

    :cond_19
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v1

    :goto_1d
    return v1
.end method


# virtual methods
.method public final transcode(Lcom/otaliastudios/transcoder/TranscoderOptions;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v0

    const-string v1, "transcode(): called..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;-><init>(Lcom/otaliastudios/transcoder/TranscoderOptions;)V

    const/4 v1, 0x0

    .line 33
    :try_start_14
    new-instance v3, Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-direct {v3, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;-><init>(Lcom/otaliastudios/transcoder/TranscoderOptions;)V

    .line 34
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getDataSink()Lcom/otaliastudios/transcoder/sink/DataSink;

    move-result-object v4

    .line 36
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getVideoTrackStrategy()Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getAudioTrackStrategy()Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    move-result-object v5

    .line 35
    invoke-static {v2, v5}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v5

    .line 39
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getValidator()Lcom/otaliastudios/transcoder/validator/Validator;

    move-result-object v6

    .line 40
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getVideoRotation()I

    move-result v7

    .line 41
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getTimeInterpolator()Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    move-result-object v10

    .line 42
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getAudioStretcher()Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    move-result-object v8

    .line 43
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getAudioResampler()Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-result-object v9

    .line 32
    new-instance p1, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    const-string v2, "dataSink"

    .line 34
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "validator"

    .line 39
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audioStretcher"

    .line 42
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audioResampler"

    .line 43
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "timeInterpolator"

    .line 41
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    .line 32
    invoke-direct/range {v2 .. v10}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/sink/DataSink;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/validator/Validator;ILcom/otaliastudios/transcoder/stretch/AudioStretcher;Lcom/otaliastudios/transcoder/resample/AudioResampler;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_5e} :catch_85
    .catchall {:try_start_14 .. :try_end_5e} :catchall_83

    .line 45
    :try_start_5e
    move-object v1, p1

    check-cast v1, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->validate()Z

    move-result v1

    if-nez v1, :cond_6c

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchSuccess(I)V

    goto :goto_7d

    .line 48
    :cond_6c
    move-object v1, p1

    check-cast v1, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    new-instance v2, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion$transcode$1;

    invoke-direct {v2, v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion$transcode$1;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->transcode(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchSuccess(I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_7d} :catch_81
    .catchall {:try_start_5e .. :try_end_7d} :catchall_b6

    .line 63
    :cond_7d
    :goto_7d
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->cleanup()V

    goto :goto_a2

    :catch_81
    move-exception v1

    goto :goto_89

    :catchall_83
    move-exception v0

    goto :goto_b8

    :catch_85
    move-exception p1

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    .line 54
    :goto_89
    :try_start_89
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {p0, v2}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine$Companion;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 55
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v2

    const-string v3, "Transcode canceled."

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchCancel()V

    if-nez p1, :cond_7d

    :goto_a2
    return-void

    .line 58
    :cond_a3
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v2

    const-string v3, "Unexpected error while transcoding."

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchFailure(Ljava/lang/Throwable;)V

    .line 60
    throw v1
    :try_end_b6
    .catchall {:try_start_89 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception v0

    move-object v1, p1

    :goto_b8
    if-nez v1, :cond_bb

    goto :goto_be

    .line 63
    :cond_bb
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeEngine;->cleanup()V

    :goto_be
    throw v0
.end method
