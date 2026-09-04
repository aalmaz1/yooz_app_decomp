.class public final Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;
.super Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;
.source "DefaultThumbnailsEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;,
        Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultThumbnailsEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultThumbnailsEngine.kt\ncom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1358#2:141\n1444#2,2:142\n1547#2:144\n1618#2,3:145\n1446#2,3:148\n1043#2:151\n1601#2,9:152\n1849#2:161\n1850#2:164\n1610#2:165\n1547#2:166\n1618#2,3:167\n1#3:162\n1#3:163\n*S KotlinDebug\n*F\n+ 1 DefaultThumbnailsEngine.kt\ncom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine\n*L\n66#1:141\n66#1:142,2\n68#1:144\n68#1:145,3\n66#1:148,3\n69#1:151\n85#1:152,9\n85#1:161\n85#1:164\n85#1:165\n94#1:166\n94#1:167,3\n85#1:163\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 &2\u00020\u0001:\u0002&\'B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u001b\u001a\u00020\u0014H\u0016J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u001c\u0010%\u001a\u00020\u00142\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\n0\u000f0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;",
        "Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;",
        "dataSources",
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "rotation",
        "",
        "resizer",
        "Lcom/otaliastudios/transcoder/resize/Resizer;",
        "requests",
        "",
        "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
        "(Lcom/otaliastudios/transcoder/internal/DataSources;ILcom/otaliastudios/transcoder/resize/Resizer;Ljava/util/List;)V",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "positions",
        "Lkotlin/Pair;",
        "",
        "progress",
        "Lkotlin/Function1;",
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
        "",
        "segments",
        "Lcom/otaliastudios/transcoder/internal/Segments;",
        "timer",
        "Lcom/otaliastudios/transcoder/internal/Timer;",
        "tracks",
        "Lcom/otaliastudios/transcoder/internal/Tracks;",
        "cleanup",
        "createPipeline",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "index",
        "status",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        "outputFormat",
        "Landroid/media/MediaFormat;",
        "thumbnails",
        "Companion",
        "Stub",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Companion;

.field private static final PROGRESS_LOOPS:J

.field private static final WAIT_MS:J


# instance fields
.field private final dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final positions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private progress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:I

.field private final segments:Lcom/otaliastudios/transcoder/internal/Segments;

.field private final timer:Lcom/otaliastudios/transcoder/internal/Timer;

