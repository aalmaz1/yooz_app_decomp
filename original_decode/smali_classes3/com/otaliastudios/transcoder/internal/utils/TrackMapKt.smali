.class public final Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;
.super Ljava/lang/Object;
.source "TrackMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\u0004\u001a/\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u0001H\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\u0007\u001a!\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\n\u001a+\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\t\"\u0004\u0008\u0000\u0010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u0001H\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "mutableTrackMapOf",
        "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;",
        "T",
        "default",
        "(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;",
        "video",
        "audio",
        "(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;",
        "trackMapOf",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
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
.method public static final mutableTrackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object p0

    return-object p0
.end method

.method public static final mutableTrackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    return-object v0
.end method

.method public static synthetic mutableTrackMapOf$default(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;
    .locals 1

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move-object p1, v0

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->mutableTrackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object p0

    return-object p0
.end method

.method public static final trackMapOf(Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "TT;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p0

    return-object p0
.end method

.method public static final trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/DefaultTrackMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method
