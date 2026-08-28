.class Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;
.super Ljava/lang/Object;
.source "SurfaceTexturePlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrimMemory(I)V
    .registers 3

    const/16 v0, 0x50

    if-ne p1, v0, :cond_10

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_10

    .line 37
    iget-object p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->access$002(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;Z)Z

    :cond_10
    return-void
.end method
