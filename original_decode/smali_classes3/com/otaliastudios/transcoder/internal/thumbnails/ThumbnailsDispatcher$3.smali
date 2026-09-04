.class Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;
.super Ljava/lang/Object;
.source "ThumbnailsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchFailure(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

.field final synthetic val$exception:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;Ljava/lang/Throwable;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;->val$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Lcom/otaliastudios/transcoder/ThumbnailerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;->val$exception:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/ThumbnailerListener;->onThumbnailsFailed(Ljava/lang/Throwable;)V

    return-void
.end method
