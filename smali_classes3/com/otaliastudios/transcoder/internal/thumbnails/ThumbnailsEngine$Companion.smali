.class public final Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;
.super Ljava/lang/Object;
.source "ThumbnailsEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u000c\u0010\t\u001a\u00020\n*\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;",
        "",
        "()V",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "thumbnails",
        "",
        "options",
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions;",
        "isInterrupted",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;-><init>()V

    return-void
.end method

.method private final isInterrupted(Ljava/lang/Throwable;)Z
    .locals 2

    .line 21
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v1

    :goto_0
    return v1
.end method


# virtual methods
.method public final thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v0

    const-string v1, "thumbnails(): called..."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;-><init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V

    const/4 v1, 0x0

    .line 32
    :try_start_0
    new-instance v2, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    .line 33
    new-instance v3, Lcom/otaliastudios/transcoder/internal/DataSources;

    invoke-direct {v3, p1}, Lcom/otaliastudios/transcoder/internal/DataSources;-><init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V

    .line 34
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getRotation()I

    move-result v4

    .line 35
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getResizer()Lcom/otaliastudios/transcoder/resize/Resizer;

    move-result-object v5

    .line 36
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;->getThumbnailRequests()Ljava/util/List;

    move-result-object p1

    .line 32
    invoke-direct {v2, v3, v4, v5, p1}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;ILcom/otaliastudios/transcoder/resize/Resizer;Ljava/util/List;)V

    check-cast v2, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    move-object p1, v2

    check-cast p1, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;

    invoke-direct {v1, v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion$thumbnails$1;-><init>(Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/DefaultThumbnailsEngine;->thumbnails(Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchCompletion()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v2}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->cleanup()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 43
    :goto_0
    :try_start_2
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {p0, v2}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;->isInterrupted(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v2

    const-string v3, "Transcode canceled."

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, p1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->cleanup()V

    :goto_1
    return-void

    .line 47
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->access$getLog$cp()Lcom/otaliastudios/transcoder/internal/utils/Logger;

    move-result-object v2

    const-string v3, "Unexpected error while transcoding."

    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsDispatcher;->dispatchFailure(Ljava/lang/Throwable;)V

    .line 49
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    .line 52
    :cond_2
    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->cleanup()V

    :goto_3
    throw p1
.end method
