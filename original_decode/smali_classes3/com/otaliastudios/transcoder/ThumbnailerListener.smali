.class public interface abstract Lcom/otaliastudios/transcoder/ThumbnailerListener;
.super Ljava/lang/Object;
.source "ThumbnailerListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/ThumbnailerListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0016\u0010\u0007\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/ThumbnailerListener;",
        "",
        "onThumbnail",
        "",
        "thumbnail",
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
        "onThumbnailsCanceled",
        "onThumbnailsCompleted",
        "thumbnails",
        "",
        "onThumbnailsFailed",
        "exception",
        "",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onThumbnail(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V
.end method

.method public abstract onThumbnailsCanceled()V
.end method

.method public abstract onThumbnailsCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onThumbnailsFailed(Ljava/lang/Throwable;)V
.end method
