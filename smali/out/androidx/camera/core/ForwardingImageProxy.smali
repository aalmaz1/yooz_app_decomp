.class public abstract Landroidx/camera/core/ForwardingImageProxy;
.super Ljava/lang/Object;
.source "ForwardingImageProxy.java"

# interfaces
.implements Landroidx/camera/core/ImageProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;
    }
.end annotation


# instance fields
.field protected final mImage:Landroidx/camera/core/ImageProxy;

.field private final mLock:Ljava/lang/Object;

.field private final mOnImageCloseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/camera/core/ImageProxy;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    .line 57
    iput-object p1, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V
    .registers 4

    .line 117
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public close()V
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->close()V

    .line 63
    invoke-virtual {p0}, Landroidx/camera/core/ForwardingImageProxy;->notifyOnImageCloseListeners()V

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 2

    .line 69
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 84
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImage()Landroid/media/Image;
    .registers 2

    .line 108
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method public getImageInfo()Landroidx/camera/core/ImageInfo;
    .registers 2

    .line 101
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .registers 2

    .line 95
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 89
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v0

    return v0
.end method

.method protected notifyOnImageCloseListeners()V
    .registers 4

    .line 125
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/camera/core/ForwardingImageProxy;->mOnImageCloseListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 130
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 131
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;

    .line 132
    invoke-interface {v1, p0}, Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;->onImageClose(Landroidx/camera/core/ImageProxy;)V

    goto :goto_f

    :cond_1f
    return-void

    :catchall_20
    move-exception v1

    .line 130
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 74
    iget-object v0, p0, Landroidx/camera/core/ForwardingImageProxy;->mImage:Landroidx/camera/core/ImageProxy;

    invoke-interface {v0, p1}, Landroidx/camera/core/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method
