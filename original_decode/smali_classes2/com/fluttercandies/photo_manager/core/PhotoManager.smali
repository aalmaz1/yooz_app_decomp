.class public final Lcom/fluttercandies/photo_manager/core/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000e\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0018\u0000 Q2\u00020\u0001:\u0001QB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0015J\u0006\u0010\u001b\u001a\u00020\u0015J\u001e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u0016\u001a\u00020\u0017J \u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u001e\u0010\'\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&2\u0006\u0010(\u001a\u00020$J&\u0010\'\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&2\u0006\u0010(\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u0017J6\u0010)\u001a\u0008\u0012\u0004\u0012\u00020 0*2\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020$2\u0006\u0010%\u001a\u00020&J4\u0010.\u001a\u0008\u0012\u0004\u0012\u00020 0*2\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$2\u0006\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020$2\u0006\u0010%\u001a\u00020&J,\u00101\u001a\u0008\u0012\u0004\u0012\u00020\"0*2\u0006\u0010#\u001a\u00020$2\u0006\u00102\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020&J.\u00104\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010%\u001a\u00020&2\u0006\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020$2\u0006\u0010(\u001a\u00020$J\u000e\u00105\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019J\u001e\u00106\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019J\u001a\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020:092\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010;\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020<2\u0006\u0010#\u001a\u00020$J\u001e\u0010=\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010>\u001a\u00020\u000fJ\u001e\u0010?\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010%\u001a\u00020@2\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010\u0016\u001a\u00020\u0017J\u001e\u0010C\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010D\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010E\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019J$\u0010F\u001a\u00020\u00152\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00170*2\u0006\u0010%\u001a\u00020@2\u0006\u0010\u0018\u001a\u00020\u0019J*\u0010H\u001a\u0004\u0018\u00010 2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020\u00172\u0006\u0010L\u001a\u00020\u00172\u0008\u0010M\u001a\u0004\u0018\u00010\u0017J*\u0010H\u001a\u0004\u0018\u00010 2\u0006\u0010N\u001a\u00020\u00172\u0006\u0010K\u001a\u00020\u00172\u0006\u0010L\u001a\u00020\u00172\u0008\u0010M\u001a\u0004\u0018\u00010\u0017J*\u0010O\u001a\u0004\u0018\u00010 2\u0006\u0010N\u001a\u00020\u00172\u0006\u0010K\u001a\u00020\u00172\u0006\u0010P\u001a\u00020\u00172\u0008\u0010M\u001a\u0004\u0018\u00010\u0017R*\u0010\u0005\u001a\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006j\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006R"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "cacheFutures",
        "Ljava/util/ArrayList;",
        "Lcom/bumptech/glide/request/FutureTarget;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/ArrayList;",
        "dbUtils",
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
        "getDbUtils",
        "()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
        "useOldApi",
        "",
        "getUseOldApi",
        "()Z",
        "setUseOldApi",
        "(Z)V",
        "assetExists",
        "",
        "id",
        "",
        "resultHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "cancelCacheRequests",
        "clearFileCache",
        "copyToGallery",
        "assetId",
        "galleryId",
        "fetchEntityProperties",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
        "fetchPathProperties",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "type",
        "",
        "option",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "getAssetCount",
        "requestType",
        "getAssetListPaged",
        "",
        "typeInt",
        "page",
        "size",
        "getAssetListRange",
        "start",
        "end",
        "getAssetPathList",
        "hasAll",
        "onlyAll",
        "getAssetsByRange",
        "getColumnNames",
        "getFile",
        "isOrigin",
        "getLocation",
        "",
        "",
        "getMediaUri",
        "",
        "getOriginBytes",
        "needLocationPermission",
        "getThumb",
        "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;",
        "getUri",
        "Landroid/net/Uri;",
        "moveToGallery",
        "albumId",
        "removeAllExistsAssets",
        "requestCache",
        "ids",
        "saveImage",
        "image",
        "",
        "title",
        "description",
        "relativePath",
        "path",
        "saveVideo",
        "desc",
        "Companion",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ALL_ALBUM_NAME:Ljava/lang/String; = "Recent"

.field public static final ALL_ID:Ljava/lang/String; = "isAll"

.field public static final Companion:Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;

.field private static final threadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final cacheFutures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private useOldApi:Z


