.class public final Landroidx/media3/exoplayer/LoadingInfo$Builder;
.super Ljava/lang/Object;
.source "LoadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/LoadingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private lastRebufferRealtimeMs:J

.field private playbackPositionUs:J

.field private playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    const v2, -0x800001

    .line 40
    iput v2, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    .line 41
    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/LoadingInfo;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-wide v0, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    .line 46
    iget v0, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackSpeed:F

    iput v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    .line 47
    iget-wide v0, p1, Landroidx/media3/exoplayer/LoadingInfo;->lastRebufferRealtimeMs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/LoadingInfo;Landroidx/media3/exoplayer/LoadingInfo$1;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>(Landroidx/media3/exoplayer/LoadingInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/LoadingInfo$Builder;)J
    .registers 3

    .line 32
    iget-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/LoadingInfo$Builder;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/LoadingInfo$Builder;)J
    .registers 3

    .line 32
    iget-wide v0, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/LoadingInfo;
    .registers 3

    .line 85
    new-instance v0, Landroidx/media3/exoplayer/LoadingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;Landroidx/media3/exoplayer/LoadingInfo$1;)V

    return-object v0
.end method

.method public setLastRebufferRealtimeMs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 78
    :goto_13
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 79
    iput-wide p1, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->lastRebufferRealtimeMs:J

    return-object p0
.end method

.method public setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    .line 53
    iput-wide p1, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackPositionUs:J

    return-object p0
.end method

.method public setPlaybackSpeed(F)Landroidx/media3/exoplayer/LoadingInfo$Builder;
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_f

    const v0, -0x800001

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 65
    :goto_10
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 66
    iput p1, p0, Landroidx/media3/exoplayer/LoadingInfo$Builder;->playbackSpeed:F

    return-object p0
.end method
