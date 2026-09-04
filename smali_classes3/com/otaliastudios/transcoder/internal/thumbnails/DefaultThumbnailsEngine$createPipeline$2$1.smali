.class final Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultThumbnailsEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
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


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;->$stubs:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(J)Ljava/lang/Boolean;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;->$stubs:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$Stub;->getLocalizedUs()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 97
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine$createPipeline$2$1;->invoke(J)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
