.class public final Lcom/otaliastudios/transcoder/internal/DataSources;
.super Ljava/lang/Object;
.source "DataSources.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/utils/TrackMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/DataSources$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
        "Ljava/util/List<",
        "+",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSources.kt\ncom/otaliastudios/transcoder/internal/DataSources\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1768#2,4:88\n1768#2,4:93\n1547#2:97\n1618#2,3:98\n1849#2,2:101\n1849#2,2:103\n1#3:92\n*S KotlinDebug\n*F\n+ 1 DataSources.kt\ncom/otaliastudios/transcoder/internal/DataSources\n*L\n45#1:88,4\n54#1:93,4\n61#1:97\n61#1:98,3\n24#1:101,2\n28#1:103,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B#\u0008\u0002\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0002\u0010\u000bJ\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0006\u0010\u0016\u001a\u00020\u0017J\u000c\u0010\u0018\u001a\u00020\u0017*\u00020\u0003H\u0002J\u0012\u0010\u0018\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000c\u0010\u0019\u001a\u00020\u0017*\u00020\u0003H\u0002J\u0012\u0010\u0019\u001a\u00020\u0017*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "options",
        "Lcom/otaliastudios/transcoder/TranscoderOptions;",
        "(Lcom/otaliastudios/transcoder/TranscoderOptions;)V",
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions;",
        "(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V",
        "videoSources",
        "audioSources",
        "(Ljava/util/List;Ljava/util/List;)V",
        "discarded",
        "",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "all",
        "get",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "has",
        "",
        "release",
        "",
        "deinit",
        "init",
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
.field private final audioSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final discarded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final videoSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getDataSources()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/TranscoderOptions;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getVideoDataSources()Ljava/util/List;

    move-result-object v0

    const-string v1, "options.videoDataSources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getAudioDataSources()Ljava/util/List;

    move-result-object p1

    const-string v1, "options.audioDataSources"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "DataSources"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "initializing videoSources..."

    .line 34
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->init(Ljava/util/List;)V

    const-string v1, "initializing audioSources..."

    .line 36
    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/otaliastudios/transcoder/internal/DataSources;->init(Ljava/util/List;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->discarded:Ljava/util/List;

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/DataSources;

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 88
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_2

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 45
    sget-object v6, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v5, v6}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 47
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->discarded:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 48
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    :goto_3
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->videoSources:Ljava/util/List;

    .line 54
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 93
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    .line 95
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 54
    sget-object v5, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v4, v5}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v4

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    move v4, v3

    :goto_5
    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_4

    :cond_8
    move v3, v1

    .line 55
    :goto_6
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "computing audioSources, valid="

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    if-nez v3, :cond_9

    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->discarded:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_9

    .line 58
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_a

    goto :goto_9

    .line 97
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 99
    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 62
    sget-object v1, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/source/DataSource;->getTrackFormat(Lcom/otaliastudios/transcoder/common/TrackType;)Landroid/media/MediaFormat;

    move-result-object v1

    if-eqz v1, :cond_b

    goto :goto_8

    .line 63
    :cond_b
    new-instance v1, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/otaliastudios/transcoder/source/BlankAudioDataSource;-><init>(J)V

    .line 64
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->discarded:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    move-object v0, v1

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 62
    :goto_8
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 100
    :cond_c
    check-cast p2, Ljava/util/List;

    .line 53
    :goto_9
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->audioSources:Ljava/util/List;

    return-void
.end method

.method private final deinit(Lcom/otaliastudios/transcoder/source/DataSource;)V
    .locals 1

    .line 23
    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->deinitialize()V

    :cond_0
    return-void
.end method

.method private final deinit(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 29
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deinitializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "... (isInit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->deinit(Lcom/otaliastudios/transcoder/source/DataSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final init(Lcom/otaliastudios/transcoder/source/DataSource;)V
    .locals 1

    .line 22
    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/source/DataSource;->initialize()V

    :cond_0
    return-void
.end method

.method private final init(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/lang/Iterable;

    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 25
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "... (isInit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->init(Lcom/otaliastudios/transcoder/source/DataSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final all()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getVideo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic audioOrNull()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->audioOrNull()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public audioOrNull()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/otaliastudios/transcoder/internal/DataSources$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->videoSources:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->audioSources:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getAudio()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getAudio()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getHasAudio()Z
    .locals 1

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public getHasVideo()Z
    .locals 1

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getSize(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideo()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getVideo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public has(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->iterator(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "release(): releasing..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getVideo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->deinit(Ljava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->getAudio()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->deinit(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->discarded:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/DataSources;->deinit(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/DataSources;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "release(): released."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic videoOrNull()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/DataSources;->videoOrNull()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public videoOrNull()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