.field private final tracks:Lcom/otaliastudios/transcoder/internal/Tracks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Companion;

    const-wide/16 v0, 0xa

    .line 137
    sput-wide v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->WAIT_MS:J

    .line 138
    sput-wide v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->PROGRESS_LOOPS:J

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/internal/DataSources;ILcom/otaliastudios/transcoder/resize/Resizer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/DataSources;",
            "I",
            "Lcom/otaliastudios/transcoder/resize/Resizer;",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resizer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    .line 41
    iput p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->rotation:I

    .line 46
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "ThumbnailsEngine"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 50
    new-instance v1, Lcom/otaliastudios/transcoder/internal/Tracks;

    .line 51
    new-instance v2, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    invoke-direct {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>()V

    const/16 v3, 0x78

    .line 52
    invoke-virtual {v2, v3}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->frameRate(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p3}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object p3

    .line 55
    new-instance v2, Lcom/otaliastudios/transcoder/strategy/RemoveTrackStrategy;

    invoke-direct {v2}, Lcom/otaliastudios/transcoder/strategy/RemoveTrackStrategy;-><init>()V

    .line 50
    invoke-static {p3, v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p3

    const/4 v2, 0x1

    invoke-direct {v1, p3, p1, p2, v2}, Lcom/otaliastudios/transcoder/internal/Tracks;-><init>(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/internal/DataSources;IZ)V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    .line 58
    new-instance p2, Lcom/otaliastudios/transcoder/internal/Segments;

    new-instance p3, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$segments$1;

    invoke-direct {p3, p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$segments$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function4;

    invoke-direct {p2, p1, v1, p3}, Lcom/otaliastudios/transcoder/internal/Segments;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lkotlin/jvm/functions/Function4;)V

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    .line 60
    new-instance p3, Lcom/otaliastudios/transcoder/internal/Timer;

    new-instance v2, Lcom/otaliastudios/transcoder/time/DefaultTimeInterpolator;

    invoke-direct {v2}, Lcom/otaliastudios/transcoder/time/DefaultTimeInterpolator;-><init>()V

    check-cast v2, Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/Segments;->getCurrentIndex()Lcom/otaliastudios/transcoder/internal/utils/MutableTrackMap;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-direct {p3, v2, p1, v1, p2}, Lcom/otaliastudios/transcoder/internal/Timer;-><init>(Lcom/otaliastudios/transcoder/time/TimeInterpolator;Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    const-string p1, "Created Tracks, Segments, Timer..."

    .line 63
    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 66
    check-cast p4, Ljava/lang/Iterable;

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 142
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 143
    check-cast p3, Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;

    .line 67
    iget-object p4, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {p4}, Lcom/otaliastudios/transcoder/internal/Timer;->getTotalDurationUs()J

    move-result-wide v0

    .line 68
    invoke-interface {p3, v0, v1}, Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;->locate(J)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 145
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 68
    check-cast v0, Ljava/lang/Iterable;

    .line 148
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 150
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 141
    check-cast p1, Ljava/lang/Iterable;

    .line 151
    new-instance p2, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$special$$inlined$sortedBy$1;

    invoke-direct {p2}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$special$$inlined$sortedBy$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->positions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$createPipeline(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLog$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)Lcom/otaliastudios/transcoder/internal/utils/Logger;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getProgress$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->progress:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getRotation$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->rotation:I

    return p0
.end method

.method private final createPipeline(Lcom/otaliastudios/transcoder/common/TrackType;ILcom/otaliastudios/transcoder/common/TrackStatus;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    .line 84
    iget-object v1, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Creating pipeline #"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". absoluteUs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->positions:Ljava/util/List;

    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v4, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$1;

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 85
    iget-object v1, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->positions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 161
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 160
    check-cast v4, Lkotlin/Pair;

    .line 85
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;

    .line 86
    iget-object v4, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->timer:Lcom/otaliastudios/transcoder/internal/Timer;

    invoke-virtual {v4, v3, v0, v10, v11}, Lcom/otaliastudios/transcoder/internal/Timer;->localize(Lcom/otaliastudios/transcoder/common/TrackType;IJ)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 87
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    new-instance v5, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;-><init>(Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;JJ)V

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 160
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 152
    check-cast v2, Ljava/util/Collection;

    .line 88
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 90
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/otaliastudios/transcoder/internal/pipeline/PipelinesKt;->EmptyPipeline()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object v0

    return-object v0

    .line 91
    :cond_3
    iget-object v1, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v1, v3}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/source/DataSource;

    new-instance v2, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$source$1;

    invoke-direct {v2, v6}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$source$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/EosKt;->forcingEos(Lcom/otaliastudios/transcoder/source/DataSource;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/source/DataSource;

    move-result-object v1

    .line 94
    move-object v2, v6

    check-cast v2, Ljava/lang/Iterable;

    .line 166
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 167
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 168
    check-cast v5, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;

    .line 94
    invoke-virtual {v5}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getLocalizedUs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_4
    move-object v2, v4

    check-cast v2, Ljava/util/List;

    .line 95
    iget-object v4, v7, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Requests for step #"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3f

    const/16 v16, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " [duration="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 96
    sget-object v8, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;

    new-instance v9, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;

    move-object v0, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;Ljava/util/List;Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;Landroid/media/MediaFormat;Ljava/util/List;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const-string v0, "Thumbnails"

    invoke-virtual {v8, v0, v9}, Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Companion;->build$lib_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 132
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Segments;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->dataSources:Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public thumbnails(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->progress:Lkotlin/jvm/functions/Function1;

    .line 119
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/Segments;->next(Lcom/otaliastudios/transcoder/common/TrackType;)Lcom/otaliastudios/transcoder/internal/Segment;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/Segment;->advance()Z

    move-result p1

    :goto_1
    if-nez p1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->segments:Lcom/otaliastudios/transcoder/internal/Segments;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/Segments;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 121
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_0

    .line 126
    sget-wide v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->WAIT_MS:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method
