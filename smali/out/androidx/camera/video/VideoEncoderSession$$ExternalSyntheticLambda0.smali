.class public final synthetic Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/camera/video/VideoEncoderSession$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/video/VideoEncoderSession;

    invoke-virtual {v0}, Landroidx/camera/video/VideoEncoderSession;->lambda$terminateNow$3$androidx-camera-video-VideoEncoderSession()V

    return-void
.end method
