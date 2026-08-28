.class Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "EncoderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaCodecCallback"
.end annotation


# instance fields
.field private mHasEndData:Z

.field private mHasFirstData:Z

.field private mHasSendStartCallback:Z

.field private mIsKeyFrameRequired:Z

.field private mIsOutputBufferInPauseState:Z

.field private mLastPresentationTimeUs:J

.field private mLastSentAdjustedTimeUs:J

.field private mStopped:Z

.field private final mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

.field final synthetic this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;


# direct methods
.method constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl;)V
    .registers 5

    .line 1053
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 v0, 0x0

    .line 1039
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    .line 1040
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 1041
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    const-wide/16 v1, 0x0

    .line 1043
    iput-wide v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    .line 1048
    iput-wide v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 1049
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 1050
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 1051
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    .line 1054
    iget-boolean v0, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 1056
    const-class v0, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk;

    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1057
    iget-object v0, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v2, "CameraUseInconsistentTimebaseQuirk is enabled"

    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 1060
    :cond_2d
    iget-object v1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 1062
    :goto_2f
    new-instance v0, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTimeProvider:Landroidx/camera/video/internal/encoder/TimeProvider;

    invoke-direct {v0, p1, v1}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;-><init>(Landroidx/camera/video/internal/encoder/TimeProvider;Landroidx/camera/core/impl/Timebase;)V

    iput-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    goto :goto_3b

    .line 1064
    :cond_39
    iput-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    :goto_3b
    return-void
.end method

