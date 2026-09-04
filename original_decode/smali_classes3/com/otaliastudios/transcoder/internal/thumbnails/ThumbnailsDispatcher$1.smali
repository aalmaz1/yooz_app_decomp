.class Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$1;
.super Ljava/lang/Object;
.source "ThumbnailsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchCancel()V
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

    .line 29
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$1;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$1;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Lcom/otaliastudios/transcoder/ThumbnailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/ThumbnailerListener;->onThumbnailsCanceled()V

    return-void
.end method
