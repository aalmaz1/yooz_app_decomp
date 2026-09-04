.class Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;
.super Ljava/lang/Object;
.source "FrameDrawer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;->this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->access$000()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object p1

    const-string v0, "New frame available"

    invoke-virtual {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;->this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->access$100(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;->this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->access$200(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;->this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->access$202(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;Z)Z

    .line 73
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer$1;->this$0:Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->access$100(Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p1

    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
