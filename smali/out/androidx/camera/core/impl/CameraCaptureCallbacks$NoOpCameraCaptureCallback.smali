.class final Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "CameraCaptureCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoOpCameraCaptureCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .registers 2

    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .registers 2

    return-void
.end method
