.class public final Lcom/otaliastudios/transcoder/internal/Timer;
.super Ljava/lang/Object;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\ncom/otaliastudios/transcoder/internal/Timer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,95:1\n1798#2,4:96\n1798#2,4:100\n775#2:104\n786#2:105\n1858#2,2:106\n787#2,2:108\n1860#2:110\n789#2:111\n355#3,7:112\n*S KotlinDebug\n*F\n+ 1 Timer.kt\ncom/otaliastudios/transcoder/internal/Timer\n*L\n18#1:96,4\n23#1:100,4\n63#1:104\n63#1:105\n63#1:106,2\n63#1:108,2\n63#1:110\n63#1:111\n71#1:112,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\nJ%\u0010 \u001a\u0004\u0018\u00010\r2\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0002\u0010!J\u001a\u0010\u000c\u001a\u00020\r*\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0008\u001a\u00020\nH\u0002J\u001a\u0010\u0016\u001a\u00020\r*\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010\u0008\u001a\u00020\nH\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0010\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0\u0012\u0012\u0004\u0012\u00020\u00030\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/Timer;",
        "",
        "interpolator",
        "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
        "sources",
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "tracks",
        "Lcom/otaliastudios/transcoder/internal/Tracks;",
        "current",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "",
        "(Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V",
        "durationUs",
        "",
        "getDurationUs",
        "()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "interpolators",
        "",
        "Lkotlin/Pair;",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "positionUs",
        "getPositionUs",
        "progress",
        "",
        "getProgress",
        "totalDurationUs",
        "getTotalDurationUs",
        "()J",
        "type",
        "index",
        "localize",
        "(Lcom/otaliastudios/transcoder/common/TrackType;IJ)Ljava/lang/Long;",
        "",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
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
.field private final current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final durationUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field private final interpolators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final positionUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final progress:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final sources:Lcom/otaliastudios/transcoder/internal/DataSources;

.field private final tracks:Lcom/otaliastudios/transcoder/internal/Tracks;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/time/TimeInterpolator;",
            "Lcom/otaliastudios/transcoder/internal/DataSources;",
            "Lcom/otaliastudios/transcoder/internal/Tracks;",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interpolator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    .line 11
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/Timer;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    .line 12
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Timer;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    .line 13
    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/Timer;->current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 16
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p2, "Timer"

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 27
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Timer$positionUs$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Timer$positionUs$2;-><init>(Lcom/otaliastudios/transcoder/internal/Timer;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->positionUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 35
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Timer$durationUs$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Timer$durationUs$2;-><init>(Lcom/otaliastudios/transcoder/internal/Timer;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 49
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Timer$progress$1;-><init>(Lcom/otaliastudios/transcoder/internal/Timer;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->progress:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Timer;->interpolators:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$durationUs(Lcom/otaliastudios/transcoder/internal/Timer;Ljava/util/List;I)J
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs(Ljava/util/List;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getCurrent$p(Lcom/otaliastudios/transcoder/internal/Timer;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object p0
.end method

.method public static final synthetic access$getInterpolator$p(Lcom/otaliastudios/transcoder/internal/Timer;)Lcom/otaliastudios/transcoder/time/TimeInterpolator;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->interpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-object p0
.end method

.method public static final synthetic access$getInterpolators$p(Lcom/otaliastudios/transcoder/internal/Timer;)Ljava/util/Map;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->interpolators:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSources$p(Lcom/otaliastudios/transcoder/internal/Timer;)Lcom/otaliastudios/transcoder/internal/DataSources;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    return-object p0
.end method

.method public static final synthetic access$getTracks$p(Lcom/otaliastudios/transcoder/internal/Timer;)Lcom/otaliastudios/transcoder/internal/Tracks;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    return-object p0
.end method

.method public static final synthetic access$positionUs(Lcom/otaliastudios/transcoder/internal/Timer;Ljava/util/List;I)J
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/Timer;->positionUs(Ljava/util/List;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private final durationUs(Ljava/util/List;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;I)J"
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1a
    check-cast v3, Lcom/otaliastudios/transcoder/source/DataSource;

    if-ge v2, p2, :cond_23

    .line 20
    invoke-interface {v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getPositionUs()J

    move-result-wide v2

    goto :goto_27

    :cond_23
    invoke-interface {v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v2

    :goto_27
    add-long/2addr v0, v2

    move v2, v4

    goto :goto_9

    :cond_2a
    return-wide v0
.end method

.method private final positionUs(Ljava/util/List;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;I)J"
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1a
    check-cast v3, Lcom/otaliastudios/transcoder/source/DataSource;

    if-gt v2, p2, :cond_23

    .line 24
    invoke-interface {v3}, Lcom/otaliastudios/transcoder/source/DataSource;->getPositionUs()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_23
    move v2, v4

    goto :goto_9

    :cond_25
    return-wide v0
.end method


# virtual methods
.method public final getDurationUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getPositionUs()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->positionUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getProgress()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->progress:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getTotalDurationUs()J
    .registers 6

    .line 44
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Tracks;->getActive()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getHasVideo()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_1f

    :cond_1e
    move-wide v3, v1

    .line 45
    :goto_1f
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Tracks;->getActive()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getHasAudio()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 46
    :cond_37
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final interpolator(Lcom/otaliastudios/transcoder/common/TrackType;I)Lcom/otaliastudios/transcoder/time/TimeInterpolator;
    .registers 6

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->interpolators:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 72
    new-instance v2, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/otaliastudios/transcoder/internal/Timer$interpolator$1$1;-><init>(ILcom/otaliastudios/transcoder/internal/Timer;Lcom/otaliastudios/transcoder/common/TrackType;)V

    check-cast v2, Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_1f
    check-cast v2, Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-object v2
.end method

.method public final localize(Lcom/otaliastudios/transcoder/common/TrackType;IJ)Ljava/lang/Long;
    .registers 13

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Tracks;->getActive()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->has(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    .line 62
    :cond_13
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_39

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 108
    :cond_39
    move-object v7, v5

    check-cast v7, Lcom/otaliastudios/transcoder/source/DataSource;

    if-ge v4, p2, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    move v4, v3

    :goto_41
    if-eqz v4, :cond_46

    .line 63
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_46
    move v4, v6

    goto :goto_28

    .line 111
    :cond_48
    check-cast v2, Ljava/util/List;

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0, v2, v0}, Lcom/otaliastudios/transcoder/internal/Timer;->durationUs(Ljava/util/List;I)J

    move-result-wide v2

    sub-long/2addr p3, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_57

    return-object v1

    .line 67
    :cond_57
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Timer;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_6c

    return-object v1

    .line 68
    :cond_6c
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
