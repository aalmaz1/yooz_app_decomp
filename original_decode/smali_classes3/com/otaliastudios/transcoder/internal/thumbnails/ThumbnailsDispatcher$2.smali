.class Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;
.super Ljava/lang/Object;
.source "ThumbnailsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchCompletion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Lcom/otaliastudios/transcoder/ThumbnailerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->access$100(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/ThumbnailerListener;->onThumbnailsCompleted(Ljava/util/List;)V

    return-void
.end method
