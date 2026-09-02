.class Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;
.super Ljava/lang/Object;
.source "HeifEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/heifwriter/HeifEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceEOSTracker"
.end annotation


# static fields
.field private static final DEBUG_EOS:Z = false


# instance fields
.field final mCopyTiles:Z

.field mEncoderEOSTimeUs:J

.field mInputEOSTimeNs:J

.field mLastEncoderTimeUs:J

.field mLastInputTimeNs:J

.field mLastOutputTimeUs:J

.field mSignaled:Z

.field final synthetic this$0:Landroidx/heifwriter/HeifEncoder;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder;Z)V
    .registers 5

    .line 745
    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->this$0:Landroidx/heifwriter/HeifEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 738
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    .line 739
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    .line 740
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    .line 741
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    .line 742
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    .line 746
    iput-boolean p2, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mCopyTiles:Z

    return-void
.end method

.method private doSignalEOSLocked()V
    .registers 3

    .line 809
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->this$0:Landroidx/heifwriter/HeifEncoder;

    iget-object v0, v0, Landroidx/heifwriter/HeifEncoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;

    invoke-direct {v1, p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker$1;-><init>(Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 817
    iput-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mSignaled:Z

    return-void
.end method

.method private updateEOSLocked()V
    .registers 7

    .line 785
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mSignaled:Z

    if-eqz v0, :cond_5

    return-void

    .line 788
    :cond_5
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 789
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    iget-wide v4, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_25

    .line 790
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    .line 791
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->doSignalEOSLocked()V

    return-void

    .line 796
    :cond_23
    iput-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    .line 801
    :cond_25
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_34

    iget-wide v2, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_34

    .line 802
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->doSignalEOSLocked()V

    :cond_34
    return-void
.end method


# virtual methods
.method declared-synchronized updateInputEOSTime(J)V
    .registers 8

    monitor-enter p0

    .line 752
    :try_start_1
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mCopyTiles:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_10

    .line 753
    iget-wide v3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1b

    .line 754
    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    goto :goto_1b

    .line 757
    :cond_10
    iget-wide v3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1b

    const-wide/16 v0, 0x3e8

    .line 758
    div-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mEncoderEOSTimeUs:J

    .line 761
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 762
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLastInputAndEncoderTime(JJ)Z
    .registers 9

    monitor-enter p0

    .line 768
    :try_start_1
    iget-wide v0, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mInputEOSTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_15

    .line 770
    iput-wide p3, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastEncoderTimeUs:J

    .line 772
    :cond_15
    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastInputTimeNs:J

    .line 773
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 774
    monitor-exit p0

    return v0

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLastOutputTime(J)V
    .registers 3

    monitor-enter p0

    .line 780
    :try_start_1
    iput-wide p1, p0, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->mLastOutputTimeUs:J

    .line 781
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateEOSLocked()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 782
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
