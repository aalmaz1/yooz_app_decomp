.class final Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultThumbnailsEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2;->invoke()Lcom/otaliastudios/transcoder/internal/pipeline/Pipeline$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "pos",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;"
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
.field final synthetic $stubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;",
            ">;",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->$stubs:Ljava/util/List;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 97
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, p2}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->invoke(JLandroid/graphics/Bitmap;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JLandroid/graphics/Bitmap;)V
    .registers 9

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->$stubs:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;

    .line 103
    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->setActualLocalizedUs(J)V

    .line 104
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->access$getLog$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Got snapshot. positionUs="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getPositionUs()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " localizedUs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 105
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getLocalizedUs()J

    move-result-wide v1

    .line 104
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " actualLocalizedUs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 106
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getActualLocalizedUs()J

    move-result-wide v1

    .line 104
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " deltaUs="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 107
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getLocalizedUs()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getActualLocalizedUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 104
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 108
    new-instance p1, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getRequest()Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;

    move-result-object p2

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getPositionUs()J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/otaliastudios/transcoder/thumbnail/Thumbnail;-><init>(Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;JLandroid/graphics/Bitmap;)V

    .line 109
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$2;->this$0:Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    invoke-static {p2}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->access$getProgress$p(Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-nez p2, :cond_76

    const-string p2, "progress"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_76
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