.method private checkBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Z
    .registers 9

    .line 1252
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1253
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by already reach end of stream."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1257
    :cond_f
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gtz v0, :cond_1d

    .line 1258
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by invalid buffer size."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1264
    :cond_1d
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2d

    .line 1265
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by codec config."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1269
    :cond_2d
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mVideoTimestampConverter:Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;

    if-eqz v0, :cond_39

    .line 1270
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1271
    invoke-virtual {v0, v2, v3}, Landroidx/camera/video/internal/workaround/VideoTimebaseConverter;->convertToUptimeUs(J)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1275
    :cond_39
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_4b

    .line 1276
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by out of order buffer from MediaCodec."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1279
    :cond_4b
    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastPresentationTimeUs:J

    .line 1285
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_a4

    .line 1286
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v3, "Drop buffer by not in start-stop range."

    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    if-eqz v0, :cond_a3

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    .line 1289
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_a3

    .line 1290
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_90

    .line 1291
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1293
    :cond_90
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLastDataStopTimestamp:Ljava/lang/Long;

    .line 1294
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalCodecStop()V

    .line 1295
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-boolean v1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    :cond_a3
    return v1

    .line 1300
    :cond_a4
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->updatePauseRangeStateAndCheckIfBufferPaused(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1301
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by pause."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1306
    :cond_b4
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->getAdjustedTimeUs(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_d8

    .line 1307
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v3, "Drop buffer by adjusted time is less than the last sent time."

    invoke-static {v0, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    if-eqz v0, :cond_d7

    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 1309
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    :cond_d7
    return v1

    .line 1314
    :cond_d8
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    if-nez v0, :cond_e8

    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    if-nez v0, :cond_e8

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    if-eqz v0, :cond_e8

    .line 1315
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 1318
    :cond_e8
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    if-eqz v0, :cond_103

    .line 1319
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-nez p1, :cond_101

    .line 1320
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Drop buffer by not a key frame."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->requestKeyFrameToMediaCodec()V

    return v1

    .line 1324
    :cond_101
    iput-boolean v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    :cond_103
    return v2
.end method

.method private isEndOfStream(Landroid/media/MediaCodec$BufferInfo;)Z
    .registers 3

    .line 1332
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->hasEndOfStreamFlag(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->isEosSignalledAndStopTimeReached(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isEosSignalledAndStopTimeReached(Landroid/media/MediaCodec$BufferInfo;)Z
    .registers 6

    .line 1337
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mMediaCodecEosSignalled:Z

    if-eqz v0, :cond_1c

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStartStopTimeRangeUs:Landroid/util/Range;

    .line 1338
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method static synthetic lambda$onOutputFormatChanged$5(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$onOutputFormatChanged$6(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V
    .registers 3

    .line 1449
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaFormat;)V

    invoke-interface {p0, v0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onOutputConfigUpdate(Landroidx/camera/video/internal/encoder/OutputConfig;)V

    return-void
.end method

.method static synthetic lambda$sendEncodedData$3(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V
    .registers 2

    .line 1238
    invoke-interface {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onEncodedData(Landroidx/camera/video/internal/encoder/EncodedData;)V

    return-void
.end method

.method private resolveOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;
    .registers 9

    .line 1197
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->getAdjustedTimeUs(Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    .line 1198
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    return-object p1

    .line 1204
    :cond_d
    iget-wide v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 1209
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1210
    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-object v0
.end method

.method private sendEncodedData(Landroidx/camera/video/internal/encoder/EncodedDataImpl;Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V
    .registers 7

    .line 1217
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncodedDataSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1218
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->getClosedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$1;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$1;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1238
    :try_start_17
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroidx/camera/video/internal/encoder/EncodedDataImpl;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_17 .. :try_end_1f} :catch_20

    goto :goto_2d

    :catch_20
    move-exception p2

    .line 1240
    iget-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p3, p3, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Unable to post to the supplied executor."

    invoke-static {p3, v0, p2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1241
    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->close()V

    :goto_2d
    return-void
.end method

.method private updatePauseRangeStateAndCheckIfBufferPaused(Landroid/media/MediaCodec$BufferInfo;)Z
    .registers 8

    .line 1345
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->updateTotalPausedDuration(J)V

    .line 1346
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isInPauseRange(J)Z

    move-result v0

    .line 1347
    iget-boolean v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a1

    if-eqz v0, :cond_a1

    .line 1348
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v1, "Switch to pause state"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 1355
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1356
    :try_start_27
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1357
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 1358
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_9e

    .line 1359
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1364
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne v0, v1, :cond_77

    .line 1365
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    if-nez v0, :cond_52

    const-class v0, Landroidx/camera/video/internal/compat/quirk/AudioEncoderIgnoresInputTimestampQuirk;

    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_52

    goto :goto_77

    .line 1368
    :cond_52
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    if-eqz v0, :cond_61

    const-class v0, Landroidx/camera/video/internal/compat/quirk/VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;

    invoke-static {v0}, Landroidx/camera/video/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_61

    goto :goto_77

    .line 1372
    :cond_61
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderInput:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    instance-of v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    if-eqz v0, :cond_72

    .line 1373
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderInput:Landroidx/camera/video/internal/encoder/Encoder$EncoderInput;

    check-cast v0, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->setActive(Z)V

    .line 1375
    :cond_72
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/encoder/EncoderImpl;->setMediaCodecPaused(Z)V

    .line 1381
    :cond_77
    :goto_77
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLastDataStopTimestamp:Ljava/lang/Long;

    .line 1384
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    if-eqz p1, :cond_be

    .line 1385
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_94

    .line 1386
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mStopTimeoutFuture:Ljava/util/concurrent/Future;

    invoke-interface {p1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1388
    :cond_94
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->signalCodecStop()V

    .line 1389
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iput-boolean v2, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mPendingCodecStop:Z

    goto :goto_be

    :catchall_9e
    move-exception p1

    .line 1358
    :try_start_9f
    monitor-exit v4
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw p1

    :cond_a1
    if-eqz v1, :cond_be

    if-nez v0, :cond_be

    .line 1393
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v1, "Switch to resume state"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iput-boolean v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    .line 1395
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-boolean v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mIsVideoEncoder:Z

    if-eqz v0, :cond_be

    invoke-static {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->isKeyFrame(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-nez p1, :cond_be

    .line 1396
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsKeyFrameRequired:Z

    .line 1400
    :cond_be
    :goto_be
    iget-boolean p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mIsOutputBufferInPauseState:Z

    return p1
.end method


# virtual methods
.method synthetic lambda$onError$4$androidx-camera-video-internal-encoder-EncoderImpl$MediaCodecCallback(Landroid/media/MediaCodec$CodecException;)V
    .registers 4

    .line 1406
    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->$SwitchMap$androidx$camera$video$internal$encoder$EncoderImpl$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 1421
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1413
    :pswitch_28
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {v0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    :pswitch_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method synthetic lambda$onInputBufferAvailable$0$androidx-camera-video-internal-encoder-EncoderImpl$MediaCodecCallback(I)V
    .registers 4

    .line 1071
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    if-eqz v0, :cond_e

    .line 1072
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Receives input frame after codec is reset."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1075
    :cond_e
    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->$SwitchMap$androidx$camera$video$internal$encoder$EncoderImpl$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 1091
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1082
    :pswitch_36
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mFreeInputBufferIndexQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1083
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->matchAcquisitionsAndFreeBufferIndexes()V

    :pswitch_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_46
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method synthetic lambda$onOutputBufferAvailable$1$androidx-camera-video-internal-encoder-EncoderImpl$MediaCodecCallback(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V
    .registers 5

    .line 1171
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    if-ne v0, v1, :cond_9

    return-void

    .line 1176
    :cond_9
    :try_start_9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p1

    .line 1178
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p2, p2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Unable to post to the supplied executor."

    invoke-static {p2, v0, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    return-void
.end method

.method synthetic lambda$onOutputBufferAvailable$2$androidx-camera-video-internal-encoder-EncoderImpl$MediaCodecCallback(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .registers 11

    .line 1100
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    if-eqz v0, :cond_e

    .line 1101
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string p2, "Receives frame after codec is reset."

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_e
    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->$SwitchMap$androidx$camera$video$internal$encoder$EncoderImpl$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f6

    .line 1189
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p3, p3, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1113
    :pswitch_36
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_3b
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 1115
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1116
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_f2

    .line 1123
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    const/4 v3, 0x1

    if-nez v0, :cond_61

    .line 1124
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasSendStartCallback:Z

    .line 1126
    :try_start_4b
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_56
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_61

    :catch_57
    move-exception v0

    .line 1128
    iget-object v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v4, v4, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v5, "Unable to post to the supplied executor."

    invoke-static {v4, v5, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    :cond_61
    :goto_61
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->checkBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1133
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    if-nez v0, :cond_af

    .line 1134
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasFirstData:Z

    .line 1136
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data timestampUs = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data timebase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v5, v5, Landroidx/camera/video/internal/encoder/EncoderImpl;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current system uptimeMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current system realtimeMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1136
    invoke-static {v0, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :cond_af
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->resolveOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    .line 1146
    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mLastSentAdjustedTimeUs:J

    .line 1148
    :try_start_b7
    new-instance v4, Landroidx/camera/video/internal/encoder/EncodedDataImpl;

    invoke-direct {v4, p2, p3, v0}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;-><init>(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1150
    invoke-direct {p0, v4, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->sendEncodedData(Landroidx/camera/video/internal/encoder/EncodedDataImpl;Landroidx/camera/video/internal/encoder/EncoderCallback;Ljava/util/concurrent/Executor;)V
    :try_end_bf
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_b7 .. :try_end_bf} :catch_c0

    goto :goto_db

    :catch_c0
    move-exception p1

    .line 1152
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    return-void

    :cond_c7
    const/16 p2, -0x270f

    if-eq p3, p2, :cond_db

    .line 1159
    :try_start_cb
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p2, p2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_d3
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_cb .. :try_end_d3} :catch_d4

    goto :goto_db

    :catch_d4
    move-exception p1

    .line 1161
    iget-object p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    invoke-virtual {p2, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    return-void

    .line 1168
    :cond_db
    :goto_db
    iget-boolean p2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    if-nez p2, :cond_f5

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->isEndOfStream(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 1169
    iput-boolean v3, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mHasEndData:Z

    .line 1170
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    new-instance p2, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, v2, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/encoder/EncoderCallback;)V

    invoke-virtual {p1, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl;->stopMediaCodec(Ljava/lang/Runnable;)V

    goto :goto_f5

    :catchall_f2
    move-exception p1

    .line 1116
    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw p1

    :cond_f5
    :goto_f5
    :pswitch_f5
    return-void

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_f5
        :pswitch_f5
    .end packed-switch
.end method

.method synthetic lambda$onOutputFormatChanged$7$androidx-camera-video-internal-encoder-EncoderImpl$MediaCodecCallback(Landroid/media/MediaFormat;)V
    .registers 5

    .line 1430
    iget-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    if-eqz v0, :cond_e

    .line 1431
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v0, "Receives onOutputFormatChanged after codec is reset."

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1434
    :cond_e
    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$2;->$SwitchMap$androidx$camera$video$internal$encoder$EncoderImpl$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 1460
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mState:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1443
    :pswitch_36
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_3b
    iget-object v1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v1, v1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallback:Landroidx/camera/video/internal/encoder/EncoderCallback;

    .line 1445
    iget-object v2, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v2, v2, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1446
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_58

    .line 1448
    :try_start_44
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/video/internal/encoder/EncoderCallback;Landroid/media/MediaFormat;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_5b

    :catch_4d
    move-exception p1

    .line 1451
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mTag:Ljava/lang/String;

    const-string v1, "Unable to post to the supplied executor."

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    :catchall_58
    move-exception p1

    .line 1446
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw p1

    :goto_5b
    :pswitch_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 4

    .line 1405
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$CodecException;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    .line 1070
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 6

    .line 1099
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object v0, v0, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 4

    .line 1429
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    iget-object p1, p1, Landroidx/camera/video/internal/encoder/EncoderImpl;->mEncoderExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaFormat;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x1

    .line 1468
    iput-boolean v0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->mStopped:Z

    return-void
.end method
