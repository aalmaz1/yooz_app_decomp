.class public final Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
.super Ljava/lang/Object;
.source "CmcdData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field private static final CUSTOM_KEY_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field private final didRebuffer:Z

.field private final isBufferEmpty:Z

.field private final isLive:Z

.field private nextObjectRequest:Ljava/lang/String;

.field private nextRangeRequest:Ljava/lang/String;

.field private objectType:Ljava/lang/String;

.field private final playbackRate:F

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".*-.*"

    .line 97
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->CUSTOM_KEY_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JFLjava/lang/String;ZZZ)V
    .registers 13

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 140
    :goto_e
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const v0, -0x800001

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    .line 141
    :cond_1f
    :goto_1f
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 142
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 143
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 144
    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->bufferedDurationUs:J

    .line 145
    iput p5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->playbackRate:F

    .line 146
    iput-object p6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->streamingFormat:Ljava/lang/String;

    .line 147
    iput-boolean p7, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->isLive:Z

    .line 148
    iput-boolean p8, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->didRebuffer:Z

    .line 149
    iput-boolean p9, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->isBufferEmpty:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->chunkDurationUs:J

    return-void
.end method

.method private getIsInitSegment()Z
    .registers 3

    .line 328
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->objectType:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static getObjectType(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 163
    :goto_6
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 165
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 167
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    :cond_20
    if-ne v1, v0, :cond_25

    const-string p0, "a"

    return-object p0

    :cond_25
    const/4 p0, 0x2

    if-ne v1, p0, :cond_2c

    const-string/jumbo p0, "v"

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method private validateCustomDataListFormat(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "="

    .line 333
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 334
    sget-object v1, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->CUSTOM_KEY_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    goto :goto_4

    :cond_27
    return-void
.end method


# virtual methods
.method public createCmcdData()Landroidx/media3/exoplayer/upstream/CmcdData;
    .registers 14

    .line 230
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 231
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->getCustomData()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->validateCustomDataListFormat(Ljava/util/List;)V

    goto :goto_10

    .line 236
    :cond_24
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Format;->bitrate:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    .line 238
    new-instance v3, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    invoke-direct {v3}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;-><init>()V

    .line 239
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->getIsInitSegment()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_89

    .line 240
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 241
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->setBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    .line 243
    :cond_49
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isTopBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 244
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v4

    .line 245
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/Format;->bitrate:I

    move v7, v5

    .line 246
    :goto_60
    iget v8, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v7, v8, :cond_71

    .line 247
    invoke-virtual {v4, v7}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Format;->bitrate:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 249
    :cond_71
    invoke-static {v6, v2}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->setTopBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    .line 251
    :cond_78
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isObjectDurationLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 252
    iget-wide v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->chunkDurationUs:J

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->setObjectDurationMs(J)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    .line 255
    :cond_89
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isObjectTypeLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 256
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->objectType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    :cond_96
    const-string v2, "CMCD-Object"

    .line 258
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 259
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->setCustomDataList(Ljava/util/List;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;

    .line 262
    :cond_a5
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;-><init>()V

    .line 263
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->getIsInitSegment()Z

    move-result v4

    if-nez v4, :cond_c1

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isBufferLengthLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 264
    iget-wide v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->bufferedDurationUs:J

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setBufferLengthMs(J)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 266
    :cond_c1
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isMeasuredThroughputLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_e5

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 267
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v6

    const-wide/32 v8, -0x7fffffff

    cmp-long v4, v6, v8

    if-eqz v4, :cond_e5

    .line 268
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 269
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v9}, Landroidx/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide v6

    .line 268
    invoke-virtual {v2, v6, v7}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setMeasuredThroughputInKbps(J)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 271
    :cond_e5
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isDeadlineLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 272
    iget-wide v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->bufferedDurationUs:J

    long-to-float v4, v6

    iget v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->playbackRate:F

    div-float/2addr v4, v6

    float-to-long v6, v4

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setDeadlineMs(J)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 274
    :cond_fb
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isStartupLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 275
    iget-boolean v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->didRebuffer:Z

    if-nez v4, :cond_10b

    iget-boolean v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->isBufferEmpty:Z

    if-eqz v4, :cond_10c

    :cond_10b
    const/4 v5, 0x1

    :cond_10c
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setStartup(Z)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 277
    :cond_10f
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isNextObjectRequestLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 278
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->nextObjectRequest:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setNextObjectRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 280
    :cond_11c
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isNextRangeRequestLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 281
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->nextRangeRequest:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setNextRangeRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    :cond_129
    const-string v4, "CMCD-Request"

    .line 283
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_138

    .line 284
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->setCustomDataList(Ljava/util/List;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;

    .line 287
    :cond_138
    new-instance v4, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;-><init>()V

    .line 288
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isContentIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 289
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setContentId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    .line 291
    :cond_14c
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isSessionIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 292
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setSessionId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    .line 294
    :cond_15b
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isStreamingFormatLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_168

    .line 295
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->streamingFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setStreamingFormat(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    .line 297
    :cond_168
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isStreamTypeLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 298
    iget-boolean v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->isLive:Z

    if-eqz v5, :cond_177

    const-string v5, "l"

    goto :goto_17a

    :cond_177
    const-string/jumbo v5, "v"

    :goto_17a
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setStreamType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    .line 300
    :cond_17d
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isPlaybackRateLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_18a

    .line 301
    iget v5, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->playbackRate:F

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setPlaybackRate(F)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    :cond_18a
    const-string v5, "CMCD-Session"

    .line 303
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_199

    .line 304
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->setCustomDataList(Ljava/util/List;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;

    .line 307
    :cond_199
    new-instance v5, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;

    invoke-direct {v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;-><init>()V

    .line 308
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isMaximumRequestThroughputLoggingAllowed()Z

    move-result v6

    if-eqz v6, :cond_1b1

    .line 309
    iget-object v6, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v6, v6, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 310
    invoke-interface {v6, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->getRequestedMaximumThroughputKbps(I)I

    move-result v1

    .line 309
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->setMaximumRequestedThroughputKbps(I)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;

    .line 312
    :cond_1b1
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isBufferStarvationLoggingAllowed()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 313
    iget-boolean v1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->didRebuffer:Z

    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->setBufferStarvation(Z)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;

    :cond_1be
    const-string v1, "CMCD-Status"

    .line 315
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cd

    .line 316
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->setCustomDataList(Ljava/util/List;)Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;

    .line 319
    :cond_1cd
    new-instance v0, Landroidx/media3/exoplayer/upstream/CmcdData;

    .line 320
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;

    move-result-object v7

    .line 321
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;

    move-result-object v8

    .line 322
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;

    move-result-object v9

    .line 323
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;

    move-result-object v10

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget v11, v1, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->dataTransmissionMode:I

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/upstream/CmcdData;-><init>(Landroidx/media3/exoplayer/upstream/CmcdData$CmcdObject;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdRequest;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdSession;Landroidx/media3/exoplayer/upstream/CmcdData$CmcdStatus;ILandroidx/media3/exoplayer/upstream/CmcdData$1;)V

    return-object v0
.end method

.method public setChunkDurationUs(J)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 188
    :goto_9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 189
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->chunkDurationUs:J

    return-object p0
.end method

.method public setNextObjectRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .registers 2

    .line 213
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->nextObjectRequest:Ljava/lang/String;

    return-object p0
.end method

.method public setNextRangeRequest(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .registers 2

    .line 225
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->nextRangeRequest:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdData$Factory;
    .registers 2

    .line 201
    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->objectType:Ljava/lang/String;

    return-object p0
.end method
