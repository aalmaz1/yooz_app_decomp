.class public final Lcom/otaliastudios/transcoder/internal/Timer$progress$1;
.super Ljava/lang/Object;
.source "Timer.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/utils/TrackMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/Timer;-><init>(Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/otaliastudios/transcoder/internal/Timer$progress$1",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "",
        "get",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Double;",
        "has",
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
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/Timer;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/Timer;)V
    .registers 2

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->this$0:Lcom/otaliastudios/transcoder/internal/Timer;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioOrNull()Ljava/lang/Double;
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic audioOrNull()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->audioOrNull()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Double;
    .registers 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->this$0:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Timer;->getPositionUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 53
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->this$0:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/Timer;->getDurationUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2e

    const-wide/16 v0, 0x0

    goto :goto_31

    :cond_2e
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 54
    :goto_31
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getAudio()Ljava/lang/Double;
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic getAudio()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->getAudio()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getHasAudio()Z
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Double;
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public bridge synthetic getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getSize(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)I

    move-result v0

    return v0
.end method

.method public getVideo()Ljava/lang/Double;
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic getVideo()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->getVideo()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public has(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->iterator(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public videoOrNull()Ljava/lang/Double;
    .registers 2

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic videoOrNull()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;->videoOrNull()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
