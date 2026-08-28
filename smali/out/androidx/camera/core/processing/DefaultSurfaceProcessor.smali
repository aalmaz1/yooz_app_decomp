.class public Landroidx/camera/core/processing/DefaultSurfaceProcessor;
.super Ljava/lang/Object;
.source "DefaultSurfaceProcessor.java"

# interfaces
.implements Landroidx/camera/core/processing/SurfaceProcessorInternal;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;,
        Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSurfaceProcessor"


# instance fields
.field private final mGlExecutor:Ljava/util/concurrent/Executor;

.field final mGlHandler:Landroid/os/Handler;

.field private final mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

.field final mGlThread:Landroid/os/HandlerThread;

.field private mInputSurfaceCount:I

.field private final mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsReleased:Z

.field final mOutputSurfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/SurfaceOutput;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceOutputMatrix:[F

.field private final mTextureMatrix:[F


# direct methods
.method constructor <init>(Landroidx/camera/core/DynamicRange;)V
    .registers 3

    .line 102
    sget-object v0, Landroidx/camera/core/processing/ShaderProvider;->DEFAULT:Landroidx/camera/core/processing/ShaderProvider;

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 87
    iput-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    new-array v0, v0, [F

    .line 88
    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    .line 94
    iput v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 96
    iput-boolean v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    .line 113
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GL Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlThread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    .line 116
    invoke-static {v1}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->newHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    .line 117
    new-instance v0, Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-direct {v0}, Landroidx/camera/core/processing/OpenGlRenderer;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    .line 119
    :try_start_4b
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->initGlRenderer(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p1

    .line 121
    invoke-virtual {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->release()V

    .line 122
    throw p1
.end method

.method private checkReadyToRelease()V
    .registers 5

    .line 338
    iget-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    if-eqz v0, :cond_52

    iget v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    if-nez v0, :cond_52

    .line 340
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/SurfaceOutput;

    .line 341
    invoke-interface {v1}, Landroidx/camera/core/SurfaceOutput;->close()V

    goto :goto_12

    .line 343
    :cond_22
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 344
    invoke-virtual {v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Failed to snapshot: DefaultSurfaceProcessor is released."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_28

    .line 347
    :cond_43
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 348
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v0}, Landroidx/camera/core/processing/OpenGlRenderer;->release()V

    .line 349
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_52
    return-void
.end method

.method private executeSafely(Ljava/lang/Runnable;)V
    .registers 3

    .line 381
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    .line 388
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda7;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception p1

    const-string v0, "DefaultSurfaceProcessor"

    const-string v1, "Unable to executor runnable"

    .line 396
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-void
.end method

.method private failAllPendingSnapshots(Ljava/lang/Throwable;)V
    .registers 4

    .line 307
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 308
    invoke-virtual {v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    goto :goto_6

    .line 310
    :cond_1a
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getBitmap(Landroid/util/Size;[FI)Landroid/graphics/Bitmap;
    .registers 11

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 318
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 321
    invoke-static {v0, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preVerticalFlip([FF)V

    int-to-float v2, p3

    .line 324
    invoke-static {v0, v2, v1, v1}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, v0

    move-object v5, p2

    .line 327
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 330
    invoke-static {p1, p3}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p1

    .line 333
    iget-object p2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {p2, p1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->snapshot(Landroid/util/Size;[F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private initGlRenderer(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V
    .registers 4

    .line 355
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 367
    :try_start_9
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_c} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    goto :goto_10

    :catch_f
    move-exception p1

    .line 371
    :goto_10
    instance-of p2, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz p2, :cond_18

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 372
    :cond_18
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1f

    .line 373
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 375
    :cond_1f
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create DefaultSurfaceProcessor"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic lambda$executeSafely$10()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$snapshot$6(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to snapshot: OpenGLRenderer not ready."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method private takeSnapshotAndDrawJpeg(Lkotlin/Triple;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            "[F>;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_16

    .line 265
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed to snapshot: no JPEG Surface."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    return-void

    .line 270
    :cond_16
    :try_start_16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_93

    .line 275
    :try_start_1b
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v6, v4

    move-object v5, v3

    move-object v7, v5

    .line 276
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;

    .line 279
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getRotationDegrees()I

    move-result v9

    if-ne v4, v9, :cond_3b

    if-nez v5, :cond_55

    .line 280
    :cond_3b
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getRotationDegrees()I

    move-result v4

    if-eqz v5, :cond_44

    .line 283
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    :cond_44
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-direct {p0, v5, v6, v4}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->getBitmap(Landroid/util/Size;[FI)Landroid/graphics/Bitmap;

    move-result-object v5

    move v6, v2

    .line 291
    :cond_55
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getJpegQuality()I

    move-result v9

    if-eq v6, v9, :cond_6b

    .line 292
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 293
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getJpegQuality()I

    move-result v6

    .line 294
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v7, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 295
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 297
    :cond_6b
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v9, v10}, Landroidx/camera/core/ImageProcessingUtil;->writeJpegBytesToSurface(Landroid/view/Surface;[B)Z

    .line 298
    invoke-virtual {v8}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->getCompleter()Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_84
    .catchall {:try_start_1b .. :try_end_84} :catchall_89

    goto :goto_27

    .line 301
    :cond_85
    :try_start_85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93

    goto :goto_97

    :catchall_89
    move-exception p1

    .line 270
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_92
    throw p1
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93

    :catch_93
    move-exception p1

    .line 302
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    :goto_97
    return-void
.end method


# virtual methods
.method synthetic lambda$executeSafely$11$androidx-camera-core-processing-DefaultSurfaceProcessor(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4

    .line 389
    iget-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    if-eqz v0, :cond_8

    .line 390
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 392
    :cond_8
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_b
    return-void
.end method

.method synthetic lambda$initGlRenderer$8$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .registers 5

    .line 358
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/processing/OpenGlRenderer;->init(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;)V

    const/4 p1, 0x0

    .line 359
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 361
    invoke-virtual {p3, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    :goto_e
    return-void
.end method

.method synthetic lambda$initGlRenderer$9$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Landroidx/camera/core/processing/ShaderProvider;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;)V

    const-string p1, "Init GlRenderer"

    return-object p1
.end method

.method synthetic lambda$onInputSurface$0$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;Landroidx/camera/core/SurfaceRequest$Result;)V
    .registers 4

    const/4 p3, 0x0

    .line 142
    invoke-virtual {p1, p3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 144
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 145
    iget p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 146
    invoke-direct {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->checkReadyToRelease()V

    return-void
.end method

.method synthetic lambda$onInputSurface$1$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/SurfaceRequest;)V
    .registers 6

    .line 136
    iget v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mInputSurfaceCount:I

    .line 137
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v1}, Landroidx/camera/core/processing/OpenGlRenderer;->getTextureName()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 138
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 139
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->getResolution()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 140
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 141
    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda4;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/camera/core/SurfaceRequest;->provideSurface(Landroid/view/Surface;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 148
    iget-object p1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic lambda$onOutputSurface$2$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/SurfaceOutput$Event;)V
    .registers 3

    .line 163
    invoke-interface {p1}, Landroidx/camera/core/SurfaceOutput;->close()V

    .line 164
    iget-object p2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    if-eqz p1, :cond_12

    .line 166
    iget-object p2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {p2, p1}, Landroidx/camera/core/processing/OpenGlRenderer;->unregisterOutputSurface(Landroid/view/Surface;)V

    :cond_12
    return-void
.end method

.method synthetic lambda$onOutputSurface$3$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/SurfaceOutput;)V
    .registers 4

    .line 162
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;)V

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/SurfaceOutput;->getSurface(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)Landroid/view/Surface;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {v1, v0}, Landroidx/camera/core/processing/OpenGlRenderer;->registerOutputSurface(Landroid/view/Surface;)V

    .line 170
    iget-object v1, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$release$4$androidx-camera-core-processing-DefaultSurfaceProcessor()V
    .registers 2

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleased:Z

    .line 184
    invoke-direct {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->checkReadyToRelease()V

    return-void
.end method

.method synthetic lambda$snapshot$5$androidx-camera-core-processing-DefaultSurfaceProcessor(Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;)V
    .registers 3

    .line 198
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mPendingSnapshots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$snapshot$7$androidx-camera-core-processing-DefaultSurfaceProcessor(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-static {p1, p2, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;->of(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Landroidx/camera/core/processing/AutoValue_DefaultSurfaceProcessor_PendingSnapshot;

    move-result-object p1

    .line 197
    new-instance p2, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda11;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/processing/DefaultSurfaceProcessor$PendingSnapshot;)V

    new-instance p1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda12;

    invoke-direct {p1, p3}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda12;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-direct {p0, p2, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string p1, "DefaultSurfaceProcessor#snapshot"

    return-object p1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 11

    .line 210
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 214
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 215
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 219
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mOutputSurfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 221
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/SurfaceOutput;

    .line 222
    iget-object v4, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    iget-object v5, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mTextureMatrix:[F

    invoke-interface {v2, v4, v5}, Landroidx/camera/core/SurfaceOutput;->updateTransformMatrix([F[F)V

    .line 223
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_58

    .line 226
    :try_start_43
    iget-object v2, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mGlRenderer:Landroidx/camera/core/processing/OpenGlRenderer;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    invoke-virtual {v2, v4, v5, v6, v3}, Landroidx/camera/core/processing/OpenGlRenderer;->render(J[FLandroid/view/Surface;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_1c

    :catch_4f
    move-exception v2

    const-string v3, "DefaultSurfaceProcessor"

    const-string v4, "Failed to render with OpenGL."

    .line 231
    invoke-static {v3, v4, v2}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 234
    :cond_58
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_64

    move v4, v6

    goto :goto_65

    :cond_64
    move v4, v7

    :goto_65
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported format: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getFormat()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-nez v1, :cond_7e

    goto :goto_7f

    :cond_7e
    move v6, v7

    :goto_7f
    const-string v1, "Only one JPEG output is supported."

    .line 236
    invoke-static {v6, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 237
    new-instance v1, Lkotlin/Triple;

    invoke-interface {v2}, Landroidx/camera/core/SurfaceOutput;->getSize()Landroid/util/Size;

    move-result-object v2

    iget-object v4, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mSurfaceOutputMatrix:[F

    .line 238
    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    invoke-direct {v1, v3, v2, v4}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c

    .line 244
    :cond_96
    :try_start_96
    invoke-direct {p0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->takeSnapshotAndDrawJpeg(Lkotlin/Triple;)V
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9e

    :catch_9a
    move-exception p1

    .line 247
    invoke-direct {p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->failAllPendingSnapshots(Ljava/lang/Throwable;)V

    :goto_9e
    return-void
.end method

.method public onInputSurface(Landroidx/camera/core/SurfaceRequest;)V
    .registers 4

    .line 131
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void

    .line 135
    :cond_c
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda8;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;)V

    .line 149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda9;-><init>(Landroidx/camera/core/SurfaceRequest;)V

    .line 135
    invoke-direct {p0, v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputSurface(Landroidx/camera/core/SurfaceOutput;)V
    .registers 4

    .line 157
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    invoke-interface {p1}, Landroidx/camera/core/SurfaceOutput;->close()V

    return-void

    .line 161
    :cond_c
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;)V

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda6;-><init>(Landroidx/camera/core/SurfaceOutput;)V

    .line 161
    invoke-direct {p0, v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 179
    iget-object v0, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->mIsReleaseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 182
    :cond_a
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda13;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->executeSafely(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapshot(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$$ExternalSyntheticLambda10;-><init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;II)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
