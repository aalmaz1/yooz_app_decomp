.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;,
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_HEIGHT_TO_DISCARD:I = 0x2cf

.field public static final DEFAULT_MAX_WIDTH_TO_DISCARD:I = 0x4ff

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field private static final MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AdaptiveTrackSelection"


# instance fields
.field private final adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media3/common/util/Clock;

.field private lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

.field private lastBufferEvaluationMs:J

.field private latestBitrateEstimate:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method protected constructor <init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackGroup;",
            "[II",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;",
            "Landroidx/media3/common/util/Clock;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 392
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    cmp-long v1, p9, p5

    if-gez v1, :cond_12

    const-string v1, "AdaptiveTrackSelection"

    const-string v2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    .line 394
    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p4

    move-wide v1, p5

    goto :goto_15

    :cond_12
    move-object v3, p4

    move-wide/from16 v1, p9

    .line 400
    :goto_15
    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    const-wide/16 v3, 0x3e8

    mul-long v5, p5, v3

    .line 401
    iput-wide v5, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long v5, p7, v3

    .line 402
    iput-wide v5, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long/2addr v1, v3

    .line 403
    iput-wide v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    move/from16 v1, p11

    .line 404
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    move/from16 v1, p12

    .line 405
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    move/from16 v1, p13

    .line 406
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    move/from16 v1, p14

    .line 407
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 409
    invoke-static/range {p15 .. p15}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v1, p16

    .line 410
    iput-object v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 411
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    const/4 v1, 0x0

    .line 412
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    iput-wide v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide/32 v1, -0x7fffffff

    .line 414
    iput-wide v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;[ILandroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    .line 343
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    sget-object v16, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    .line 331
    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method static synthetic access$000([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 49
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static addCheckpoint(Ljava/util/List;[J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;[J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 817
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_d

    .line 818
    aget-wide v4, p1, v3

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 820
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 821
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v3, :cond_1c

    goto :goto_26

    .line 825
    :cond_1c
    new-instance v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method private determineIdealSelectedIndex(JJ)I
    .registers 9

    .line 600
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAllocatedBandwidth(J)J

    move-result-wide p3

    const/4 v0, 0x0

    move v1, v0

    .line 602
    :goto_6
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v0, v2, :cond_27

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-eqz v2, :cond_16

    .line 603
    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    if-nez v2, :cond_24

    .line 604
    :cond_16
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v1

    .line 605
    iget v2, v1, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {p0, v1, v2, p3, p4}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->canSelectFormat(Landroidx/media3/common/Format;IJ)Z

    move-result v1

    if-eqz v1, :cond_23

    return v0

    :cond_23
    move v1, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    return v1
.end method

.method private static getAdaptationCheckpoints([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 714
    :goto_7
    array-length v3, p0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_2d

    .line 715
    aget-object v3, p0, v2

    if-eqz v3, :cond_26

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    if-le v3, v6, :cond_26

    .line 716
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 718
    new-instance v6, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v6, v4, v5, v4, v5}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 719
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_26
    const/4 v3, 0x0

    .line 721
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 725
    :cond_2d
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSortedTrackBitrates([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J

    move-result-object v2

    .line 726
    array-length v3, v2

    new-array v3, v3, [I

    .line 727
    array-length v7, v2

    new-array v7, v7, [J

    move v8, v1

    .line 728
    :goto_38
    array-length v9, v2

    if-ge v8, v9, :cond_49

    .line 729
    aget-object v9, v2, v8

    array-length v10, v9

    if-nez v10, :cond_42

    move-wide v9, v4

    goto :goto_44

    :cond_42
    aget-wide v9, v9, v1

    :goto_44
    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 731
    :cond_49
    invoke-static {v0, v7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 733
    invoke-static {v2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move v5, v1

    .line 734
    :goto_51
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    if-ge v5, v8, :cond_72

    .line 735
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 736
    aget v9, v3, v8

    add-int/2addr v9, v6

    aput v9, v3, v8

    .line 737
    aget-object v10, v2, v8

    aget-wide v9, v10, v9

    aput-wide v9, v7, v8

    .line 738
    invoke-static {v0, v7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_72
    move v2, v1

    .line 741
    :goto_73
    array-length v3, p0

    if-ge v2, v3, :cond_86

    .line 742
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 743
    aget-wide v3, v7, v2

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    aput-wide v3, v7, v2

    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 746
    :cond_86
    invoke-static {v0, v7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 747
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 748
    :goto_8d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    .line 749
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    if-nez v2, :cond_a0

    .line 750
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_a4

    :cond_a0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_a4
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 752
    :cond_aa
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getAllocatedBandwidth(J)J
    .registers 9

    .line 671
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getTotalAllocatableBandwidth(J)J

    move-result-wide p1

    .line 672
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-wide p1

    :cond_d
    const/4 v0, 0x1

    move v1, v0

    .line 676
    :goto_f
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_29

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 677
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v2, v2, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 680
    :cond_29
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 681
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 682
    iget-wide v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-wide v2, v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr v2, v4

    long-to-float p2, v2

    div-float/2addr p1, p2

    .line 685
    iget-wide v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v0, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    sub-long/2addr v4, v0

    long-to-float p2, v4

    mul-float/2addr p1, p2

    float-to-long p1, p1

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private getLastChunkDurationUs(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 661
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_c

    return-wide v1

    .line 664
    :cond_c
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 665
    iget-wide v3, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_24

    iget-wide v3, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->endTimeUs:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_24

    .line 666
    iget-wide v0, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->endTimeUs:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v1, v0, v2

    :cond_24
    return-wide v1
.end method

.method private getNextChunkDurationUs([Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 640
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_1b

    aget-object v0, p1, v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 641
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object p1, p1, p2

    .line 642
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 646
    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 647
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 648
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide p1

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 653
    :cond_34
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide p1

    return-wide p1
.end method

.method private static getSortedTrackBitrates([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J
    .registers 11

    .line 757
    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    move v2, v1

    .line 758
    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_42

    .line 759
    aget-object v3, p0, v2

    if-nez v3, :cond_11

    new-array v3, v1, [J

    .line 761
    aput-object v3, v0, v2

    goto :goto_3f

    .line 764
    :cond_11
    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v0, v2

    move v4, v1

    .line 765
    :goto_19
    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3a

    .line 766
    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v5, v5

    .line 767
    aget-object v7, v0, v2

    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-nez v8, :cond_35

    const-wide/16 v5, 0x0

    :cond_35
    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 769
    :cond_3a
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_42
    return-object v0
.end method

.method private static getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 785
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 786
    :goto_e
    array-length v3, p0

    if-ge v2, v3, :cond_64

    .line 787
    aget-object v3, p0, v2

    array-length v4, v3

    const/4 v5, 0x1

    if-gt v4, v5, :cond_18

    goto :goto_61

    .line 790
    :cond_18
    array-length v3, v3

    new-array v4, v3, [D

    move v5, v1

    .line 791
    :goto_1c
    aget-object v6, p0, v2

    array-length v7, v6

    const-wide/16 v8, 0x0

    if-ge v5, v7, :cond_36

    .line 793
    aget-wide v6, v6, v5

    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-nez v10, :cond_2c

    goto :goto_31

    :cond_2c
    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    :goto_31
    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_36
    add-int/lit8 v3, v3, -0x1

    .line 795
    aget-wide v5, v4, v3

    aget-wide v10, v4, v1

    sub-double/2addr v5, v10

    move v7, v1

    :goto_3e
    if-ge v7, v3, :cond_61

    .line 797
    aget-wide v10, v4, v7

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v4, v7

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    cmpl-double v12, v5, v8

    if-nez v12, :cond_51

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_55

    .line 799
    :cond_51
    aget-wide v12, v4, v1

    sub-double/2addr v10, v12

    div-double/2addr v10, v5

    .line 800
    :goto_55
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 803
    :cond_64
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getTotalAllocatableBandwidth(J)J
    .registers 10

    .line 691
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    long-to-float v0, v0

    .line 692
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 693
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getTimeToFirstByteEstimateUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_32

    cmp-long v4, p1, v4

    if-nez v4, :cond_21

    goto :goto_32

    :cond_21
    long-to-float p1, p1

    .line 697
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float p2, p1, p2

    long-to-float v2, v2

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    .line 698
    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    long-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    float-to-long p1, v0

    return-wide p1

    :cond_32
    :goto_32
    long-to-float p1, v0

    .line 695
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method private minDurationForQualityIncreaseUs(JJ)J
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_c

    .line 618
    iget-wide p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    return-wide p1

    :cond_c
    cmp-long v0, p3, v0

    if-eqz v0, :cond_11

    sub-long/2addr p1, p3

    :cond_11
    long-to-float p1, p1

    .line 628
    iget p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 630
    iget-wide p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method protected canSelectFormat(Landroidx/media3/common/Format;IJ)Z
    .registers 5

    int-to-long p1, p2

    cmp-long p1, p1, p3

    if-gtz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public disable()V
    .registers 2

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public enable()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 420
    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const/4 v0, 0x0

    .line 421
    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 506
    invoke-virtual {p0, v0, v1, p3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(JLjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 507
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 509
    :cond_11
    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 510
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_21

    :cond_1b
    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    :goto_21
    iput-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 512
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    return v3

    .line 515
    :cond_2b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 516
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 517
    iget-wide v4, v4, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget v6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 518
    invoke-static {v4, v5, v6}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v4

    .line 520
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_49

    return v2

    .line 524
    :cond_49
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v4

    invoke-direct {p0, v0, v1, v4, v5}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v0

    .line 525
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    :goto_55
    if-ge v3, v2, :cond_91

    .line 530
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 531
    iget-object v4, v1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackFormat:Landroidx/media3/common/Format;

    .line 532
    iget-wide v8, v1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v8, p1

    .line 533
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 534
    invoke-static {v8, v9, v1}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-ltz v1, :cond_8e

    .line 535
    iget v1, v4, Landroidx/media3/common/Format;->bitrate:I

    iget v5, v0, Landroidx/media3/common/Format;->bitrate:I

    if-ge v1, v5, :cond_8e

    iget v1, v4, Landroidx/media3/common/Format;->height:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8e

    iget v1, v4, Landroidx/media3/common/Format;->height:I

    iget v8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    if-gt v1, v8, :cond_8e

    iget v1, v4, Landroidx/media3/common/Format;->width:I

    if-eq v1, v5, :cond_8e

    iget v1, v4, Landroidx/media3/common/Format;->width:I

    iget v5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    if-gt v1, v5, :cond_8e

    iget v1, v4, Landroidx/media3/common/Format;->height:I

    iget v4, v0, Landroidx/media3/common/Format;->height:I

    if-ge v1, v4, :cond_8e

    return v3

    :cond_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_91
    return v2
.end method

.method public getLatestBitrateEstimate()J
    .registers 3

    .line 550
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    return-wide v0
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .registers 3

    .line 588
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 489
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 494
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .registers 2

    .line 433
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    return-void
.end method

.method protected shouldEvaluateQueueSize(JLjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 576
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, p1, v0

    if-gez p1, :cond_29

    .line 578
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 443
    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    .line 444
    invoke-direct {p0, p8, p7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getNextChunkDurationUs([Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J

    move-result-wide v0

    .line 447
    iget p8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez p8, :cond_18

    const/4 p3, 0x1

    .line 448
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 449
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void

    .line 453
    :cond_18
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 456
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_23

    move v3, v4

    goto :goto_2f

    :cond_23
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->indexOf(Landroidx/media3/common/Format;)I

    move-result v3

    :goto_2f
    if-eq v3, v4, :cond_3a

    .line 459
    invoke-static {p7}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget p8, p7, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackSelectionReason:I

    move v2, v3

    .line 461
    :cond_3a
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result p7

    if-eq p7, v2, :cond_6a

    .line 463
    invoke-virtual {p0, v2, p1, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 465
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p1

    .line 466
    invoke-virtual {p0, p7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p2

    .line 468
    invoke-direct {p0, p5, p6, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(JJ)J

    move-result-wide p5

    .line 469
    iget v0, p2, Landroidx/media3/common/Format;->bitrate:I

    iget v1, p1, Landroidx/media3/common/Format;->bitrate:I

    if-le v0, v1, :cond_5d

    cmp-long p5, p3, p5

    if-gez p5, :cond_5d

    goto :goto_69

    .line 474
    :cond_5d
    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    if-ge p2, p1, :cond_6a

    iget-wide p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_6a

    :goto_69
    move p7, v2

    :cond_6a
    if-ne p7, v2, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 p8, 0x3

    .line 483
    :goto_6e
    iput p8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 484
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return-void
.end method
