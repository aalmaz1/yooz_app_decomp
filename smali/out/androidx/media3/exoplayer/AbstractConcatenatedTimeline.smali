.class public abstract Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.super Landroidx/media3/common/Timeline;
.source "AbstractConcatenatedTimeline.java"


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 76
    iput-boolean p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    .line 77
    iput-object p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 78
    invoke-interface {p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    return-void
.end method

.method public static getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 53
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 42
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getNextChildIndex(IZ)I
    .registers 3

    if-eqz p2, :cond_9

    .line 321
    iget-object p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getNextIndex(I)I

    move-result p1

    goto :goto_13

    .line 322
    :cond_9
    iget p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_12

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, -0x1

    :goto_13
    return p1
.end method

.method private getPreviousChildIndex(IZ)I
    .registers 3

    if-eqz p2, :cond_9

    .line 327
    iget-object p2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result p1

    goto :goto_f

    :cond_9
    if-lez p1, :cond_e

    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .registers 5

    .line 177
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 180
    :cond_6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move p1, v2

    :cond_c
    if-eqz p1, :cond_14

    .line 184
    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getFirstIndex()I

    move-result v2

    .line 185
    :cond_14
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 186
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v2

    if-ne v2, v1, :cond_14

    return v1

    .line 192
    :cond_25
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v0

    .line 193
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 5

    .line 244
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 247
    :cond_6
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 249
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_15

    return v1

    .line 253
    :cond_15
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_20

    goto :goto_26

    .line 256
    :cond_20
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v0

    add-int v1, v0, p1

    :goto_26
    return v1
.end method

.method public getLastWindowIndex(Z)I
    .registers 5

    .line 156
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 159
    :cond_6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    if-eqz v2, :cond_b

    const/4 p1, 0x0

    :cond_b
    if-eqz p1, :cond_14

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_16

    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 164
    :cond_16
    :goto_16
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 165
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    if-ne v0, v1, :cond_16

    return v1

    .line 171
    :cond_27
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 172
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 9

    .line 84
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    move p2, v2

    :cond_a
    move p3, v1

    .line 90
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 93
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, p2

    .line 94
    :goto_1c
    invoke-virtual {v4, p1, v1, p3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    add-int/2addr v3, p1

    return v3

    .line 102
    :cond_25
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    :goto_29
    if-eq p1, v1, :cond_3a

    .line 103
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 104
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result p1

    goto :goto_29

    :cond_3a
    if-eq p1, v1, :cond_4a

    .line 107
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result p2

    .line 108
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_4a
    if-ne p2, v2, :cond_51

    .line 112
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    return p1

    :cond_51
    return v1
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .registers 8

    .line 228
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 229
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 230
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 231
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 232
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 233
    iget p1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_2b

    .line 237
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 236
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_2b
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .registers 6

    .line 216
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    invoke-static {p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v0

    .line 219
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v2

    .line 220
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 221
    iget v0, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v0, v2

    iput v0, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 222
    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 9

    .line 120
    iget-boolean v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->isAtomic:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_b

    const/4 p3, 0x1

    if-ne p2, p3, :cond_a

    move p2, v2

    :cond_a
    move p3, v1

    .line 126
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    .line 129
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, p2

    .line 130
    :goto_1c
    invoke-virtual {v4, p1, v1, p3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_25

    add-int/2addr v3, p1

    return v3

    .line 138
    :cond_25
    invoke-direct {p0, v0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    :goto_29
    if-eq p1, v1, :cond_3a

    .line 140
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 141
    invoke-direct {p0, p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    goto :goto_29

    :cond_3a
    if-eq p1, v1, :cond_4a

    .line 144
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result p2

    .line 145
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_4a
    if-ne p2, v2, :cond_51

    .line 149
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result p1

    return p1

    :cond_51
    return v1
.end method

.method protected abstract getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .registers 5

    .line 261
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    .line 262
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v1

    .line 264
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 265
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .registers 9

    .line 198
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    .line 200
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    .line 201
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 202
    invoke-virtual {v3, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 203
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object p1

    .line 206
    sget-object p3, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object p4, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    goto :goto_29

    .line 208
    :cond_23
    iget-object p3, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_29
    iput-object p1, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 209
    iget p1, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 210
    iget p1, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr p1, v2

    iput p1, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method