# direct methods
.method public static synthetic $r8$lambda$vp5AP4axkoLf-6D4ckC9C6t2N50(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 0

    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->requestCache$lambda$3(Lcom/bumptech/glide/request/FutureTarget;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->Companion:Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;

    const/4 v0, 0x5

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cacheFutures:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic getAssetListPaged$default(Lcom/fluttercandies/photo_manager/core/PhotoManager;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/Object;)Ljava/util/List;
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 65
    invoke-virtual/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetListPaged(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->useOldApi:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    check-cast v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    check-cast v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    :goto_1
    return-object v0
.end method

.method private static final requestCache$lambda$3(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 1

    const-string v0, "$cacheFuture"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final assetExists(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->assetExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final cancelCacheRequests()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cacheFutures:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cacheFutures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/FutureTarget;

    .line 284
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearFileCache()V
    .locals 2

    .line 132
    sget-object v0, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->INSTANCE:Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->clearCache(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->clearFileCache(Landroid/content/Context;)V

    return-void
.end method

.method public final copyToGallery(Ljava/lang/String;Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->copyToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    .line 220
    :cond_0
    sget-object p2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final fetchEntityProperties(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public final fetchPathProperties(Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
    .locals 10

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAll"

    .line 137
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {p1, v0, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    .line 146
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->getAssetCount()I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    .line 148
    :cond_1
    new-instance p1, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const-string v2, "isAll"

    const-string v3, "Recent"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->getContainsPathModified()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object p2

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {p2, p3, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    :cond_2
    :goto_1
    return-object p1

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetPathEntityFromId(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->getContainsPathModified()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object p2

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {p2, p3, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    :cond_4
    return-object p1
.end method

.method public final getAssetCount(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)V
    .locals 2

    const-string v0, "resultHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I

    move-result p2

    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAssetCount(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)V
    .locals 2

    const-string v0, "resultHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I

    move-result p2

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAssetListPaged(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAll"

    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 73
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move v3, p3

    move v4, p4

    move v5, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetListPaged(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getAssetListRange(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "galleryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAll"

    .line 83
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 84
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move v3, p3

    move v4, p4

    move v5, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetListRange(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getAssetPathList(IZZLcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object p2

    iget-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {p2, p3, p1, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getMainAssetPathEntity(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object p3

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {p3, v0, p1, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object p3

    if-nez p2, :cond_1

    return-object p3

    .line 56
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    move v3, p4

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    .line 57
    invoke-virtual {p4}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;->getAssetCount()I

    move-result p4

    add-int/2addr v3, p4

    goto :goto_0

    .line 59
    :cond_2
    new-instance p2, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const-string v1, "isAll"

    const-string v2, "Recent"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p2

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getAssetsByRange(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)V
    .locals 7

    const-string v0, "resultHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetsByRange(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;

    move-result-object p2

    .line 316
    sget-object p3, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {p3, p2}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAssets(Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final getColumnNames(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    const-string v0, "resultHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getColumnNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFile(Ljava/lang/String;ZLcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p3, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final getLocation(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getExif(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "lng"

    const-string v1, "lat"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    new-array p1, v2, [Lkotlin/Pair;

    const-wide/16 v5, 0x0

    .line 203
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array v2, v2, [Lkotlin/Pair;

    .line 205
    aget-wide v5, p1, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v4

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getMediaUri(JI)Ljava/lang/String;
    .locals 2

    .line 210
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getMediaUri(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getOriginBytes(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "The asset not found"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError$default(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getOriginBytes(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B

    move-result-object p3

    .line 124
    invoke-virtual {p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 126
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logRowWithId(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "202"

    const-string v0, "get originBytes error"

    .line 127
    invoke-virtual {p2, p1, v0, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getThumb(Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p3

    const-string v0, "id"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    move-object/from16 v9, p2

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getWidth()I

    move-result v14

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getHeight()I

    move-result v13

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getQuality()I

    move-result v0

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v16

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getFrame()J

    move-result-wide v17

    .line 94
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v2

    iget-object v3, v1, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v3, "The asset not found!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object/from16 v2, p3

    .line 96
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError$default(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    sget-object v2, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->INSTANCE:Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;

    .line 100
    iget-object v10, v1, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getWidth()I

    move-result v12

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->getHeight()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v2

    move v2, v13

    move v13, v3

    move v3, v14

    move-object/from16 v14, v16

    move-object v4, v15

    move v15, v0

    move-wide/from16 v16, v17

    move-object/from16 v18, p3

    .line 99
    :try_start_1
    invoke-virtual/range {v9 .. v18}, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->getThumbnail(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;IILandroid/graphics/Bitmap$CompressFormat;IJLcom/fluttercandies/photo_manager/util/ResultHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v2, v13

    move v3, v14

    move-object v4, v15

    .line 110
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " thumbnail error, width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", height: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v5, "PhotoManager"

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v2

    iget-object v3, v1, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v2, v3, v8}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->logRowWithId(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "201"

    const-string v3, "get thumb error"

    .line 112
    invoke-virtual {v4, v2, v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getUseOldApi()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->useOldApi:Z

    return v0
.end method

.method public final moveToGallery(Ljava/lang/String;Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->moveToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    .line 234
    :cond_0
    sget-object p2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final removeAllExistsAssets(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    const-string v0, "resultHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->removeAllExistsAssets(Landroid/content/Context;)Z

    move-result v0

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestCache(Ljava/util/List;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->getAssetsPath(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 259
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    sget-object v1, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->INSTANCE:Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;->requestCacheThumb(Landroid/content/Context;Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cacheFutures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cacheFutures:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/FutureTarget;

    .line 266
    sget-object p3, Lcom/fluttercandies/photo_manager/core/PhotoManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fluttercandies/photo_manager/core/PhotoManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManager$$ExternalSyntheticLambda0;-><init>(Lcom/bumptech/glide/request/FutureTarget;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final saveImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .locals 7

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public final saveImage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .locals 7

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->saveImage(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public final saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .locals 6

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getDbUtils()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->saveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public final setUseOldApi(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManager;->useOldApi:Z

    return-void
.end method
