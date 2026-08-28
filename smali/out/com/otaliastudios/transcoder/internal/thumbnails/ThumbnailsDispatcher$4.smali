.class Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;
.super Ljava/lang/Object;
.source "ThumbnailsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchThumbnail(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

.field final synthetic val$thumbnail:Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;->val$thumbnail:Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Lcom/otaliastudios/transcoder/ThumbnailerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;->val$thumbnail:Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/ThumbnailerListener;->onThumbnail(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V

    return-void
.end method
