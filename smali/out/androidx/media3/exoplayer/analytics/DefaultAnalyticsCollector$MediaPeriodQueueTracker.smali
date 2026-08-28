.class final Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline$Period;)V
    .registers 2

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1026
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1027
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 1012
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method private addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 1141
    :cond_3
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 1142
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_1d

    .line 1144
    :cond_10
    iget-object p3, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p3, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_1d

    .line 1146
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Player;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline$Period;",
            ")",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 1157
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1158
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    .line 1161
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    move-object v2, v3

    goto :goto_15

    :cond_11
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 1163
    :goto_15
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_38

    .line 1166
    :cond_22
    invoke-virtual {v0, v1, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    .line 1168
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1167
    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p3

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p3, -0x1

    :goto_39
    const/4 v0, 0x0

    .line 1169
    :goto_3a
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 1170
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1174
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1175
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1176
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 1171
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_5c

    return-object v1

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1181
    :cond_5f
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7d

    if-eqz p2, :cond_7d

    .line 1185
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1186
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1187
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 1182
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_7d

    return-object p2

    :cond_7d
    return-object v3
.end method

.method private static isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .registers 7

    .line 1202
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_14

    .line 1206
    iget p1, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p1, p3, :cond_14

    iget p1, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq p1, p4, :cond_1f

    :cond_14
    if-nez p2, :cond_20

    iget p1, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne p0, p5, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V
    .registers 5

    .line 1113
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1115
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1116
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1117
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1119
    :cond_20
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1120
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1121
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    goto :goto_60

    :cond_3a
    const/4 v1, 0x0

    .line 1124
    :goto_3b
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 1125
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1127
    :cond_51
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1128
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1131
    :cond_60
    :goto_60
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1038
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1071
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_12

    :cond_a
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_12
    return-object v0
.end method

.method public getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;
    .registers 3

    .line 1080
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Timeline;

    return-object p1
.end method

.method public getPlayingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1049
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getReadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1060
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player;)V
    .registers 5

    .line 1085
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1086
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public onQueueUpdated(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Player;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Player;",
            ")V"
        }
    .end annotation

    .line 1099
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 1101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1102
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1104
    :cond_1d
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_2d

    .line 1105
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1106
    invoke-static {p3, p1, p2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1109
    :cond_2d
    invoke-interface {p3}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Player;)V
    .registers 5

    .line 1091
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1092
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1093
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    return-void
.end method
