.class final Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;
.super Ljava/lang/Object;
.source "TrackMap.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u0008H\u0096\u0002\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0008H\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00018\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;",
        "T",
        "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;",
        "video",
        "audio",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "map",
        "",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "get",
        "type",
        "(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;",
        "has",
        "",
        "set",
        "",
        "value",
        "(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V",
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
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 50
    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public audioOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public getAudio()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHasAudio()Z
    .locals 1

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Z

    move-result v0

    return v0
.end method

.method public getHasVideo()Z
    .locals 1

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Z

    move-result v0

    return v0
.end method

.method public getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")TT;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getSize(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)I

    move-result v0

    return v0
.end method

.method public getVideo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->getVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->iterator(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->reset(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAudio(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->setAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->setVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;)V

    return-void
.end method

.method public videoOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;->videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
