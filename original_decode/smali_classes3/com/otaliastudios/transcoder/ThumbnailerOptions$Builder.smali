.class public final Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
.super Ljava/lang/Object;
.source "ThumbnailerOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/ThumbnailerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u001dJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010#\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;",
        "",
        "()V",
        "dataSources",
        "",
        "Lcom/otaliastudios/transcoder/source/DataSource;",
        "listener",
        "Lcom/otaliastudios/transcoder/ThumbnailerListener;",
        "listenerHandler",
        "Landroid/os/Handler;",
        "resizer",
        "Lcom/otaliastudios/transcoder/resize/MultiResizer;",
        "resizerSet",
        "",
        "rotation",
        "",
        "thumbnailRequests",
        "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
        "addDataSource",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "dataSource",
        "fileDescriptor",
        "Ljava/io/FileDescriptor;",
        "filePath",
        "",
        "addResizer",
        "Lcom/otaliastudios/transcoder/resize/Resizer;",
        "addThumbnailRequest",
        "request",
        "build",
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions;",
        "setListener",
        "setListenerHandler",
        "setRotation",
        "thumbnails",
        "Ljava/util/concurrent/Future;",
        "Ljava/lang/Void;",
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


# instance fields
.field private final dataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

.field private listenerHandler:Landroid/os/Handler;

.field private final resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

.field private resizerSet:Z

.field private rotation:I

.field private final thumbnailRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->dataSources:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->thumbnailRequests:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/resize/MultiResizer;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    return-void
.end method


# virtual methods
.method public final addDataSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/otaliastudios/transcoder/source/UriDataSource;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 39
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->dataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addDataSource(Ljava/io/FileDescriptor;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "fileDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addDataSource(Ljava/lang/String;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/source/FilePathDataSource;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/otaliastudios/transcoder/source/DataSource;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "resizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 55
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/transcoder/resize/MultiResizer;->addResizer(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->resizerSet:Z

    return-object p0
.end method

.method public final addThumbnailRequest(Lcom/otaliastudios/transcoder/thumbnail/ThumbnailRequest;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 68
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->thumbnailRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/otaliastudios/transcoder/ThumbnailerOptions;
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->dataSources:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->thumbnailRequests:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 91
    iget-object v6, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->listener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

    if-eqz v6, :cond_3

    .line 94
    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->listenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    move-object v7, v0

    .line 96
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->resizerSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->resizer:Lcom/otaliastudios/transcoder/resize/MultiResizer;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/otaliastudios/transcoder/resize/ExactResizer;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/transcoder/resize/ExactResizer;-><init>(II)V

    :goto_0
    check-cast v0, Lcom/otaliastudios/transcoder/resize/Resizer;

    move-object v3, v0

    .line 97
    new-instance v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions;

    .line 98
    iget-object v1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->dataSources:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 100
    iget v4, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->rotation:I

    .line 101
    iget-object v1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->thumbnailRequests:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    move-object v1, v0

    .line 97
    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/transcoder/ThumbnailerOptions;-><init>(Ljava/util/List;Lcom/otaliastudios/transcoder/resize/Resizer;ILjava/util/List;Lcom/otaliastudios/transcoder/ThumbnailerListener;Landroid/os/Handler;)V

    return-object v0

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener can\'t be null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 88
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one thumbnail request is required!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one data source is required!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setListener(Lcom/otaliastudios/transcoder/ThumbnailerListener;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 81
    iput-object p1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->listener:Lcom/otaliastudios/transcoder/ThumbnailerListener;

    return-object p0
.end method

.method public final setListenerHandler(Landroid/os/Handler;)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 77
    iput-object p1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->listenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final setRotation(I)Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;
    .locals 1

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    .line 64
    iput p1, p0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->rotation:I

    return-object p0
.end method

.method public final thumbnails()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/otaliastudios/transcoder/Thumbnailer;->Companion:Lcom/otaliastudios/transcoder/Thumbnailer$Companion;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/Thumbnailer$Companion;->getInstance()Lcom/otaliastudios/transcoder/Thumbnailer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->build()Lcom/otaliastudios/transcoder/ThumbnailerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/Thumbnailer;->thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
