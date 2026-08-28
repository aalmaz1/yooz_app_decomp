.class public Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final HEVC_MAX_INPUT_SIZE_THRESHOLD:I = 0x200000

.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MIN_EARLY_US_LATE_THRESHOLD:J = -0x7530L

.field private static final MIN_EARLY_US_VERY_LATE_THRESHOLD:J = -0x7a120L

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private decodedVideoSize:Landroidx/media3/common/VideoSize;

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private displaySurface:Landroid/view/Surface;

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private hasSetVideoSink:Z

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private lastFrameReleaseTimeNs:J

.field private final maxDroppedFramesToNotify:I

.field private outputResolution:Landroidx/media3/common/util/Size;

.field private final ownsVideoSink:Z

.field private placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private rendererPriority:I

.field private reportedVideoSize:Landroidx/media3/common/VideoSize;

.field private scalingMode:I

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private videoFrameProcessingOffsetCount:I

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field private videoSink:Landroidx/media3/exoplayer/video/VideoSink;

.field private final videoSinkProvider:Landroidx/media3/exoplayer/video/VideoSinkProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 120
    fill-array-data v0, :array_a

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .registers 21

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 294
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V
    .registers 23

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 337
    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IFLandroidx/media3/exoplayer/video/VideoSinkProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IFLandroidx/media3/exoplayer/video/VideoSinkProvider;)V
    .registers 20

    move-object v6, p0

    move-object/from16 v7, p11

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 387
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    move/from16 v1, p9

    .line 394
    iput v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 395
    iput-object v7, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSinkProvider:Landroidx/media3/exoplayer/video/VideoSinkProvider;

    .line 396
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    move-object v2, p7

    move-object/from16 v3, p8

    invoke-direct {v1, p7, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v7, :cond_29

    move v3, v1

    goto :goto_2a

    :cond_29
    move v3, v2

    .line 397
    :goto_2a
    iput-boolean v3, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->ownsVideoSink:Z

    if-nez v7, :cond_37

    .line 401
    new-instance v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    move-wide v4, p4

    invoke-direct {v3, v0, p0, p4, p5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    iput-object v3, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    goto :goto_3d

    .line 405
    :cond_37
    invoke-interface/range {p11 .. p11}, Landroidx/media3/exoplayer/video/VideoSinkProvider;->getVideoFrameReleaseControl()Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 407
    :goto_3d
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 408
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 409
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Landroidx/media3/common/util/Size;

    .line 410
    iput v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 411
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 412
    iput v2, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    const/4 v0, 0x0

    .line 413
    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    const/16 v0, -0x3e8

    .line 414
    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 196
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .registers 19

    .line 225
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v2

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 223
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .registers 20

    .line 259
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v2

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    .line 257
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;
    .registers 1

    .line 110
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 110
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyRenderedFirstFrame()V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .registers 4

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 1

    .line 110
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 110
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method private static codecAppliesRotation()Z
    .registers 2

    .line 2059
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .registers 4

    const-string/jumbo v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1844
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1845
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    const-string v0, "NVIDIA"

    .line 2077
    sget-object v1, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .registers 15

    .line 2148
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x1c

    if-gt v0, v10, :cond_7a

    .line 2155
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_8b8

    :goto_1b
    move v0, v7

    goto/16 :goto_75

    :sswitch_1e
    const-string v11, "machuca"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_1b

    :cond_27
    move v0, v1

    goto :goto_75

    :sswitch_29
    const-string v11, "once"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_1b

    :cond_32
    move v0, v2

    goto :goto_75

    :sswitch_34
    const-string v11, "magnolia"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_1b

    :cond_3d
    move v0, v3

    goto :goto_75

    :sswitch_3f
    const-string v11, "aquaman"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_1b

    :cond_48
    move v0, v4

    goto :goto_75

    :sswitch_4a
    const-string v11, "oneday"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_1b

    :cond_53
    move v0, v5

    goto :goto_75

    :sswitch_55
    const-string v11, "dangalUHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_1b

    :cond_5e
    move v0, v6

    goto :goto_75

    :sswitch_60
    const-string v11, "dangalFHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_1b

    :cond_69
    move v0, v9

    goto :goto_75

    :sswitch_6b
    const-string v11, "dangal"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_1b

    :cond_74
    move v0, v8

    :goto_75
    packed-switch v0, :pswitch_data_8da

    goto :goto_7a

    :pswitch_79
    return v9

    .line 2169
    :cond_7a
    :goto_7a
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x1b

    if-gt v0, v11, :cond_8b

    const-string v0, "HWEML"

    sget-object v12, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    return v9

    .line 2174
    :cond_8b
    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x8

    sparse-switch v12, :sswitch_data_8ee

    :goto_99
    move v0, v7

    goto/16 :goto_ff

    :sswitch_9c
    const-string v12, "AFTEUFF014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto :goto_99

    :cond_a5
    move v0, v13

    goto/16 :goto_ff

    :sswitch_a8
    const-string v12, "AFTSO001"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_99

    :cond_b1
    move v0, v1

    goto :goto_ff

    :sswitch_b3
    const-string v12, "AFTEU014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto :goto_99

    :cond_bc
    move v0, v2

    goto :goto_ff

    :sswitch_be
    const-string v12, "AFTEU011"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_99

    :cond_c7
    move v0, v3

    goto :goto_ff

    :sswitch_c9
    const-string v12, "AFTR"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_99

    :cond_d2
    move v0, v4

    goto :goto_ff

    :sswitch_d4
    const-string v12, "AFTN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto :goto_99

    :cond_dd
    move v0, v5

    goto :goto_ff

    :sswitch_df
    const-string v12, "AFTA"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_99

    :cond_e8
    move v0, v6

    goto :goto_ff

    :sswitch_ea
    const-string v12, "AFTKMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto :goto_99

    :cond_f3
    move v0, v9

    goto :goto_ff

    :sswitch_f5
    const-string v12, "AFTJMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    goto :goto_99

    :cond_fe
    move v0, v8

    :goto_ff
    packed-switch v0, :pswitch_data_914

    .line 2189
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v12, 0x1a

    if-gt v0, v12, :cond_8b6

    .line 2209
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_92a

    :goto_114
    move v1, v7

    goto/16 :goto_8a4

    :sswitch_117
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_120

    goto :goto_114

    :cond_120
    const/16 v1, 0x8b

    goto/16 :goto_8a4

    :sswitch_124
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    goto :goto_114

    :cond_12d
    const/16 v1, 0x8a

    goto/16 :goto_8a4

    :sswitch_131
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a

    goto :goto_114

    :cond_13a
    const/16 v1, 0x89

    goto/16 :goto_8a4

    :sswitch_13e
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    goto :goto_114

    :cond_147
    const/16 v1, 0x88

    goto/16 :goto_8a4

    :sswitch_14b
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    goto :goto_114

    :cond_154
    const/16 v1, 0x87

    goto/16 :goto_8a4

    :sswitch_158
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    goto :goto_114

    :cond_161
    const/16 v1, 0x86

    goto/16 :goto_8a4

    :sswitch_165
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16e

    goto :goto_114

    :cond_16e
    const/16 v1, 0x85

    goto/16 :goto_8a4

    :sswitch_172
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17b

    goto :goto_114

    :cond_17b
    const/16 v1, 0x84

    goto/16 :goto_8a4

    :sswitch_17f
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188

    goto :goto_114

    :cond_188
    const/16 v1, 0x83

    goto/16 :goto_8a4

    :sswitch_18c
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    goto/16 :goto_114

    :cond_196
    const/16 v1, 0x82

    goto/16 :goto_8a4

    :sswitch_19a
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto/16 :goto_114

    :cond_1a4
    const/16 v1, 0x81

    goto/16 :goto_8a4

    :sswitch_1a8
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b2

    goto/16 :goto_114

    :cond_1b2
    const/16 v1, 0x80

    goto/16 :goto_8a4

    :sswitch_1b6
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c0

    goto/16 :goto_114

    :cond_1c0
    const/16 v1, 0x7f

    goto/16 :goto_8a4

    :sswitch_1c4
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ce

    goto/16 :goto_114

    :cond_1ce
    const/16 v1, 0x7e

    goto/16 :goto_8a4

    :sswitch_1d2
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    goto/16 :goto_114

    :cond_1dc
    const/16 v1, 0x7d

    goto/16 :goto_8a4

    :sswitch_1e0
    const-string/jumbo v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1eb

    goto/16 :goto_114

    :cond_1eb
    const/16 v1, 0x7c

    goto/16 :goto_8a4

    :sswitch_1ef
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f9

    goto/16 :goto_114

    :cond_1f9
    const/16 v1, 0x7b

    goto/16 :goto_8a4

    :sswitch_1fd
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_207

    goto/16 :goto_114

    :cond_207
    const/16 v1, 0x7a

    goto/16 :goto_8a4

    :sswitch_20b
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_215

    goto/16 :goto_114

    :cond_215
    const/16 v1, 0x79

    goto/16 :goto_8a4

    :sswitch_219
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_223

    goto/16 :goto_114

    :cond_223
    const/16 v1, 0x78

    goto/16 :goto_8a4

    :sswitch_227
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_231

    goto/16 :goto_114

    :cond_231
    const/16 v1, 0x77

    goto/16 :goto_8a4

    :sswitch_235
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23f

    goto/16 :goto_114

    :cond_23f
    const/16 v1, 0x76

    goto/16 :goto_8a4

    :sswitch_243
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24d

    goto/16 :goto_114

    :cond_24d
    const/16 v1, 0x75

    goto/16 :goto_8a4

    :sswitch_251
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25b

    goto/16 :goto_114

    :cond_25b
    const/16 v1, 0x74

    goto/16 :goto_8a4

    :sswitch_25f
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_269

    goto/16 :goto_114

    :cond_269
    const/16 v1, 0x73

    goto/16 :goto_8a4

    :sswitch_26d
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277

    goto/16 :goto_114

    :cond_277
    const/16 v1, 0x72

    goto/16 :goto_8a4

    :sswitch_27b
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_285

    goto/16 :goto_114

    :cond_285
    const/16 v1, 0x71

    goto/16 :goto_8a4

    :sswitch_289
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_293

    goto/16 :goto_114

    :cond_293
    const/16 v1, 0x70

    goto/16 :goto_8a4

    :sswitch_297
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a1

    goto/16 :goto_114

    :cond_2a1
    const/16 v1, 0x6f

    goto/16 :goto_8a4

    :sswitch_2a5
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2af

    goto/16 :goto_114

    :cond_2af
    const/16 v1, 0x6e

    goto/16 :goto_8a4

    :sswitch_2b3
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bd

    goto/16 :goto_114

    :cond_2bd
    const/16 v1, 0x6d

    goto/16 :goto_8a4

    :sswitch_2c1
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2cb

    goto/16 :goto_114

    :cond_2cb
    const/16 v1, 0x6c

    goto/16 :goto_8a4

    :sswitch_2cf
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d9

    goto/16 :goto_114

    :cond_2d9
    const/16 v1, 0x6b

    goto/16 :goto_8a4

    :sswitch_2dd
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e7

    goto/16 :goto_114

    :cond_2e7
    const/16 v1, 0x6a

    goto/16 :goto_8a4

    :sswitch_2eb
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f5

    goto/16 :goto_114

    :cond_2f5
    const/16 v1, 0x69

    goto/16 :goto_8a4

    :sswitch_2f9
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_303

    goto/16 :goto_114

    :cond_303
    const/16 v1, 0x68

    goto/16 :goto_8a4

    :sswitch_307
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_311

    goto/16 :goto_114

    :cond_311
    const/16 v1, 0x67

    goto/16 :goto_8a4

    :sswitch_315
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31f

    goto/16 :goto_114

    :cond_31f
    const/16 v1, 0x66

    goto/16 :goto_8a4

    :sswitch_323
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32d

    goto/16 :goto_114

    :cond_32d
    const/16 v1, 0x65

    goto/16 :goto_8a4

    :sswitch_331
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33b

    goto/16 :goto_114

    :cond_33b
    const/16 v1, 0x64

    goto/16 :goto_8a4

    :sswitch_33f
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_349

    goto/16 :goto_114

    :cond_349
    const/16 v1, 0x63

    goto/16 :goto_8a4

    :sswitch_34d
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_357

    goto/16 :goto_114

    :cond_357
    const/16 v1, 0x62

    goto/16 :goto_8a4

    :sswitch_35b
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_365

    goto/16 :goto_114

    :cond_365
    const/16 v1, 0x61

    goto/16 :goto_8a4

    :sswitch_369
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_373

    goto/16 :goto_114

    :cond_373
    const/16 v1, 0x60

    goto/16 :goto_8a4

    :sswitch_377
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_381

    goto/16 :goto_114

    :cond_381
    const/16 v1, 0x5f

    goto/16 :goto_8a4

    :sswitch_385
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38f

    goto/16 :goto_114

    :cond_38f
    const/16 v1, 0x5e

    goto/16 :goto_8a4

    :sswitch_393
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39d

    goto/16 :goto_114

    :cond_39d
    const/16 v1, 0x5d

    goto/16 :goto_8a4

    :sswitch_3a1
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ab

    goto/16 :goto_114

    :cond_3ab
    const/16 v1, 0x5c

    goto/16 :goto_8a4

    :sswitch_3af
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b9

    goto/16 :goto_114

    :cond_3b9
    const/16 v1, 0x5b

    goto/16 :goto_8a4

    :sswitch_3bd
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c7

    goto/16 :goto_114

    :cond_3c7
    const/16 v1, 0x5a

    goto/16 :goto_8a4

    :sswitch_3cb
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d5

    goto/16 :goto_114

    :cond_3d5
    const/16 v1, 0x59

    goto/16 :goto_8a4

    :sswitch_3d9
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e3

    goto/16 :goto_114

    :cond_3e3
    const/16 v1, 0x58

    goto/16 :goto_8a4

    :sswitch_3e7
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f1

    goto/16 :goto_114

    :cond_3f1
    const/16 v1, 0x57

    goto/16 :goto_8a4

    :sswitch_3f5
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ff

    goto/16 :goto_114

    :cond_3ff
    const/16 v1, 0x56

    goto/16 :goto_8a4

    :sswitch_403
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40d

    goto/16 :goto_114

    :cond_40d
    const/16 v1, 0x55

    goto/16 :goto_8a4

    :sswitch_411
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41b

    goto/16 :goto_114

    :cond_41b
    const/16 v1, 0x54

    goto/16 :goto_8a4

    :sswitch_41f
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_429

    goto/16 :goto_114

    :cond_429
    const/16 v1, 0x53

    goto/16 :goto_8a4

    :sswitch_42d
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_437

    goto/16 :goto_114

    :cond_437
    const/16 v1, 0x52

    goto/16 :goto_8a4

    :sswitch_43b
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_445

    goto/16 :goto_114

    :cond_445
    const/16 v1, 0x51

    goto/16 :goto_8a4

    :sswitch_449
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_453

    goto/16 :goto_114

    :cond_453
    const/16 v1, 0x50

    goto/16 :goto_8a4

    :sswitch_457
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_461

    goto/16 :goto_114

    :cond_461
    const/16 v1, 0x4f

    goto/16 :goto_8a4

    :sswitch_465
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46f

    goto/16 :goto_114

    :cond_46f
    const/16 v1, 0x4e

    goto/16 :goto_8a4

    :sswitch_473
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47d

    goto/16 :goto_114

    :cond_47d
    const/16 v1, 0x4d

    goto/16 :goto_8a4

    :sswitch_481
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48b

    goto/16 :goto_114

    :cond_48b
    const/16 v1, 0x4c

    goto/16 :goto_8a4

    :sswitch_48f
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_499

    goto/16 :goto_114

    :cond_499
    const/16 v1, 0x4b

    goto/16 :goto_8a4

    :sswitch_49d
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a7

    goto/16 :goto_114

    :cond_4a7
    const/16 v1, 0x4a

    goto/16 :goto_8a4

    :sswitch_4ab
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b5

    goto/16 :goto_114

    :cond_4b5
    const/16 v1, 0x49

    goto/16 :goto_8a4

    :sswitch_4b9
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c3

    goto/16 :goto_114

    :cond_4c3
    const/16 v1, 0x48

    goto/16 :goto_8a4

    :sswitch_4c7
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d1

    goto/16 :goto_114

    :cond_4d1
    const/16 v1, 0x47

    goto/16 :goto_8a4

    :sswitch_4d5
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4df

    goto/16 :goto_114

    :cond_4df
    const/16 v1, 0x46

    goto/16 :goto_8a4

    :sswitch_4e3
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ed

    goto/16 :goto_114

    :cond_4ed
    const/16 v1, 0x45

    goto/16 :goto_8a4

    :sswitch_4f1
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4fb

    goto/16 :goto_114

    :cond_4fb
    const/16 v1, 0x44

    goto/16 :goto_8a4

    :sswitch_4ff
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_509

    goto/16 :goto_114

    :cond_509
    const/16 v1, 0x43

    goto/16 :goto_8a4

    :sswitch_50d
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_517

    goto/16 :goto_114

    :cond_517
    const/16 v1, 0x42

    goto/16 :goto_8a4

    :sswitch_51b
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_525

    goto/16 :goto_114

    :cond_525
    const/16 v1, 0x41

    goto/16 :goto_8a4

    :sswitch_529
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_533

    goto/16 :goto_114

    :cond_533
    const/16 v1, 0x40

    goto/16 :goto_8a4

    :sswitch_537
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_541

    goto/16 :goto_114

    :cond_541
    const/16 v1, 0x3f

    goto/16 :goto_8a4

    :sswitch_545
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54f

    goto/16 :goto_114

    :cond_54f
    const/16 v1, 0x3e

    goto/16 :goto_8a4

    :sswitch_553
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55d

    goto/16 :goto_114

    :cond_55d
    const/16 v1, 0x3d

    goto/16 :goto_8a4

    :sswitch_561
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56b

    goto/16 :goto_114

    :cond_56b
    const/16 v1, 0x3c

    goto/16 :goto_8a4

    :sswitch_56f
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_579

    goto/16 :goto_114

    :cond_579
    const/16 v1, 0x3b

    goto/16 :goto_8a4

    :sswitch_57d
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_587

    goto/16 :goto_114

    :cond_587
    const/16 v1, 0x3a

    goto/16 :goto_8a4

    :sswitch_58b
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_595

    goto/16 :goto_114

    :cond_595
    const/16 v1, 0x39

    goto/16 :goto_8a4

    :sswitch_599
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a3

    goto/16 :goto_114

    :cond_5a3
    const/16 v1, 0x38

    goto/16 :goto_8a4

    :sswitch_5a7
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b1

    goto/16 :goto_114

    :cond_5b1
    const/16 v1, 0x37

    goto/16 :goto_8a4

    :sswitch_5b5
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5bf

    goto/16 :goto_114

    :cond_5bf
    const/16 v1, 0x36

    goto/16 :goto_8a4

    :sswitch_5c3
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5cd

    goto/16 :goto_114

    :cond_5cd
    const/16 v1, 0x35

    goto/16 :goto_8a4

    :sswitch_5d1
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5db

    goto/16 :goto_114

    :cond_5db
    const/16 v1, 0x34

    goto/16 :goto_8a4

    :sswitch_5df
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e9

    goto/16 :goto_114

    :cond_5e9
    const/16 v1, 0x33

    goto/16 :goto_8a4

    :sswitch_5ed
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f7

    goto/16 :goto_114

    :cond_5f7
    const/16 v1, 0x32

    goto/16 :goto_8a4

    :sswitch_5fb
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_605

    goto/16 :goto_114

    :cond_605
    const/16 v1, 0x31

    goto/16 :goto_8a4

    :sswitch_609
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_613

    goto/16 :goto_114

    :cond_613
    const/16 v1, 0x30

    goto/16 :goto_8a4

    :sswitch_617
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_621

    goto/16 :goto_114

    :cond_621
    const/16 v1, 0x2f

    goto/16 :goto_8a4

    :sswitch_625
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62f

    goto/16 :goto_114

    :cond_62f
    const/16 v1, 0x2e

    goto/16 :goto_8a4

    :sswitch_633
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63d

    goto/16 :goto_114

    :cond_63d
    const/16 v1, 0x2d

    goto/16 :goto_8a4

    :sswitch_641
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64b

    goto/16 :goto_114

    :cond_64b
    const/16 v1, 0x2c

    goto/16 :goto_8a4

    :sswitch_64f
    const-string/jumbo v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65a

    goto/16 :goto_114

    :cond_65a
    const/16 v1, 0x2b

    goto/16 :goto_8a4

    :sswitch_65e
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_668

    goto/16 :goto_114

    :cond_668
    const/16 v1, 0x2a

    goto/16 :goto_8a4

    :sswitch_66c
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_676

    goto/16 :goto_114

    :cond_676
    const/16 v1, 0x29

    goto/16 :goto_8a4

    :sswitch_67a
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_684

    goto/16 :goto_114

    :cond_684
    const/16 v1, 0x28

    goto/16 :goto_8a4

    :sswitch_688
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_692

    goto/16 :goto_114

    :cond_692
    const/16 v1, 0x27

    goto/16 :goto_8a4

    :sswitch_696
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a0

    goto/16 :goto_114

    :cond_6a0
    const/16 v1, 0x26

    goto/16 :goto_8a4

    :sswitch_6a4
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ae

    goto/16 :goto_114

    :cond_6ae
    const/16 v1, 0x25

    goto/16 :goto_8a4

    :sswitch_6b2
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6bc

    goto/16 :goto_114

    :cond_6bc
    const/16 v1, 0x24

    goto/16 :goto_8a4

    :sswitch_6c0
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ca

    goto/16 :goto_114

    :cond_6ca
    const/16 v1, 0x23

    goto/16 :goto_8a4

    :sswitch_6ce
    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d9

    goto/16 :goto_114

    :cond_6d9
    const/16 v1, 0x22

    goto/16 :goto_8a4

    :sswitch_6dd
    const-string/jumbo v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e8

    goto/16 :goto_114

    :cond_6e8
    const/16 v1, 0x21

    goto/16 :goto_8a4

    :sswitch_6ec
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f6

    goto/16 :goto_114

    :cond_6f6
    const/16 v1, 0x20

    goto/16 :goto_8a4

    :sswitch_6fa
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_704

    goto/16 :goto_114

    :cond_704
    const/16 v1, 0x1f

    goto/16 :goto_8a4

    :sswitch_708
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_712

    goto/16 :goto_114

    :cond_712
    const/16 v1, 0x1e

    goto/16 :goto_8a4

    :sswitch_716
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_720

    goto/16 :goto_114

    :cond_720
    const/16 v1, 0x1d

    goto/16 :goto_8a4

    :sswitch_724
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72e

    goto/16 :goto_114

    :cond_72e
    move v1, v10

    goto/16 :goto_8a4

    :sswitch_731
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    goto/16 :goto_114

    :cond_73b
    move v1, v11

    goto/16 :goto_8a4

    :sswitch_73e
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_748

    goto/16 :goto_114

    :cond_748
    move v1, v12

    goto/16 :goto_8a4

    :sswitch_74b
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_755

    goto/16 :goto_114

    :cond_755
    const/16 v1, 0x19

    goto/16 :goto_8a4

    :sswitch_759
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_763

    goto/16 :goto_114

    :cond_763
    const/16 v1, 0x18

    goto/16 :goto_8a4

    :sswitch_767
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_771

    goto/16 :goto_114

    :cond_771
    const/16 v1, 0x17

    goto/16 :goto_8a4

    :sswitch_775
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77f

    goto/16 :goto_114

    :cond_77f
    const/16 v1, 0x16

    goto/16 :goto_8a4

    :sswitch_783
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78d

    goto/16 :goto_114

    :cond_78d
    const/16 v1, 0x15

    goto/16 :goto_8a4

    :sswitch_791
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79b

    goto/16 :goto_114

    :cond_79b
    const/16 v1, 0x14

    goto/16 :goto_8a4

    :sswitch_79f
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a9

    goto/16 :goto_114

    :cond_7a9
    const/16 v1, 0x13

    goto/16 :goto_8a4

    :sswitch_7ad
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b7

    goto/16 :goto_114

    :cond_7b7
    const/16 v1, 0x12

    goto/16 :goto_8a4

    :sswitch_7bb
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c5

    goto/16 :goto_114

    :cond_7c5
    const/16 v1, 0x11

    goto/16 :goto_8a4

    :sswitch_7c9
    const-string/jumbo v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d4

    goto/16 :goto_114

    :cond_7d4
    const/16 v1, 0x10

    goto/16 :goto_8a4

    :sswitch_7d8
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e2

    goto/16 :goto_114

    :cond_7e2
    const/16 v1, 0xf

    goto/16 :goto_8a4

    :sswitch_7e6
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f0

    goto/16 :goto_114

    :cond_7f0
    const/16 v1, 0xe

    goto/16 :goto_8a4

    :sswitch_7f4
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7fe

    goto/16 :goto_114

    :cond_7fe
    const/16 v1, 0xd

    goto/16 :goto_8a4

    :sswitch_802
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80c

    goto/16 :goto_114

    :cond_80c
    const/16 v1, 0xc

    goto/16 :goto_8a4

    :sswitch_810
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81a

    goto/16 :goto_114

    :cond_81a
    const/16 v1, 0xb

    goto/16 :goto_8a4

    :sswitch_81e
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_828

    goto/16 :goto_114

    :cond_828
    const/16 v1, 0xa

    goto/16 :goto_8a4

    :sswitch_82c
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_836

    goto/16 :goto_114

    :cond_836
    const/16 v1, 0x9

    goto/16 :goto_8a4

    :sswitch_83a
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_844

    goto/16 :goto_114

    :cond_844
    move v1, v13

    goto/16 :goto_8a4

    :sswitch_847
    const-string v2, "PGN528"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a4

    goto/16 :goto_114

    :sswitch_851
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85b

    goto/16 :goto_114

    :cond_85b
    move v1, v2

    goto :goto_8a4

    :sswitch_85d
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_867

    goto/16 :goto_114

    :cond_867
    move v1, v3

    goto :goto_8a4

    :sswitch_869
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_873

    goto/16 :goto_114

    :cond_873
    move v1, v4

    goto :goto_8a4

    :sswitch_875
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87f

    goto/16 :goto_114

    :cond_87f
    move v1, v5

    goto :goto_8a4

    :sswitch_881
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88b

    goto/16 :goto_114

    :cond_88b
    move v1, v6

    goto :goto_8a4

    :sswitch_88d
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_897

    goto/16 :goto_114

    :cond_897
    move v1, v9

    goto :goto_8a4

    :sswitch_899
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a3

    goto/16 :goto_114

    :cond_8a3
    move v1, v8

    :cond_8a4
    :goto_8a4
    packed-switch v1, :pswitch_data_b5c

    .line 2354
    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b5

    goto :goto_8b6

    :cond_8b5
    :pswitch_8b5
    return v9

    :cond_8b6
    :goto_8b6
    return v8

    :pswitch_8b7
    return v9

    :sswitch_data_8b8
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6b
        -0x48b8f57f -> :sswitch_60
        -0x48b8bd30 -> :sswitch_55
        -0x3c588c8a -> :sswitch_4a
        -0x2d5172e2 -> :sswitch_3f
        -0x3de1850 -> :sswitch_34
        0x341e81 -> :sswitch_29
        0x31316ffa -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_8da
    .packed-switch 0x0
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
    .end packed-switch

    :sswitch_data_8ee
    .sparse-switch
        -0x14d76e6c -> :sswitch_f5
        -0x132295cd -> :sswitch_ea
        0x1e9d52 -> :sswitch_df
        0x1e9d5f -> :sswitch_d4
        0x1e9d63 -> :sswitch_c9
        0x6a6b6031 -> :sswitch_be
        0x6a6b6034 -> :sswitch_b3
        0x6b2deee6 -> :sswitch_a8
        0x7e53ab34 -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_914
    .packed-switch 0x0
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
        :pswitch_8b7
    .end packed-switch

    :sswitch_data_92a
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_899
        -0x7fd6c381 -> :sswitch_88d
        -0x7fd6c368 -> :sswitch_881
        -0x7d026749 -> :sswitch_875
        -0x78929d6a -> :sswitch_869
        -0x75f50a1e -> :sswitch_85d
        -0x75f4fe9d -> :sswitch_851
        -0x736f875c -> :sswitch_847
        -0x736f83c2 -> :sswitch_83a
        -0x736f83c1 -> :sswitch_82c
        -0x7327ce1c -> :sswitch_81e
        -0x705c574b -> :sswitch_810
        -0x651ebb62 -> :sswitch_802
        -0x6423293b -> :sswitch_7f4
        -0x604f5117 -> :sswitch_7e6
        -0x5f691e13 -> :sswitch_7d8
        -0x5ca40cc4 -> :sswitch_7c9
        -0x58520ec1 -> :sswitch_7bb
        -0x58520eba -> :sswitch_7ad
        -0x58520eb9 -> :sswitch_79f
        -0x4eaed329 -> :sswitch_791
        -0x4892fb4f -> :sswitch_783
        -0x465b3df3 -> :sswitch_775
        -0x43e6c939 -> :sswitch_767
        -0x3ec0fcc5 -> :sswitch_759
        -0x3b33cca0 -> :sswitch_74b
        -0x3b33cc9a -> :sswitch_73e
        -0x398ae3f6 -> :sswitch_731
        -0x391f0fb4 -> :sswitch_724
        -0x346837ae -> :sswitch_716
        -0x323788e3 -> :sswitch_708
        -0x30f57652 -> :sswitch_6fa
        -0x2f88a116 -> :sswitch_6ec
        -0x2f61ed98 -> :sswitch_6dd
        -0x2efd0837 -> :sswitch_6ce
        -0x2e9e9441 -> :sswitch_6c0
        -0x2247b8b1 -> :sswitch_6b2
        -0x1f0fa2b7 -> :sswitch_6a4
        -0x19af3b41 -> :sswitch_696
        -0x114fad3e -> :sswitch_688
        -0x10dae90b -> :sswitch_67a
        -0x1084b7b7 -> :sswitch_66c
        -0xa5988e9 -> :sswitch_65e
        -0x35f9fbf -> :sswitch_64f
        0x84e -> :sswitch_641
        0xa04 -> :sswitch_633
        0xa9b -> :sswitch_625
        0xa9f -> :sswitch_617
        0xc13 -> :sswitch_609
        0xd9b -> :sswitch_5fb
        0x11ebd -> :sswitch_5ed
        0x12711 -> :sswitch_5df
        0x127db -> :sswitch_5d1
        0x12beb -> :sswitch_5c3
        0x1334d -> :sswitch_5b5
        0x135c9 -> :sswitch_5a7
        0x13aea -> :sswitch_599
        0x158d2 -> :sswitch_58b
        0x1821e -> :sswitch_57d
        0x18220 -> :sswitch_56f
        0x18401 -> :sswitch_561
        0x18c69 -> :sswitch_553
        0x1716e6 -> :sswitch_545
        0x171ac8 -> :sswitch_537
        0x171ac9 -> :sswitch_529
        0x208c61 -> :sswitch_51b
        0x208c63 -> :sswitch_50d
        0x208c80 -> :sswitch_4ff
        0x208c9f -> :sswitch_4f1
        0x208cbe -> :sswitch_4e3
        0x208cc0 -> :sswitch_4d5
        0x252f5f -> :sswitch_4c7
        0x25981d -> :sswitch_4b9
        0x259b88 -> :sswitch_4ab
        0x290a13 -> :sswitch_49d
        0x3021fd -> :sswitch_48f
        0x321e47 -> :sswitch_481
        0x332327 -> :sswitch_473
        0x33ab63 -> :sswitch_465
        0x27691fb -> :sswitch_457
        0x30f8881 -> :sswitch_449
        0x30f8c42 -> :sswitch_43b
        0x349f581 -> :sswitch_42d
        0x3ab0ea7 -> :sswitch_41f
        0x3e53ea5 -> :sswitch_411
        0x3f25a44 -> :sswitch_403
        0x3f25a46 -> :sswitch_3f5
        0x3f25a49 -> :sswitch_3e7
        0x3f25e05 -> :sswitch_3d9
        0x3f25e07 -> :sswitch_3cb
        0x3f25e09 -> :sswitch_3bd
        0x3f261c6 -> :sswitch_3af
        0x48dce49 -> :sswitch_3a1
        0x48dd589 -> :sswitch_393
        0x48dd8af -> :sswitch_385
        0x4d36832 -> :sswitch_377
        0x4f0b0e7 -> :sswitch_369
        0x5e2479e -> :sswitch_35b
        0x60acc05 -> :sswitch_34d
        0x6214744 -> :sswitch_33f
        0x9d91379 -> :sswitch_331
        0xadc0551 -> :sswitch_323
        0xea056b3 -> :sswitch_315
        0x1121dbc3 -> :sswitch_307
        0x1255818c -> :sswitch_2f9
        0x1263990d -> :sswitch_2eb
        0x12d90f3a -> :sswitch_2dd
        0x12d90f4c -> :sswitch_2cf
        0x12d98b1b -> :sswitch_2c1
        0x12d98b22 -> :sswitch_2b3
        0x1844c711 -> :sswitch_2a5
        0x1e3e8044 -> :sswitch_297
        0x2f5336ed -> :sswitch_289
        0x2f54115e -> :sswitch_27b
        0x2f541849 -> :sswitch_26d
        0x31cf010e -> :sswitch_25f
        0x36ad82f4 -> :sswitch_251
        0x391a0b61 -> :sswitch_243
        0x3f3728cd -> :sswitch_235
        0x448ec687 -> :sswitch_227
        0x46260f63 -> :sswitch_219
        0x4c505106 -> :sswitch_20b
        0x4de67084 -> :sswitch_1fd
        0x506ac5a9 -> :sswitch_1ef
        0x5abad9cd -> :sswitch_1e0
        0x64d2e6e9 -> :sswitch_1d2
        0x64d2eac5 -> :sswitch_1c4
        0x65e4085b -> :sswitch_1b6
        0x6f373556 -> :sswitch_1a8
        0x719f1dcb -> :sswitch_19a
        0x75d9a0f0 -> :sswitch_18c
        0x7796d144 -> :sswitch_17f
        0x785bcb26 -> :sswitch_172
        0x78fc0e50 -> :sswitch_165
        0x790521fb -> :sswitch_158
        0x7933207f -> :sswitch_14b
        0x7a05a409 -> :sswitch_13e
        0x7a0696bd -> :sswitch_131
        0x7a16dfe7 -> :sswitch_124
        0x7a1f0e95 -> :sswitch_117
    .end sparse-switch

    :pswitch_data_b5c
    .packed-switch 0x0
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
        :pswitch_8b5
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .registers 11

    .line 1056
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    .line 1057
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f1

    if-ne v1, v2, :cond_b

    goto/16 :goto_f1

    .line 1063
    :cond_b
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "video/dolby-vision"

    .line 1064
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "video/avc"

    const-string/jumbo v6, "video/hevc"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_3d

    .line 1072
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 1074
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_3a

    if-eq p1, v7, :cond_3a

    if-ne p1, v8, :cond_3c

    :cond_3a
    move-object v3, v5

    goto :goto_3d

    :cond_3c
    move-object v3, v6

    .line 1084
    :cond_3d
    :goto_3d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    sparse-switch p1, :sswitch_data_f2

    :goto_48
    move v7, v2

    goto :goto_95

    :sswitch_4a
    const-string/jumbo p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_48

    :cond_54
    const/4 v7, 0x6

    goto :goto_95

    :sswitch_56
    const-string/jumbo p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_48

    :cond_60
    const/4 v7, 0x5

    goto :goto_95

    :sswitch_62
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_48

    :cond_69
    move v7, v4

    goto :goto_95

    :sswitch_6b
    const-string/jumbo p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_48

    :cond_75
    const/4 v7, 0x3

    goto :goto_95

    :sswitch_77
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7e

    goto :goto_48

    :cond_7e
    move v7, v8

    goto :goto_95

    :sswitch_80
    const-string/jumbo p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_48

    :sswitch_8a
    const-string/jumbo p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_48

    :cond_94
    const/4 v7, 0x0

    :cond_95
    :goto_95
    packed-switch v7, :pswitch_data_110

    return v2

    :pswitch_99
    mul-int/2addr v0, v1

    .line 1111
    invoke-static {v0, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :pswitch_9f
    const-string p1, "BRAVIA 4K 2015"

    .line 1099
    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_de

    const-string p1, "Amazon"

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 1100
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    const-string p1, "KFSOWI"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 1101
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_de

    const-string p1, "AFTS"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cc

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_cc

    goto :goto_de

    :cond_cc
    const/16 p0, 0x10

    .line 1108
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v0

    mul-int/2addr p1, v0

    mul-int/2addr p1, p0

    mul-int/2addr p1, p0

    .line 1109
    invoke-static {p1, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_de
    :goto_de
    return v2

    :pswitch_df
    mul-int/2addr v0, v1

    .line 1097
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    const/high16 p1, 0x200000

    .line 1095
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_eb
    mul-int/2addr v0, v1

    .line 1091
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_f1
    :goto_f1
    return v2

    :sswitch_data_f2
    .sparse-switch
        -0x63306f58 -> :sswitch_8a
        -0x631b55f6 -> :sswitch_80
        -0x63185e82 -> :sswitch_77
        0x46cdc642 -> :sswitch_6b
        0x4f62373a -> :sswitch_62
        0x5f50bed8 -> :sswitch_56
        0x5f50bed9 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_eb
        :pswitch_df
        :pswitch_eb
        :pswitch_9f
        :pswitch_eb
        :pswitch_99
    .end packed-switch
.end method

.method private static getCodecMaxSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;
    .registers 15

    .line 1997
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-eqz v0, :cond_f

    .line 1998
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_11

    :cond_f
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    :goto_11
    if-eqz v0, :cond_16

    .line 1999
    iget v3, p1, Landroidx/media3/common/Format;->width:I

    goto :goto_18

    :cond_16
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    :goto_18
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 2001
    sget-object v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_1e
    const/4 v7, 0x0

    if-ge v2, v6, :cond_74

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_74

    if-gt v9, v3, :cond_2b

    goto :goto_74

    .line 2006
    :cond_2b
    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_4e

    if-eqz v0, :cond_35

    move v7, v9

    goto :goto_36

    :cond_35
    move v7, v8

    :goto_36
    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v8, v9

    .line 2008
    :goto_3a
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 2011
    iget v8, p1, Landroidx/media3/common/Format;->frameRate:F

    if-eqz v7, :cond_71

    .line 2012
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    .line 2013
    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_71

    return-object v7

    :cond_4e
    const/16 v10, 0x10

    .line 2019
    :try_start_50
    invoke-static {v8, v10}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/2addr v8, v10

    .line 2020
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/2addr v9, v10

    mul-int v10, v8, v9

    .line 2021
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_71

    .line 2022
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_68

    move p1, v9

    goto :goto_69

    :cond_68
    move p1, v8

    :goto_69
    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v8, v9

    .line 2024
    :goto_6d
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_70
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_50 .. :try_end_70} :catch_74

    return-object p0

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catch_74
    :cond_74
    :goto_74
    return-object v7
.end method

.method private static getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 581
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 582
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 584
    :cond_9
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2b

    const-string/jumbo v0, "video/dolby-vision"

    iget-object v1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 586
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 588
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 590
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    return-object p0

    .line 594
    :cond_2b
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .registers 5

    .line 2044
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 2048
    iget-object p0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 2050
    iget-object v2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2052
    :cond_1c
    iget p0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 2054
    :cond_20
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method private static getMaxSampleSize(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2144
    div-int/2addr p0, p1

    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .registers 7

    .line 1812
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_1c

    .line 1813
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 1814
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 1815
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 1816
    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1817
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_1c
    return-void
.end method

.method private maybeNotifyRenderedFirstFrame()V
    .registers 2

    .line 1780
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onFrameReleasedIsFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_f

    .line 1781
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyRenderedFirstFrame()V

    :cond_f
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .registers 5

    .line 1822
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_12

    .line 1823
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    .line 1825
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    .line 1826
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_12
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .registers 3

    .line 1799
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1800
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 1801
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_17
    return-void
.end method

.method private maybeReleaseFrame(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJLandroidx/media3/common/Format;)Z
    .registers 19

    move-object v7, p0

    .line 1436
    iget-object v0, v7, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getReleaseTimeNs()J

    move-result-wide v8

    .line 1437
    iget-object v0, v7, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v10

    .line 1438
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v12, 0x1

    if-lt v0, v1, :cond_3b

    .line 1440
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldSkipBuffersWithIdenticalReleaseTime()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v0, v7, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_24

    .line 1445
    invoke-virtual/range {p0 .. p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_35

    :cond_24
    move-object v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v8

    move-object/from16 v5, p5

    .line 1447
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-wide v5, v8

    .line 1448
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1450
    :goto_35
    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1451
    iput-wide v8, v7, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    return v12

    :cond_3b
    const-wide/16 v0, 0x7530

    cmp-long v0, v10, v0

    const/4 v1, 0x0

    if-gez v0, :cond_6b

    const-wide/16 v2, 0x2af8

    cmp-long v0, v10, v2

    if-lez v0, :cond_5b

    const-wide/16 v2, 0x2710

    sub-long v2, v10, v2

    const-wide/16 v4, 0x3e8

    .line 1460
    :try_start_4e
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_5b

    .line 1462
    :catch_53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v1

    :cond_5b
    :goto_5b
    move-object v0, p0

    move-wide/from16 v1, p3

    move-wide v3, v8

    move-object/from16 v5, p5

    .line 1466
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    .line 1467
    invoke-virtual/range {p0 .. p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1468
    invoke-virtual {p0, v10, v11}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v12

    :cond_6b
    return v1
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 1792
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v1, :cond_d

    .line 1793
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 1806
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_9

    .line 1807
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_9
    return-void
.end method

.method private maybeSetKeyAllowFrameDrop(Landroid/media/MediaFormat;)V
    .registers 4

    .line 988
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isFrameDropAllowedOnInput()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "allow-frame-drop"

    const/4 v1, 0x0

    .line 989
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_10
    return-void
.end method

.method private maybeSetupTunnelingForFirstFrame()V
    .registers 5

    .line 1744
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_2e

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    goto :goto_2e

    .line 1749
    :cond_b
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_12

    return-void

    .line 1754
    :cond_12
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 1755
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2e

    .line 1759
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "tunnel-peek"

    const/4 v3, 0x1

    .line 1760
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1761
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V
    .registers 13

    .line 1478
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_e

    .line 1480
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1479
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_e
    return-void
.end method

.method private notifyRenderedFirstFrame()V
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "displaySurface"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1788
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1495
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private releasePlaceholderSurface()V
    .registers 4

    .line 1734
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 1735
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    :cond_9
    if-eqz v1, :cond_10

    .line 1738
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 1739
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_10
    return-void
.end method

.method private renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 9

    .line 1676
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 1677
    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    goto :goto_d

    .line 1679
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    :goto_d
    return-void
.end method

.method private static setHdr10PlusInfoV29(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V
    .registers 4

    .line 1832
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1833
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1834
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 878
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Landroid/view/Surface;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_27

    .line 882
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_11

    move-object p1, v0

    goto :goto_27

    .line 885
    :cond_11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 886
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 887
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 894
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_7d

    .line 895
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 896
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_36

    .line 897
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    :cond_36
    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 901
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 902
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 903
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v3, :cond_5d

    .line 904
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_57

    if-eqz p1, :cond_57

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v3, :cond_57

    .line 905
    invoke-virtual {p0, v2, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_5d

    .line 907
    :cond_57
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 908
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeInitCodecOrBypass()V

    :cond_5d
    :goto_5d
    if-eqz p1, :cond_70

    .line 911
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p1, v2, :cond_70

    .line 913
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    const/4 p1, 0x2

    if-ne v0, p1, :cond_79

    .line 919
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    goto :goto_79

    .line 923
    :cond_70
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 924
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_79

    .line 925
    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->clearOutputSurfaceInfo()V

    .line 928
    :cond_79
    :goto_79
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    goto :goto_89

    :cond_7d
    if-eqz p1, :cond_89

    .line 929
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p1, v0, :cond_89

    .line 932
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 933
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_89
    :goto_89
    return-void
.end method

.method private shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 1727
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1729
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1730
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method private updateCodecImportance()V
    .registers 5

    .line 1766
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1771
    :cond_7
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_22

    .line 1772
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1774
    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "importance"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1775
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_22
    return-void
.end method


# virtual methods
.method protected canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .registers 12

    .line 996
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    .line 998
    iget v1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    .line 999
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 1000
    iget v3, p3, Landroidx/media3/common/Format;->width:I

    iget v4, v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v3, v4, :cond_1a

    iget v3, p3, Landroidx/media3/common/Format;->height:I

    iget v4, v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v3, v4, :cond_1c

    :cond_1a
    or-int/lit16 v1, v1, 0x100

    .line 1003
    :cond_1c
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v3

    iget v2, v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v3, v2, :cond_26

    or-int/lit8 v1, v1, 0x40

    :cond_26
    move v7, v1

    .line 1007
    new-instance v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_2f

    const/4 p1, 0x0

    goto :goto_31

    .line 1011
    :cond_2f
    iget p1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    :goto_31
    move v6, p1

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v1
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OMX.google"

    .line 2103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2107
    :cond_a
    const-class p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 2108
    :try_start_d
    sget-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1a

    .line 2109
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    .line 2110
    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 2112
    :cond_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    .line 2113
    sget-boolean p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    :catchall_1e
    move-exception v0

    .line 2112
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .registers 5

    .line 1982
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "dropVideoBuffer"

    .line 1591
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1592
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1593
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1594
    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .registers 2

    .line 707
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_8

    .line 708
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->enableMayRenderStartOfStream()V

    goto :goto_d

    .line 710
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowReleaseFirstFrameBeforeStarted()V

    :goto_d
    return-void
.end method

.method protected getBufferTimestampAdjustmentUs()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getCodecBufferFlags(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .registers 6

    .line 1212
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_17

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_17

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_17

    const/16 p1, 0x20

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method protected getCodecMaxValues(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 15

    .line 1927
    iget v0, p2, Landroidx/media3/common/Format;->width:I

    .line 1928
    iget v1, p2, Landroidx/media3/common/Format;->height:I

    .line 1929
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v2

    .line 1930
    array-length v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_24

    if-eq v2, v4, :cond_1e

    .line 1934
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p1

    if-eq p1, v4, :cond_1e

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 1942
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1945
    :cond_1e
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1948
    :cond_24
    array-length v3, p3

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_28
    if-ge v7, v3, :cond_6e

    aget-object v9, p3, v7

    .line 1949
    iget-object v10, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v10, :cond_42

    iget-object v10, v9, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-nez v10, :cond_42

    .line 1952
    invoke-virtual {v9}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget-object v10, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v9

    .line 1954
    :cond_42
    invoke-virtual {p1, p2, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_6b

    .line 1955
    iget v10, v9, Landroidx/media3/common/Format;->width:I

    if-eq v10, v4, :cond_55

    iget v10, v9, Landroidx/media3/common/Format;->height:I

    if-ne v10, v4, :cond_53

    goto :goto_55

    :cond_53
    move v10, v6

    goto :goto_56

    :cond_55
    :goto_55
    move v10, v5

    :goto_56
    or-int/2addr v8, v10

    .line 1957
    iget v10, v9, Landroidx/media3/common/Format;->width:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1958
    iget v10, v9, Landroidx/media3/common/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1959
    invoke-static {p1, v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_6e
    if-eqz v8, :cond_d3

    .line 1963
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_d3

    .line 1966
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1967
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1972
    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    .line 1971
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p1

    .line 1969
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1973
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Codec max resolution adjusted to: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_d3
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .registers 3

    .line 945
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .registers 9

    .line 1124
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_5
    if-ge v1, p2, :cond_16

    aget-object v3, p3, v1

    .line 1125
    iget v3, v3, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_13

    .line 1127
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1b

    goto :goto_1d

    :cond_1b
    mul-float v0, v2, p1

    :goto_1d
    return v0
.end method

.method protected getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 552
    invoke-static {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 551
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .registers 14

    .line 954
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_d

    .line 956
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 958
    :cond_d
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 959
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxValues(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 960
    iget-boolean v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 967
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_22

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    move v8, v0

    move-object v2, p0

    move-object v3, p2

    move v6, p4

    .line 961
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    .line 968
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_4e

    .line 969
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 972
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_43

    .line 973
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 975
    :cond_43
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    goto :goto_4e

    .line 970
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 977
    :cond_4e
    :goto_4e
    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetKeyAllowFrameDrop(Landroid/media/MediaFormat;)V

    .line 982
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_5c

    :cond_5a
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 978
    :goto_5c
    invoke-static {p1, p4, p2, v0, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9

    .line 1871
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 1873
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "width"

    .line 1874
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "height"

    .line 1875
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1876
    iget-object p2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "frame-rate"

    .line 1878
    iget v1, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const-string p2, "rotation-degrees"

    .line 1879
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1880
    iget-object p2, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    const-string/jumbo p2, "video/dolby-vision"

    .line 1881
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 1884
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1886
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1887
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1886
    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_4f
    const-string p1, "max-width"

    .line 1891
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-height"

    .line 1892
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-input-size"

    .line 1893
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1896
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_7b

    const-string p1, "priority"

    .line 1897
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_7b

    const-string p1, "operating-rate"

    .line 1899
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_7b
    if-eqz p5, :cond_88

    const-string p1, "no-post-process"

    const/4 p2, 0x1

    .line 1903
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1904
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_88
    if-eqz p6, :cond_8d

    .line 1907
    invoke-static {v0, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    .line 1909
    :cond_8d
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_9f

    .line 1911
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    neg-int p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "importance"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9f
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected getSurface()Landroid/view/Surface;
    .registers 2

    .line 2120
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1301
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    return-void

    .line 1304
    :cond_5
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_57

    .line 1307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 1309
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 1312
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_57

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_57

    const/4 v0, 0x1

    if-ne v2, v0, :cond_57

    const/4 v1, 0x4

    if-ne v3, v1, :cond_57

    if-eqz v4, :cond_3e

    if-ne v4, v0, :cond_57

    .line 1320
    :cond_3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1321
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1322
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1323
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V

    :cond_57
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_a0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_88

    const/16 v0, 0x10

    if-eq p1, v0, :cond_78

    const/4 v0, 0x4

    if-eq p1, v0, :cond_60

    const/4 v0, 0x5

    if-eq p1, v0, :cond_50

    const/16 v0, 0xd

    if-eq p1, v0, :cond_46

    const/16 v0, 0xe

    if-eq p1, v0, :cond_21

    .line 872
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto/16 :goto_b3

    .line 859
    :cond_21
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/Size;

    .line 860
    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result p2

    if-eqz p2, :cond_b3

    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p2

    if-eqz p2, :cond_b3

    .line 861
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Landroidx/media3/common/util/Size;

    .line 862
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_b3

    .line 863
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto/16 :goto_b3

    .line 855
    :cond_46
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 856
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setVideoEffects(Ljava/util/List;)V

    goto :goto_b3

    .line 836
    :cond_50
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setChangeFrameRateStrategy(I)V

    goto :goto_b3

    .line 829
    :cond_60
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 830
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_b3

    .line 832
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_b3

    .line 868
    :cond_78
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    .line 869
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateCodecImportance()V

    goto :goto_b3

    .line 845
    :cond_88
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 846
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_b3

    .line 847
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 848
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_b3

    .line 849
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_b3

    .line 839
    :cond_a0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 840
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_b3

    .line 841
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    goto :goto_b3

    .line 826
    :cond_b0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 739
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isReady()Z
    .registers 5

    .line 744
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isReady()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_29

    .line 745
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v2, :cond_1e

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v3, v2, :cond_28

    .line 747
    :cond_1e
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v2, :cond_29

    :cond_28
    return v1

    .line 752
    :cond_29
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1611
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    :cond_8
    const/4 v0, 0x1

    if-eqz p3, :cond_1c

    .line 1618
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 1619
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p3, v1

    iput p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_28

    .line 1621
    :cond_1c
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v1, v0

    iput v1, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 1622
    iget p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1625
    :goto_28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    .line 1626
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_32

    .line 1627
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    :cond_32
    return v0
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 1174
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1175
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .registers 13

    .line 1160
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 1161
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 1163
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 1164
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .registers 3

    .line 1169
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .registers 4

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 785
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_b

    .line 786
    invoke-interface {v1}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererDisabled()V

    goto :goto_10

    .line 788
    :cond_b
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onDisabled()V

    .line 790
    :goto_10
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    const/4 v1, 0x0

    .line 791
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 792
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 794
    :try_start_18
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2a

    .line 796
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 797
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    sget-object v1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void

    :catchall_2a
    move-exception v0

    .line 796
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 797
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 798
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 628
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 629
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 630
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    move v1, v0

    :goto_14
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 631
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v1, p1, :cond_20

    .line 632
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 633
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 635
    :cond_20
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 638
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    if-nez p1, :cond_59

    .line 639
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    if-nez p1, :cond_33

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->ownsVideoSink:Z

    if-nez p1, :cond_57

    :cond_33
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_57

    .line 641
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSinkProvider:Landroidx/media3/exoplayer/video/VideoSinkProvider;

    if-eqz p1, :cond_3c

    goto :goto_51

    .line 645
    :cond_3c
    new-instance p1, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-direct {p1, v1, v2}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;)V

    .line 644
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$Builder;->build()Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;

    move-result-object p1

    .line 646
    :goto_51
    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSinkProvider;->getSink()Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 648
    :cond_57
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 650
    :cond_59
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_a1

    .line 654
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    .line 687
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 654
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    .line 688
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p1, :cond_72

    .line 689
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    .line 691
    :cond_72
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz p1, :cond_89

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Landroidx/media3/common/util/Size;

    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 692
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Landroidx/media3/common/util/Size;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 694
    :cond_89
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getPlaybackSpeed()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    .line 695
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    if-eqz p1, :cond_9b

    .line 696
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    .line 698
    :cond_9b
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererEnabled(Z)V

    goto :goto_af

    .line 700
    :cond_a1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 701
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onEnabled(Z)V

    :goto_af
    return-void
.end method

.method protected onInit()V
    .registers 1

    .line 622
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInit()V

    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1182
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    .line 1183
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 11

    .line 1224
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1227
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 1234
    :cond_b
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 1235
    iget p2, p1, Landroidx/media3/common/Format;->width:I

    .line 1236
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_67

    .line 1238
    :cond_16
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 1240
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "crop-top"

    const-string v5, "crop-bottom"

    const-string v6, "crop-left"

    if-eqz v3, :cond_3b

    .line 1241
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1242
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1243
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v2

    goto :goto_3c

    :cond_3b
    move v3, v1

    :goto_3c
    if-eqz v3, :cond_49

    .line 1246
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v0, v2

    goto :goto_50

    :cond_49
    const-string/jumbo v0, "width"

    .line 1247
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_50
    if-eqz v3, :cond_5e

    .line 1250
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    move p2, v3

    goto :goto_64

    :cond_5e
    const-string v3, "height"

    .line 1251
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_64
    move v7, v0

    move v0, p2

    move p2, v7

    .line 1253
    :goto_67
    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1254
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1258
    iget v4, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_7b

    iget v4, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_89

    :cond_7b
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    move v7, v0

    move v0, p2

    move p2, v7

    goto :goto_89

    .line 1264
    :cond_83
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v4, :cond_89

    .line 1266
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1268
    :cond_89
    :goto_89
    new-instance v4, Landroidx/media3/common/VideoSize;

    invoke-direct {v4, p2, v0, v1, v3}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    iput-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 1271
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v4, :cond_b5

    .line 1272
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onReadyToRegisterVideoSinkInputStream()V

    .line 1273
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 1276
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1277
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1278
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1279
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1280
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1281
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 1273
    invoke-interface {v4, v2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->registerInputStream(ILandroidx/media3/common/Format;)V

    goto :goto_bc

    .line 1283
    :cond_b5
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget p1, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setFrameRate(F)V

    :goto_bc
    return-void
.end method

.method protected onPositionReset(JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    .line 719
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    .line 720
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 721
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v3

    .line 720
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoSink;->setStreamOffsetAndAdjustmentUs(JJ)V

    .line 723
    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 724
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_21

    .line 725
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    :cond_21
    const/4 p1, 0x0

    if-eqz p3, :cond_29

    .line 731
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    .line 733
    :cond_29
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    .line 734
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .registers 3

    .line 1501
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1502
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_d

    .line 1503
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_d
    return-void
.end method

.method protected onProcessedStreamChange()V
    .registers 6

    .line 1509
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1510
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_13

    .line 1512
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v3

    .line 1511
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/video/VideoSink;->setStreamOffsetAndAdjustmentUs(JJ)V

    goto :goto_18

    .line 1514
    :cond_13
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onProcessedStreamChange()V

    .line 1516
    :goto_18
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1486
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)V

    .line 1487
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1488
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 1489
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1490
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1200
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_a

    .line 1201
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1203
    :cond_a
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_19

    .line 1206
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_19
    return-void
.end method

.method protected onReadyToInitializeCodec(Landroidx/media3/common/Format;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1136
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1138
    :try_start_a
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)V
    :try_end_f
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    const/16 v1, 0x1b58

    .line 1140
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_18
    :goto_18
    return-void
.end method

.method protected onReadyToRegisterVideoSinkInputStream()V
    .registers 1

    return-void
.end method

.method protected onRelease()V
    .registers 3

    .line 815
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onRelease()V

    .line 816
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->ownsVideoSink:Z

    if-eqz v1, :cond_e

    .line 817
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->release()V

    :cond_e
    return-void
.end method

.method protected onReset()V
    .registers 3

    const/4 v0, 0x0

    .line 804
    :try_start_1
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 806
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 807
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_d

    .line 808
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    :cond_d
    return-void

    :catchall_e
    move-exception v1

    .line 806
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 807
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_18

    .line 808
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 810
    :cond_18
    throw v1
.end method

.method protected onStarted()V
    .registers 4

    .line 757
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 758
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 759
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 760
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    const-wide/16 v1, 0x0

    .line 761
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 762
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 763
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1e

    .line 764
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererStarted()V

    goto :goto_23

    .line 766
    :cond_1e
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    :goto_23
    return-void
.end method

.method protected onStopped()V
    .registers 2

    .line 772
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 773
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 774
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_e

    .line 775
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererStopped()V

    goto :goto_13

    .line 777
    :cond_e
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    .line 779
    :goto_13
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    move/from16 v2, p7

    move/from16 v14, p13

    .line 1342
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v3

    sub-long v12, p10, v3

    .line 1348
    iget-object v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 1353
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamStartPositionUs()J

    move-result-wide v10

    iget-object v15, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    move-wide/from16 v4, p10

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v16, v12

    move/from16 v12, p13

    move-object v13, v15

    .line 1349
    invoke-virtual/range {v3 .. v13}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2d

    return v5

    :cond_2d
    const/4 v4, 0x1

    if-eqz p12, :cond_38

    if-nez v14, :cond_38

    move-wide/from16 v6, v16

    .line 1367
    invoke-virtual {v1, v0, v2, v6, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return v4

    :cond_38
    move-wide/from16 v6, v16

    .line 1373
    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v9, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-ne v8, v9, :cond_5e

    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v8, :cond_5e

    .line 1375
    iget-object v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    cmp-long v3, v8, v10

    if-gez v3, :cond_5d

    .line 1376
    invoke-virtual {v1, v0, v2, v6, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1377
    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v4

    :cond_5d
    return v5

    .line 1383
    :cond_5e
    iget-object v8, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v8, :cond_98

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    .line 1385
    :try_start_66
    invoke-interface {v8, v9, v10, v11, v12}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_69
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_66 .. :try_end_69} :catch_8d

    .line 1391
    iget-object v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 1393
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v8

    add-long v8, p10, v8

    .line 1392
    invoke-interface {v3, v8, v9, v14}, Landroidx/media3/exoplayer/video/VideoSink;->registerInputFrame(JZ)J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v8, v10

    if-nez v3, :cond_7f

    return v5

    :cond_7f
    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v6

    move-wide/from16 p13, v8

    .line 1397
    invoke-direct/range {p8 .. p14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return v4

    :catch_8d
    move-exception v0

    move-object v2, v0

    .line 1387
    iget-object v0, v2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    const/16 v3, 0x1b59

    invoke-virtual {v1, v2, v0, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_98
    if-eqz v3, :cond_df

    if-eq v3, v4, :cond_ca

    const/4 v8, 0x2

    if-eq v3, v8, :cond_bd

    const/4 v8, 0x3

    if-eq v3, v8, :cond_b0

    const/4 v0, 0x5

    if-ne v3, v0, :cond_a6

    return v5

    .line 1421
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_b0
    invoke-virtual {v1, v0, v2, v6, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1410
    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v4

    .line 1413
    :cond_bd
    invoke-virtual {v1, v0, v2, v6, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1414
    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v4

    .line 1419
    :cond_ca
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move/from16 p3, p7

    move-wide/from16 p4, v6

    move-object/from16 p6, p14

    invoke-direct/range {p1 .. p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeReleaseFrame(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJLandroidx/media3/common/Format;)Z

    move-result v0

    return v0

    .line 1403
    :cond_df
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v8

    move-object/from16 p8, p0

    move-wide/from16 p9, v6

    move-wide/from16 p11, v8

    move-object/from16 p13, p14

    .line 1404
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v6

    move-wide/from16 p13, v8

    .line 1405
    invoke-direct/range {p8 .. p14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1406
    iget-object v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v4
.end method

.method public render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1018
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    .line 1019
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_15

    .line 1021
    :try_start_7
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_a
    .catch Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception p1

    .line 1023
    iget-object p2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    const/16 p3, 0x1b59

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_15
    :goto_15
    return-void
.end method

.method protected renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "releaseOutputBuffer"

    .line 1692
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1693
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1694
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1695
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1696
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1697
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_22

    .line 1698
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1699
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_22
    return-void
.end method

.method protected renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    const-string p3, "releaseOutputBuffer"

    .line 1715
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1716
    invoke-interface {p1, p2, p5, p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1717
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1718
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 1719
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1720
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_22

    .line 1721
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1722
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_22
    return-void
.end method

.method protected resetCodecStateForFlush()V
    .registers 2

    .line 1032
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 1033
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 3

    .line 1839
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1039
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 1040
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_b

    .line 1041
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    goto :goto_10

    .line 1043
    :cond_b
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    :goto_10
    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    .line 1149
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_9

    .line 1150
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .registers 6

    const-wide/32 p3, -0x7a120

    cmp-long p1, p1, p3

    if-gez p1, :cond_b

    if-nez p5, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public shouldDropFrame(JJZ)Z
    .registers 6

    .line 426
    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result p1

    return p1
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .registers 6

    const-wide/16 p3, -0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public shouldForceReleaseFrame(JJ)Z
    .registers 5

    .line 421
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .registers 7

    const-wide/16 v0, -0x7530

    cmp-long p1, p1, v0

    if-gez p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public shouldIgnoreFrame(JJJZZ)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p5

    move v5, p7

    .line 437
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 438
    invoke-virtual {p0, p3, p4, p8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method protected shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 3

    .line 939
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method protected shouldSkipBuffersWithIdenticalReleaseTime()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    const-string p3, "skipVideoBuffer"

    .line 1577
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1578
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1579
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1580
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 451
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 452
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 453
    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    .line 455
    :cond_e
    iget-object v0, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 458
    :goto_16
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 459
    invoke-static {v3, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2a

    .line 465
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 467
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 468
    invoke-static {v3, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 475
    :cond_2a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 476
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    .line 478
    :cond_35
    invoke-static {p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->supportsFormatDrm(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_41

    const/4 p1, 0x2

    .line 479
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    .line 483
    :cond_41
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 484
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_67

    move v6, v2

    .line 488
    :goto_4e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    .line 489
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 490
    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_64

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_68

    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    :cond_67
    move v3, v2

    :goto_68
    if-eqz v5, :cond_6c

    const/4 v6, 0x4

    goto :goto_6d

    :cond_6c
    const/4 v6, 0x3

    .line 502
    :goto_6d
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_76

    const/16 v7, 0x10

    goto :goto_78

    :cond_76
    const/16 v7, 0x8

    .line 507
    :goto_78
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_7f

    const/16 v4, 0x40

    goto :goto_80

    :cond_7f
    move v4, v1

    :goto_80
    if-eqz v3, :cond_85

    const/16 v3, 0x80

    goto :goto_86

    :cond_85
    move v3, v1

    .line 513
    :goto_86
    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_a1

    const-string/jumbo v8, "video/dolby-vision"

    iget-object v9, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 514
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    iget-object v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 515
    invoke-static {v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_a1

    const/16 v3, 0x100

    :cond_a1
    if-eqz v5, :cond_c7

    .line 521
    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 522
    invoke-static {v5, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 528
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 530
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p1

    .line 531
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 532
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 533
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_c7

    const/16 v1, 0x20

    .line 539
    :cond_c7
    invoke-static {v6, v7, v1, v4, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIII)I

    move-result p1

    return p1
.end method

.method protected updateDroppedBufferCounters(II)V
    .registers 5

    .line 1642
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    .line 1644
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 1645
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1646
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1647
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1648
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1649
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_32

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_32

    .line 1650
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_32
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .registers 5

    .line 1660
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1661
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1662
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
