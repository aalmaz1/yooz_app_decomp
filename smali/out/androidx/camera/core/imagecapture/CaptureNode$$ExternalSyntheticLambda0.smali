.class public final synthetic Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/CaptureNode$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->safeClose()V

    return-void
.end method
