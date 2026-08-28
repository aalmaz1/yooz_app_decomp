.class public Landroidx/camera/core/SafeCloseImageReaderProxy;
.super Ljava/lang/Object;
.source "SafeCloseImageReaderProxy.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy;


# instance fields
.field private mForwardingImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

.field private final mImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

.field private final mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

.field private mIsClosed:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutstandingImages:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    .line 45
    iput-boolean v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mIsClosed:Z

    .line 57
    new-instance v0, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    iput-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    .line 72
    iput-object p1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 73
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private wrapImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;
    .registers 3

    if-eqz p1, :cond_13

    .line 114
    iget v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    .line 115
    new-instance v0, Landroidx/camera/core/SingleCloseImageProxy;

    invoke-direct {v0, p1}, Landroidx/camera/core/SingleCloseImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 117
    iget-object p1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    invoke-virtual {v0, p1}, Landroidx/camera/core/SingleCloseImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-object v0

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public acquireLatestImage()Landroidx/camera/core/ImageProxy;
    .registers 3

    .line 79
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->wrapImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public acquireNextImage()Landroidx/camera/core/ImageProxy;
    .registers 3

    .line 87
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireNextImage()Landroidx/camera/core/ImageProxy;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->wrapImageProxy(Landroidx/camera/core/ImageProxy;)Landroidx/camera/core/ImageProxy;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    .line 89
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public clearOnImageAvailableListener()V
    .registers 3

    .line 219
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 221
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public close()V
    .registers 3

    .line 102
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_a

    .line 104
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 106
    :cond_a
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->close()V

    .line 107
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getCapacity()I
    .registers 4

    .line 156
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v1

    iget v2, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 158
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getHeight()I
    .registers 3

    .line 174
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getHeight()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 176
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getImageFormat()I
    .registers 3

    .line 188
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 190
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getImageReaderProxy()Landroidx/camera/core/impl/ImageReaderProxy;
    .registers 3

    .line 230
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 232
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getMaxImages()I
    .registers 3

    .line 195
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getMaxImages()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 197
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 3

    .line 203
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 205
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getWidth()I
    .registers 3

    .line 181
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->getWidth()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isClosed()Z
    .registers 3

    .line 147
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-boolean v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mIsClosed:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 149
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$new$0$androidx-camera-core-SafeCloseImageReaderProxy(Landroidx/camera/core/ImageProxy;)V
    .registers 5

    .line 59
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    .line 61
    iget-boolean v2, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mIsClosed:Z

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    .line 62
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->close()V

    .line 64
    :cond_12
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mForwardingImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    .line 65
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v1, :cond_1a

    .line 67
    invoke-interface {v1, p1}, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;->onImageClose(Landroidx/camera/core/ImageProxy;)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception p1

    .line 65
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method synthetic lambda$setOnImageAvailableListener$1$androidx-camera-core-SafeCloseImageReaderProxy(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 3

    .line 213
    invoke-interface {p1, p0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public safeClose()V
    .registers 3

    .line 132
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 133
    :try_start_4
    iput-boolean v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mIsClosed:Z

    .line 134
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    invoke-interface {v1}, Landroidx/camera/core/impl/ImageReaderProxy;->clearOnImageAvailableListener()V

    .line 136
    iget v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mOutstandingImages:I

    if-nez v1, :cond_12

    .line 137
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->close()V

    .line 139
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 211
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mImageReaderProxy:Landroidx/camera/core/impl/ImageReaderProxy;

    new-instance v2, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroidx/camera/core/SafeCloseImageReaderProxy$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/SafeCloseImageReaderProxy;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-interface {v1, v2, p2}, Landroidx/camera/core/impl/ImageReaderProxy;->setOnImageAvailableListener(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 214
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public setOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .registers 3

    .line 167
    iget-object v0, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iput-object p1, p0, Landroidx/camera/core/SafeCloseImageReaderProxy;->mForwardingImageCloseListener:Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    .line 169
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
