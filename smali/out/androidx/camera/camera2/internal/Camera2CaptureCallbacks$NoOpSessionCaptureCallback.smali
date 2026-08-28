.class final Landroidx/camera/camera2/internal/Camera2CaptureCallbacks$NoOpSessionCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2CaptureCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/Camera2CaptureCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoOpSessionCaptureCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 3

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 5

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    return-void
.end method
