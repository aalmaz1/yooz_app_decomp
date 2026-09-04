.class public final Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap$DefaultImpls;
.super Ljava/lang/Object;
.source "TrackMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result p0

    return p0
.end method

.method public static getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result p0

    return p0
.end method

.method public static getOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")TT;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSize(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getSize(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)I

    move-result p0

    return p0
.end method

.method public static getVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->iterator(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static reset(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;TT;TT;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p0, v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAudio(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p0, v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVideo(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p0, v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;->set(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/Object;)V

    return-void
.end method

.method public static videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
