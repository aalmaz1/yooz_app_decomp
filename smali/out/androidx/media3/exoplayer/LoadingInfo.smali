.class public final Landroidx/media3/exoplayer/LoadingInfo;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/LoadingInfo$Builder;
    }
.end annotation


# instance fields
.field public final lastRebufferRealtimeMs:J

.field public final playbackPositionUs:J

.field public final playbackSpeed:F


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->access$100(Landroidx/media3/exoplayer/LoadingInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    .line 117
    invoke-static {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->access$200(Landroidx/media3/exoplayer/LoadingInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    .line 118
    invoke-static {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->access$300(Landroidx/media3/exoplayer/LoadingInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;Landroidx/media3/exoplayer/LoadingInfo$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    .line 123
    new-instance v0, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>(Landroidx/media3/exoplayer/LoadingInfo;Landroidx/media3/exoplayer/LoadingInfo$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 144
    :cond_4
    instance-of v1, p1, Landroidx/media3/exoplayer/LoadingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 147
    :cond_a
    check-cast p1, Landroidx/media3/exoplayer/LoadingInfo;

    .line 148
    iget-wide v3, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    iget v1, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    iget v3, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_25

    iget-wide v3, p0, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 155
    iget-wide v1, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public rebufferedSince(J)Z
    .registers 8

    .line 134
    iget-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    cmp-long v2, p1, v2

    if-eqz v2, :cond_15

    cmp-long p1, v0, p1

    if-ltz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
