.class public final Landroidx/camera/video/internal/audio/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AudioSource$InternalState;,
        Landroidx/camera/video/internal/audio/AudioSource$AudioStreamCallback;,
        Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;
    }
.end annotation


# static fields
.field static final DEFAULT_START_RETRY_INTERVAL_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "AudioSource"


# instance fields
.field private mAcquireBufferCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
            "Landroidx/camera/video/internal/encoder/InputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mAmplitudeTimestamp:J

.field mAudioAmplitude:D

.field private final mAudioFormat:I

.field mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

.field final mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

.field mAudioStreamSilenced:Z

.field mBufferProvider:Landroidx/camera/video/internal/BufferProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/video/internal/BufferProvider<",
            "+",
            "Landroidx/camera/video/internal/encoder/InputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

.field mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field mInSilentStartState:Z

.field mIsSendingAudio:Z

.field private mLatestFailedStartTimeNs:J

.field mMuted:Z

.field final mNotifiedSilenceState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mNotifiedSuspendState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

.field private final mStartRetryIntervalNs:J

.field mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

.field private mStateObserver:Landroidx/camera/core/impl/Observable$Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/core/impl/Observable$Observer<",
            "Landroidx/camera/video/internal/BufferProvider$State;",
            ">;"
        }
    .end annotation
.end field

.field private mZeroBytes:[B


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/audio/AudioSettings;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/video/internal/audio/AudioSourceAccessException;
        }
    .end annotation

    .line 177
    new-instance v4, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda8;-><init>()V

    const-wide/16 v5, 0xbb8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/internal/audio/AudioSource;-><init>(Landroidx/camera/video/internal/audio/AudioSettings;Ljava/util/concurrent/Executor;Landroid/content/Context;Landroidx/camera/video/internal/audio/AudioStreamFactory;J)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/video/internal/audio/AudioSettings;Ljava/util/concurrent/Executor;Landroid/content/Context;Landroidx/camera/video/internal/audio/AudioStreamFactory;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/video/internal/audio/AudioSourceAccessException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSilenceState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSuspendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->CONFIGURED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    .line 116
    sget-object v0, Landroidx/camera/video/internal/BufferProvider$State;->INACTIVE:Landroidx/camera/video/internal/BufferProvider$State;

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAmplitudeTimestamp:J

    .line 186
    invoke-static {p2}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p5, p6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p5

    iput-wide p5, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStartRetryIntervalNs:J

    .line 189
    :try_start_2d
    new-instance p5, Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-interface {p4, p1, p3}, Landroidx/camera/video/internal/audio/AudioStreamFactory;->create(Landroidx/camera/video/internal/audio/AudioSettings;Landroid/content/Context;)Landroidx/camera/video/internal/audio/AudioStream;

    move-result-object p3

    invoke-direct {p5, p3, p1}, Landroidx/camera/video/internal/audio/BufferedAudioStream;-><init>(Landroidx/camera/video/internal/audio/AudioStream;Landroidx/camera/video/internal/audio/AudioSettings;)V

    iput-object p5, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_38} :catch_50
    .catch Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException; {:try_start_2d .. :try_end_38} :catch_4e

    .line 194
    new-instance p3, Landroidx/camera/video/internal/audio/AudioSource$AudioStreamCallback;

    invoke-direct {p3, p0}, Landroidx/camera/video/internal/audio/AudioSource$AudioStreamCallback;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-interface {p5, p3, p2}, Landroidx/camera/video/internal/audio/AudioStream;->setCallback(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V

    .line 195
    new-instance p2, Landroidx/camera/video/internal/audio/SilentAudioStream;

    invoke-direct {p2, p1}, Landroidx/camera/video/internal/audio/SilentAudioStream;-><init>(Landroidx/camera/video/internal/audio/AudioSettings;)V

    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

    .line 196
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioFormat()I

    move-result p1

    iput p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioFormat:I

    return-void

    :catch_4e
    move-exception p1

    goto :goto_51

    :catch_50
    move-exception p1

    .line 192
    :goto_51
    new-instance p2, Landroidx/camera/video/internal/audio/AudioSourceAccessException;

    const-string p3, "Unable to create AudioStream"

    invoke-direct {p2, p3, p1}, Landroidx/camera/video/internal/audio/AudioSourceAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static fetchBufferProviderState(Landroidx/camera/video/internal/BufferProvider;)Landroidx/camera/video/internal/BufferProvider$State;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/internal/BufferProvider<",
            "+",
            "Landroidx/camera/video/internal/encoder/InputBuffer;",
            ">;)",
            "Landroidx/camera/video/internal/BufferProvider$State;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 665
    :try_start_1
    invoke-interface {p0}, Landroidx/camera/video/internal/BufferProvider;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 666
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/internal/BufferProvider$State;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_11} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_11} :catch_12

    move-object v0, p0

    :catch_12
    :cond_12
    return-object v0
