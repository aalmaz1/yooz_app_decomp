.class final Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTranscodeEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $type:Lcom/otaliastudios/transcoder/common/TrackType;

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;Lcom/otaliastudios/transcoder/common/TrackType;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->access$getTimer$p(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;)Lcom/otaliastudios/transcoder/internal/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Timer;->getPositionUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->$type:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;->access$getTimer$p(Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine;)Lcom/otaliastudios/transcoder/internal/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Timer;->getTotalDurationUs()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/transcode/DefaultTranscodeEngine$createPipeline$source$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
