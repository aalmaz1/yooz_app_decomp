.class final Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThumbnailsEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;->thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $dispatcher:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;->$dispatcher:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 38
    check-cast p1, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;->invoke(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;->$dispatcher:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchThumbnail(Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;)V

    return-void
.end method
