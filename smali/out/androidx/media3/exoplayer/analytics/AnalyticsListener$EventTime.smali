.class public final Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final currentPlaybackPositionMs:J

.field public final currentTimeline:Landroidx/media3/common/Timeline;

.field public final currentWindowIndex:I

.field public final eventPlaybackPositionMs:J

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final realtimeMs:J

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final totalBufferedDurationMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V
    .registers 15

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 545
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    .line 546
    iput p4, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 547
    iput-object p5, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 548
    iput-wide p6, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 549
    iput-object p8, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 550
    iput p9, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 551
    iput-object p10, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 552
    iput-wide p11, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 553
    iput-wide p13, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6b

    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6b

    .line 564
    :cond_12
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 565
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_69

    iget v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-ne v2, v3, :cond_69

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_69

    iget v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    if-ne v2, v3, :cond_69

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_69

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    iget-wide v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_69

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    .line 571
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 572
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 573
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 574
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    return v0

    :cond_6b
    :goto_6b
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 579
    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 580
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    aput-object v2, v0, v1

    iget v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    aput-object v2, v0, v1

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 584
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Landroidx/media3/common/Timeline;

    aput-object v2, v0, v1

    iget v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    aput-object v2, v0, v1

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 588
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    .line 589
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 579
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
