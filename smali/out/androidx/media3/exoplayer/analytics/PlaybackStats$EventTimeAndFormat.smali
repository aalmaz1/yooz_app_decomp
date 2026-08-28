.class public final Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndFormat"
.end annotation


# instance fields
.field public final eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 101
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->format:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 112
    :cond_12
    check-cast p1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;

    .line 113
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 116
    :cond_1f
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->format:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->format:Landroidx/media3/common/Format;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2e

    :cond_2a
    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 121
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;->format:Landroidx/media3/common/Format;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/media3/common/Format;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method
