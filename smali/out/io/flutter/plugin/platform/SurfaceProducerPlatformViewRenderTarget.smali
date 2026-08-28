.class public Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "SurfaceProducerPlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceProducerRenderTarget"


# instance fields
.field private producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$SurfaceProducer;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 30
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()J
    .registers 3

    .line 35
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 51
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 25
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->getWidth()I

    move-result v0

    return v0
.end method

.method public isReleased()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public release()V
    .registers 2

    .line 40
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->release()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    return-void
.end method

.method public resize(II)V
    .registers 4

    .line 20
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0, p1, p2}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->setSize(II)V

    return-void
.end method

.method public scheduleFrame()V
    .registers 2

    .line 55
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;->producer:Lio/flutter/view/TextureRegistry$SurfaceProducer;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceProducer;->scheduleFrame()V

    return-void
.end method
