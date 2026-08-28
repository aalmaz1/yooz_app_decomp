.class public final synthetic Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/imagecapture/CaptureNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/CaptureNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .registers 3

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda3;->f$0:Landroidx/camera/core/imagecapture/CaptureNode;

    invoke-virtual {v0, p1}, Landroidx/camera/core/imagecapture/CaptureNode;->lambda$transform$1$androidx-camera-core-imagecapture-CaptureNode(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