.end method

.method private static getCurrentSystemTimeNs()J
    .registers 2

    .line 678
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSettingsSupported(III)Z
    .registers 3

    .line 674
    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/audio/AudioStreamImpl;->isSettingsSupported(III)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$notifyError$8(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Ljava/lang/Throwable;)V
    .registers 2

    .line 536
    invoke-interface {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$notifySilenced$9(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V
    .registers 2

    .line 547
    invoke-interface {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->onSilenceStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifySuspended$10(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V
    .registers 2

    .line 558
    invoke-interface {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->onSuspendStateChanged(Z)V

    return-void
.end method

.method private resetBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/internal/BufferProvider<",
            "+",
            "Landroidx/camera/video/internal/encoder/InputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    if-eqz v0, :cond_1d

    .line 405
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStateObserver:Landroidx/camera/core/impl/Observable$Observer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {v0, v1}, Landroidx/camera/video/internal/BufferProvider;->removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 407
    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStateObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 408
    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAcquireBufferCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 409
    sget-object v0, Landroidx/camera/video/internal/BufferProvider$State;->INACTIVE:Landroidx/camera/video/internal/BufferProvider$State;

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    .line 410
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->updateSendingAudio()V

    :cond_1d
    if-eqz p1, :cond_43

    .line 413
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    .line 414
    new-instance v0, Landroidx/camera/video/internal/audio/AudioSource$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$1;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStateObserver:Landroidx/camera/core/impl/Observable$Observer;

    .line 438
    new-instance v0, Landroidx/camera/video/internal/audio/AudioSource$2;

    invoke-direct {v0, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$2;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAcquireBufferCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 495
    invoke-static {p1}, Landroidx/camera/video/internal/audio/AudioSource;->fetchBufferProviderState(Landroidx/camera/video/internal/BufferProvider;)Landroidx/camera/video/internal/BufferProvider$State;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 497
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    .line 498
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->updateSendingAudio()V

    .line 500
    :cond_3a
    iget-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStateObserver:Landroidx/camera/core/impl/Observable$Observer;

    invoke-interface {p1, v0, v1}, Landroidx/camera/video/internal/BufferProvider;->addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    :cond_43
    return-void
.end method

.method private startSendingAudio()V
    .registers 5

    const-string v0, "AudioSource"

    .line 591
    iget-boolean v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mIsSendingAudio:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    :try_start_8
    const-string v2, "startSendingAudio"

    .line 596
    invoke-static {v0, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    invoke-interface {v2}, Landroidx/camera/video/internal/audio/AudioStream;->start()V

    const/4 v2, 0x0

    .line 598
    iput-boolean v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z
    :try_end_15
    .catch Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException; {:try_start_8 .. :try_end_15} :catch_16

    goto :goto_2c

    :catch_16
    move-exception v2

    const-string v3, "Failed to start AudioStream"

    .line 600
    invoke-static {v0, v3, v2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    iput-boolean v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z

    .line 602
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->start()V

    .line 603
    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSource;->getCurrentSystemTimeNs()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mLatestFailedStartTimeNs:J

    .line 604
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->notifySilenced()V

    .line 606
    :goto_2c
    iput-boolean v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mIsSendingAudio:Z

    .line 607
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->sendNextAudio()V

    return-void
.end method

.method private stopSendingAudio()V
    .registers 3

    .line 612
    iget-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mIsSendingAudio:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mIsSendingAudio:Z

    const-string v0, "AudioSource"

    const-string v1, "stopSendingAudio"

    .line 617
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    invoke-interface {v0}, Landroidx/camera/video/internal/audio/AudioStream;->stop()V

    return-void
.end method


# virtual methods
.method getCurrentAudioStream()Landroidx/camera/video/internal/audio/AudioStream;
    .registers 2

    .line 507
    iget-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    :goto_9
    return-object v0
.end method

.method isStartRetryIntervalReached()Z
    .registers 8

    .line 526
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mLatestFailedStartTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 527
    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSource;->getCurrentSystemTimeNs()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/camera/video/internal/audio/AudioSource;->mLatestFailedStartTimeNs:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroidx/camera/video/internal/audio/AudioSource;->mStartRetryIntervalNs:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method

.method synthetic lambda$mute$7$androidx-camera-video-internal-audio-AudioSource(Z)V
    .registers 4

    .line 383
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_14

    goto :goto_2c

    .line 396
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "AudioSource is released"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 387
    :cond_1c
    iget-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mMuted:Z

    if-ne v0, p1, :cond_21

    return-void

    .line 390
    :cond_21
    iput-boolean p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mMuted:Z

    .line 391
    iget-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    if-ne p1, v0, :cond_2c

    .line 392
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->notifySilenced()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method synthetic lambda$postMaxAmplitude$11$androidx-camera-video-internal-audio-AudioSource(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V
    .registers 4

    .line 655
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioAmplitude:D

    invoke-interface {p1, v0, v1}, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;->onAmplitudeValue(D)V

    return-void
.end method

.method synthetic lambda$release$4$androidx-camera-video-internal-audio-AudioSource(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 5

    .line 331
    :try_start_0
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    goto :goto_27

    .line 335
    :cond_12
    invoke-direct {p0, v2}, Landroidx/camera/video/internal/audio/AudioSource;->resetBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V

    .line 336
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/SilentAudioStream;->release()V

    .line 337
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    invoke-interface {v0}, Landroidx/camera/video/internal/audio/AudioStream;->release()V

    .line 338
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioSource;->stopSendingAudio()V

    .line 339
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->RELEASED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/audio/AudioSource;->setState(Landroidx/camera/video/internal/audio/AudioSource$InternalState;)V

    .line 345
    :goto_27
    invoke-virtual {p1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    .line 347
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :goto_2f
    return-void
.end method

.method synthetic lambda$release$5$androidx-camera-video-internal-audio-AudioSource(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "AudioSource-release"

    return-object p1
.end method

.method synthetic lambda$setAudioSourceCallback$6$androidx-camera-video-internal-audio-AudioSource(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V
    .registers 5

    .line 366
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x2

    if-eq v0, p1, :cond_14

    const/4 p1, 0x3

    if-eq v0, p1, :cond_14

    goto :goto_20

    .line 374
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "The audio recording callback must be registered before the audio source is started."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 368
    :cond_1c
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 369
    iput-object p2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    :goto_20
    return-void
.end method

.method synthetic lambda$setBufferProvider$0$androidx-camera-video-internal-audio-AudioSource(Landroidx/camera/video/internal/BufferProvider;)V
    .registers 4

    .line 221
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_14

    goto :goto_23

    .line 230
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "AudioSource is released"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 225
    :cond_1c
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    if-eq v0, p1, :cond_23

    .line 226
    invoke-direct {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->resetBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V

    :cond_23
    :goto_23
    return-void
.end method

.method synthetic lambda$start$1$androidx-camera-video-internal-audio-AudioSource()V
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mMuted:Z

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/audio/AudioSource;->start(Z)V

    return-void
.end method

.method synthetic lambda$start$2$androidx-camera-video-internal-audio-AudioSource(Z)V
    .registers 4

    .line 282
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 p1, 0x3

    if-eq v0, p1, :cond_11

    goto :goto_30

    .line 294
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "AudioSource is released"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 284
    :cond_19
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSilenceState:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSuspendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/audio/AudioSource;->setState(Landroidx/camera/video/internal/audio/AudioSource$InternalState;)V

    .line 287
    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/audio/AudioSource;->mute(Z)V

    .line 288
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->updateSendingAudio()V

    :goto_30
    return-void
.end method

.method synthetic lambda$stop$3$androidx-camera-video-internal-audio-AudioSource()V
    .registers 3

    .line 306
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$3;->$SwitchMap$androidx$camera$video$internal$audio$AudioSource$InternalState:[I

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    goto :goto_21

    :cond_11
    const-string v0, "AudioSource"

    const-string v1, "AudioSource is released. Calling stop() is a no-op."

    .line 315
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 308
    :cond_19
    sget-object v0, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->CONFIGURED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/audio/AudioSource;->setState(Landroidx/camera/video/internal/audio/AudioSource$InternalState;)V

    .line 309
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSource;->updateSendingAudio()V

    :goto_21
    return-void
.end method

.method public mute(Z)V
    .registers 4

    .line 382
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyError(Ljava/lang/Throwable;)V
    .registers 5

    .line 533
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 534
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 536
    new-instance v2, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method notifySilenced()V
    .registers 6

    .line 542
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 543
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    .line 545
    iget-boolean v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mMuted:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStreamSilenced:Z

    if-eqz v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    .line 546
    :goto_18
    iget-object v3, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSilenceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 547
    new-instance v3, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method notifySuspended(Z)V
    .registers 5

    .line 554
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 555
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    .line 557
    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mNotifiedSuspendState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eq v2, p1, :cond_18

    .line 558
    new-instance v2, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method overrideBySilence(Ljava/nio/ByteBuffer;I)V
    .registers 6

    .line 565
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mZeroBytes:[B

    if-eqz v0, :cond_7

    array-length v0, v0

    if-ge v0, p2, :cond_b

    .line 566
    :cond_7
    new-array v0, p2, [B

    iput-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mZeroBytes:[B

    .line 568
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 569
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mZeroBytes:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method postMaxAmplitude(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 637
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 638
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioSourceCallback:Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    .line 641
    iget v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioFormat:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 644
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 646
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 647
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_f

    :cond_23
    const-wide v4, 0x40dfffc000000000L    # 32767.0

    div-double/2addr v2, v4

    .line 652
    iput-wide v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioAmplitude:D

    if-eqz v0, :cond_37

    if-eqz v1, :cond_37

    .line 655
    new-instance p1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0, v1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda12;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method retryStartAudioStream()V
    .registers 4

    const-string v0, "AudioSource"

    .line 512
    iget-boolean v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 514
    :try_start_7
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAudioStream:Landroidx/camera/video/internal/audio/AudioStream;

    invoke-interface {v1}, Landroidx/camera/video/internal/audio/AudioStream;->start()V

    const-string v1, "Retry start AudioStream succeed"

    .line 515
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mSilentAudioStream:Landroidx/camera/video/internal/audio/SilentAudioStream;

    invoke-virtual {v1}, Landroidx/camera/video/internal/audio/SilentAudioStream;->stop()V

    const/4 v1, 0x0

    .line 517
    iput-boolean v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mInSilentStartState:Z
    :try_end_19
    .catch Landroidx/camera/video/internal/audio/AudioStream$AudioStreamException; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_26

    :catch_1a
    move-exception v1

    const-string v2, "Retry start AudioStream failed"

    .line 519
    invoke-static {v0, v2, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSource;->getCurrentSystemTimeNs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mLatestFailedStartTimeNs:J

    :goto_26
    return-void
.end method

.method sendNextAudio()V
    .registers 4

    .line 624
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProvider:Landroidx/camera/video/internal/BufferProvider;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/video/internal/BufferProvider;

    invoke-interface {v0}, Landroidx/camera/video/internal/BufferProvider;->acquireBuffer()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mAcquireBufferCallback:Landroidx/camera/core/impl/utils/futures/FutureCallback;

    .line 625
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/utils/futures/FutureCallback;

    iget-object v2, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    .line 624
    invoke-static {v0, v1, v2}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setAudioSourceCallback(Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V
    .registers 5

    .line 365
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBufferProvider(Landroidx/camera/video/internal/BufferProvider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/internal/BufferProvider<",
            "+",
            "Landroidx/camera/video/internal/encoder/InputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Landroidx/camera/video/internal/BufferProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setState(Landroidx/camera/video/internal/audio/AudioSource$InternalState;)V
    .registers 4

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transitioning internal state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSource"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iput-object p1, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    return-void
.end method

.method public start()V
    .registers 3

    .line 257
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Z)V
    .registers 4

    .line 281
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/video/internal/audio/AudioSource;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 305
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Landroidx/camera/video/internal/audio/AudioSource$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/video/internal/audio/AudioSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateSendingAudio()V
    .registers 3

    .line 576
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mState:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    sget-object v1, Landroidx/camera/video/internal/audio/AudioSource$InternalState;->STARTED:Landroidx/camera/video/internal/audio/AudioSource$InternalState;

    if-ne v0, v1, :cond_1e

    .line 577
    iget-object v0, p0, Landroidx/camera/video/internal/audio/AudioSource;->mBufferProviderState:Landroidx/camera/video/internal/BufferProvider$State;

    sget-object v1, Landroidx/camera/video/internal/BufferProvider$State;->ACTIVE:Landroidx/camera/video/internal/BufferProvider$State;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    xor-int/lit8 v1, v0, 0x1

    .line 578
    invoke-virtual {p0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->notifySuspended(Z)V

    if-eqz v0, :cond_1a

    .line 580
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioSource;->startSendingAudio()V

    goto :goto_21

    .line 582
    :cond_1a
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioSource;->stopSendingAudio()V

    goto :goto_21

    .line 585
    :cond_1e
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioSource;->stopSendingAudio()V

    :goto_21
    return-void
.end method
