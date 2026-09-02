.class Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;
.super Ljava/lang/Object;
.source "ThumbnailsDispatcher.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mResults:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getListenerHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getListener()Lcom/otaliastudios/transcoder/ThumbnailerListener;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mListener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Lcom/otaliastudios/transcoder/ThumbnailerListener;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mListener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)Ljava/util/List;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mResults:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method dispatchCancel()V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$1;-><init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchCompletion()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$2;-><init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchFailure(Ljava/lang/Throwable;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$3;-><init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchThumbnail(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher$4;-><init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
