.class public interface abstract Landroidx/camera/core/impl/RequestProcessor$Callback;
.super Ljava/lang/Object;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onCaptureBufferLost(Landroidx/camera/core/impl/RequestProcessor$Request;JI)V
    .registers 5

    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .registers 3

    return-void
.end method

.method public onCaptureFailed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureFailure;)V
    .registers 3

    return-void
.end method

.method public onCaptureProgressed(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/CameraCaptureResult;)V
    .registers 3

    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .registers 2

    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .registers 4

    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/core/impl/RequestProcessor$Request;JJ)V
    .registers 6

    return-void
.end method
