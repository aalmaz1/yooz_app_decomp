.class public final Lcom/otaliastudios/transcoder/internal/Tracks;
.super Ljava/lang/Object;
.source "Tracks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tracks.kt\ncom/otaliastudios/transcoder/internal/Tracks\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1#2:84\n1#2:95\n1601#3,9:85\n1849#3:94\n1850#3:96\n1610#3:97\n*S KotlinDebug\n*F\n+ 1 Tracks.kt\ncom/otaliastudios/transcoder/internal/Tracks\n*L\n66#1:95\n66#1:85,9\n66#1:94\n66#1:96\n66#1:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nH\u0002J4\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\r0\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eH\u0002J \u0010 \u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0008H\u0002R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/Tracks;",
        "",
        "strategies",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "Lcom/otaliastudios/transcoder/strategy/TrackStrategy;",
        "sources",
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "videoRotation",
        "",
        "forceCompression",
        "",
        "(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/internal/DataSources;IZ)V",
        "active",
        "Lcom/otaliastudios/transcoder/common/TrackStatus;",
        "getActive",
        "()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "all",
        "getAll",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "outputFormats",
        "Landroid/media/MediaFormat;",
        "getOutputFormats",
        "resolveAudioStatus",
        "status",
        "resolveTrack",
        "Lkotlin/Pair;",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "strategy",
        "",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "resolveVideoStatus",
        "rotation",
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
.field private final active:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final all:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final outputFormats:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/internal/DataSources;IZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/strategy/TrackStrategy;",
            ">;",
            "Lcom/otaliastudios/transcoder/internal/DataSources;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "strategies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "Tracks"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 27
    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/DataSources;->audioOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v1, v2, v3}, Lcom/otaliastudios/transcoder/internal/Tracks;->resolveTrack(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;Ljava/util/List;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/common/TrackStatus;

    .line 28
    sget-object v3, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/DataSources;->videoOrNull()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, v3, p1, p2}, Lcom/otaliastudios/transcoder/internal/Tracks;->resolveTrack(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;Ljava/util/List;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaFormat;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/common/TrackStatus;

    .line 30
    invoke-direct {p0, p1, p4, p3}, Lcom/otaliastudios/transcoder/internal/Tracks;->resolveVideoStatus(Lcom/otaliastudios/transcoder/common/TrackStatus;ZI)Lcom/otaliastudios/transcoder/common/TrackStatus;

    move-result-object p3

    .line 31
    invoke-direct {p0, v1, p4}, Lcom/otaliastudios/transcoder/internal/Tracks;->resolveAudioStatus(Lcom/otaliastudios/transcoder/common/TrackStatus;Z)Lcom/otaliastudios/transcoder/common/TrackStatus;

    move-result-object p4

    .line 29
    invoke-static {p3, p4}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p3

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->all:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 33
    invoke-static {p2, v2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p4

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->outputFormats:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v3, "init: videoStatus="

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", resolvedVideoStatus="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ", videoFormat="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init: audioStatus="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", resolvedAudioStatus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", audioFormat="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 39
    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/common/TrackStatus;->isTranscoding()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_c9

    goto :goto_ca

    :cond_c9
    move-object p1, p4

    .line 40
    :goto_ca
    invoke-interface {p3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getAudio()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-virtual {p3}, Lcom/otaliastudios/transcoder/common/TrackStatus;->isTranscoding()Z

    move-result p3

    if-eqz p3, :cond_d8

    move-object p4, p2

    .line 38
    :cond_d8
    invoke-static {p1, p4}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->active:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-void
.end method

.method private final resolveAudioStatus(Lcom/otaliastudios/transcoder/common/TrackStatus;Z)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 4

    .line 51
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_d

    if-eqz p2, :cond_d

    .line 52
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    :cond_d
    return-object p1
.end method

.method private final resolveTrack(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;Ljava/util/List;)Lkotlin/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            "Lcom/otaliastudios/transcoder/strategy/TrackStrategy;",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;)",
            "Lkotlin/Pair<",
            "Landroid/media/MediaFormat;",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resolveTrack("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), sources="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p3, :cond_18

    move-object v3, v2

    goto :goto_20

    :cond_18
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", strategy="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    if-nez p3, :cond_4f

    .line 62
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    sget-object p2, Lcom/otaliastudios/transcoder/common/TrackStatus;->ABSENT:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 65
    :cond_4f
    new-instance v0, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;-><init>()V

    .line 66
    move-object v1, p3

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 94
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 93
    check-cast v4, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 67
    invoke-interface {v4, p1}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v5

    if-nez v5, :cond_76

    move-object v4, v2

    goto :goto_7a

    .line 68
    :cond_76
    invoke-virtual {v0, v4, p1, v5}, Lcom/otaliastudios/transcoder/internal/media/MediaFormatProvider;->provideMediaFormat(Lcom/otaliastudios/transcoder/source/DataSource;Lcom/otaliastudios/transcoder/common/TrackType;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v4

    :goto_7a
    if-eqz v4, :cond_62

    .line 93
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 97
    :cond_80
    check-cast v3, Ljava/util/List;

    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_94

    .line 74
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    sget-object p2, Lcom/otaliastudios/transcoder/common/TrackStatus;->ABSENT:Lcom/otaliastudios/transcoder/common/TrackStatus;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_ac

    .line 75
    :cond_94
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne v0, p3, :cond_ad

    .line 76
    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    .line 77
    invoke-interface {p2, v3, p1}, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;->createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackStatus;

    move-result-object p2

    const-string p3, "strategy.createOutputFormat(inputs, output)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_ac
    return-object p1

    .line 80
    :cond_ad
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Of all "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " sources, some have a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " track, some don\'t."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final resolveVideoStatus(Lcom/otaliastudios/transcoder/common/TrackStatus;ZI)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_9

    if-eqz p3, :cond_7

    goto :goto_9

    :cond_7
    move p2, v0

    goto :goto_a

    :cond_9
    :goto_9
    move p2, v1

    .line 45
    :goto_a
    sget-object p3, Lcom/otaliastudios/transcoder/common/TrackStatus;->PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne p1, p3, :cond_f

    move v0, v1

    :cond_f
    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 46
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    :cond_15
    return-object p1
.end method


# virtual methods
.method public final getActive()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->active:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->all:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getOutputFormats()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Tracks;->outputFormats:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method
