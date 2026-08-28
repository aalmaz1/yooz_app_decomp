.class public final synthetic Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .registers 2

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->lambda$preCapture$1(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
