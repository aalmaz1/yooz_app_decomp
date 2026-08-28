.class public final Lcom/fluttercandies/photo_manager/core/utils/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.kt"

# interfaces
.implements Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/DBUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,456:1\n37#2,2:457\n37#2,2:459\n37#2,2:461\n37#2,2:463\n37#2,2:465\n37#2,2:467\n37#2,2:469\n37#2,2:471\n37#2,2:473\n*S KotlinDebug\n*F\n+ 1 DBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/DBUtils\n*L\n27#1:457,2\n44#1:459,2\n79#1:461,2\n120#1:463,2\n161#1:465,2\n202#1:467,2\n222#1:469,2\n289#1:471,2\n400#1:473,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00014B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\"\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J>\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J>\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J*\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J&\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020 0\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\"\u0010%\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0012H\u0016J\u001a\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002J&\u0010)\u001a\u0008\u0012\u0004\u0012\u00020 0\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J \u0010*\u001a\u00020+2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u0012H\u0016J(\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010/2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u0013\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0002\u00101J\"\u00102\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u00065"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/DBUtils;",
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
        "()V",
        "deleteLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "locationKeys",
        "",
        "",
        "[Ljava/lang/String;",
        "copyToGallery",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
        "context",
        "Landroid/content/Context;",
        "assetId",
        "galleryId",
        "getAssetEntity",
        "id",
        "checkIfExists",
        "",
        "getAssetListPaged",
        "",
        "pathId",
        "page",
        "",
        "size",
        "requestType",
        "option",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "getAssetListRange",
        "start",
        "end",
        "getAssetPathEntityFromId",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "type",
        "getAssetPathList",
        "getExif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "getFilePath",
        "origin",
        "getGalleryInfo",
        "Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;",
        "getMainAssetPathEntity",
        "getOriginBytes",
        "",
        "asset",
        "needLocationPermission",
        "getSomeInfo",
        "Lkotlin/Pair;",
        "keys",
        "()[Ljava/lang/String;",
        "moveToGallery",
        "removeAllExistsAssets",
        "GalleryInfo",
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
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

.field private static final deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final locationKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    const-string v0, "longitude"

    const-string v1, "latitude"

    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->locationKeys:[Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getGalleryInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;
    .registers 13

    const-string v0, "bucket_id"

    const-string v1, "bucket_display_name"

    const-string v2, "_data"

    .line 433
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "getContentResolver(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v5

    const-string v7, "bucket_id = ?"

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v8, p1

    const/4 v9, 0x0

    move-object v3, p0

    .line 435
    invoke-virtual/range {v3 .. v9}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_29

    return-object v0

    .line 442
    :cond_29
    check-cast p1, Ljava/io/Closeable;

    :try_start_2b
    move-object v3, p1

    check-cast v3, Landroid/database/Cursor;

    .line 443
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_71

    if-nez v4, :cond_38

    .line 444
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 446
    :cond_38
    :try_start_38
    sget-object v4, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-virtual {v4, v3, v2}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_71

    if-nez v2, :cond_44

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 447
    :cond_44
    :try_start_44
    invoke-virtual {v4, v3, v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_71

    if-nez v1, :cond_4e

    .line 448
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 449
    :cond_4e
    :try_start_4e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_71

    goto :goto_5f

    :cond_5e
    move-object v2, v0

    :goto_5f
    if-nez v2, :cond_65

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :cond_65
    :try_start_65
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    new-instance v3, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    invoke-direct {v3, v2, p2, v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_71

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_71
    move-exception p2

    :try_start_72
    throw p2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public assetExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->assetExists(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearFileCache(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->clearFileCache(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;)V

    return-void
.end method

.method public convertTypeToMediaType(I)I
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->convertTypeToMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public copyToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 27

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assetId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "galleryId"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p2}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    if-eqz v1, :cond_1bd

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "No copy required, because the target gallery is the same as the current one."

    if-nez v1, :cond_1b7

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 268
    move-object v12, v8

    check-cast v12, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v13

    if-eqz v13, :cond_1b1

    const-string v14, "_display_name"

    const-string v15, "title"

    const-string v16, "date_added"

    const-string v17, "date_modified"

    const-string v18, "duration"

    const-string v19, "longitude"

    const-string v20, "latitude"

    const-string v21, "width"

    const-string v22, "height"

    .line 280
    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 282
    invoke-virtual {v13}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getType()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->convertTypeToMediaType(I)I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6a

    const-string v1, "description"

    .line 284
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6a
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    .line 289
    move-object v1, v10

    check-cast v1, Ljava/util/Collection;

    const/4 v6, 0x0

    new-array v2, v6, [Ljava/lang/String;

    .line 472
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "_data"

    .line 289
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getIdSelection()Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object v7, v2, v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v11

    move-object v15, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v12

    move v12, v6

    move-object/from16 v6, v17

    .line 287
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "Cannot find asset ."

    if-eqz v1, :cond_1ab

    .line 294
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 297
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;

    invoke-virtual {v2, v14}, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->getInsertUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 298
    invoke-direct {v8, v0, v9}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getGalleryInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    move-result-object v3

    if-eqz v3, :cond_19a

    .line 299
    invoke-virtual {v3}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 301
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 302
    sget-object v7, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v6}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1

    :cond_fa
    const-string v5, "media_type"

    .line 304
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {v4, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v11, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_192

    .line 310
    invoke-virtual {v11, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "."

    const-string v5, "Cannot open output stream for "

    if-eqz v3, :cond_17b

    new-instance v6, Ljava/io/FileInputStream;

    .line 312
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 313
    move-object v7, v6

    check-cast v7, Ljava/io/Closeable;

    :try_start_127
    move-object v9, v7

    check-cast v9, Ljava/io/FileInputStream;

    .line 314
    move-object v9, v3

    check-cast v9, Ljava/io/Closeable;
    :try_end_12d
    .catchall {:try_start_127 .. :try_end_12d} :catchall_172

    :try_start_12d
    move-object v10, v9

    check-cast v10, Ljava/io/OutputStream;

    .line 315
    check-cast v6, Ljava/io/InputStream;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v6, v3, v12, v11, v10}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_137
    .catchall {:try_start_12d .. :try_end_137} :catchall_169

    .line 314
    :try_start_137
    invoke-static {v9, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_172

    .line 313
    invoke-static {v7, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 319
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 320
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_152

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    .line 322
    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    return-object v0

    .line 321
    :cond_152
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_169
    move-exception v0

    move-object v1, v0

    .line 314
    :try_start_16b
    throw v1
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16c

    :catchall_16c
    move-exception v0

    move-object v2, v0

    :try_start_16e
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_172
    .catchall {:try_start_16e .. :try_end_172} :catchall_172

    :catchall_172
    move-exception v0

    move-object v1, v0

    .line 313
    :try_start_174
    throw v1
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_175

    :catchall_175
    move-exception v0

    move-object v2, v0

    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 311
    :cond_17b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot insert new asset."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19a
    const-string v0, "Cannot find gallery info"

    .line 298
    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 295
    :cond_1a5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1ab
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1b1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1b7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1bd
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get gallery id of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllUri()Landroid/net/Uri;
    .registers 2

    .line 18
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAllUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I
    .registers 4

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I

    move-result p1

    return p1
.end method

.method public getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I
    .registers 5

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAssetEntity(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreImageKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreVideoKeys()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->locationKeys:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getTypeKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 470
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 222
    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const-string v6, "_id = ?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v1

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p2, "getContentResolver(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    move-object v2, p0

    .line 226
    invoke-virtual/range {v2 .. v8}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_62

    return-object v0

    .line 233
    :cond_62
    check-cast p2, Ljava/io/Closeable;

    :try_start_64
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 235
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-virtual {v2, v1, p1, p3}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_79

    goto :goto_75

    :cond_74
    move-object p1, v0

    .line 234
    :goto_75
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_79
    move-exception p1

    :try_start_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getAssetListPaged(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v8, p6

    const-string v2, "context"

    move-object v9, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pathId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "option"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_23

    const/4 v2, 0x1

    move v11, v2

    goto :goto_24

    :cond_23
    move v11, v10

    .line 144
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_33

    .line 147
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p6

    move/from16 v3, p5

    move-object v4, v13

    .line 149
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->keys()[Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_55

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id IS NOT NULL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 154
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id = ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_64
    move-object v5, v0

    mul-int v0, p3, v1

    move-object v11, p0

    .line 156
    invoke-virtual {p0, v0, v1, v8}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "getContentResolver(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    .line 161
    check-cast v13, Ljava/util/Collection;

    new-array v0, v10, [Ljava/lang/String;

    .line 466
    invoke-interface {v13, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 161
    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    move-object v1, p0

    .line 157
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8e

    .line 163
    check-cast v12, Ljava/util/List;

    return-object v12

    .line 164
    :cond_8e
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_91
    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    .line 165
    :cond_94
    :goto_94
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 166
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    move-object v3, v2

    check-cast v3, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->toAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 167
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 170
    :cond_ae
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_b7

    const/4 v0, 0x0

    .line 164
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 171
    check-cast v12, Ljava/util/List;

    return-object v12

    :catchall_b7
    move-exception v0

    move-object v2, v0

    .line 164
    :try_start_b9
    throw v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAssetListRange(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "III",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v8, p6

    const-string v2, "context"

    move-object v9, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "galleryId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "option"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_23

    const/4 v2, 0x1

    move v11, v2

    goto :goto_24

    :cond_23
    move v11, v10

    .line 183
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_33

    .line 186
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p6

    move/from16 v3, p5

    move-object v4, v13

    .line 188
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->keys()[Ljava/lang/String;

    move-result-object v4

    if-eqz v11, :cond_55

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id IS NOT NULL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    .line 194
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bucket_id = ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_64
    move-object v5, v0

    sub-int v0, p4, v1

    move-object v11, p0

    .line 197
    invoke-virtual {p0, v1, v0, v8}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "getContentResolver(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    .line 202
    check-cast v13, Ljava/util/Collection;

    new-array v0, v10, [Ljava/lang/String;

    .line 468
    invoke-interface {v13, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 202
    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    move-object v1, p0

    .line 198
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8e

    .line 204
    check-cast v12, Ljava/util/List;

    return-object v12

    .line 205
    :cond_8e
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_91
    move-object v0, v1

    check-cast v0, Landroid/database/Cursor;

    .line 206
    :cond_94
    :goto_94
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 207
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    move-object v3, v2

    check-cast v3, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->toAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 208
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 211
    :cond_ae
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b0
    .catchall {:try_start_91 .. :try_end_b0} :catchall_b7

    const/4 v0, 0x0

    .line 205
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 212
    check-cast v12, Ljava/util/List;

    return-object v12

    :catchall_b7
    move-exception v0

    move-object v2, v0

    .line 205
    :try_start_b9
    throw v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAssetPathEntityFromId(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
    .registers 24

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pathId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "option"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v9, ""

    .line 107
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v0, v9

    goto :goto_29

    .line 111
    :cond_24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "AND bucket_id = ?"

    :goto_29
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object v5, v1

    .line 113
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bucket_id IS NOT NULL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") GROUP BY (bucket_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "getContentResolver(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v4

    .line 118
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "count(1)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 120
    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    .line 464
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 120
    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    move-object/from16 v2, p0

    .line 116
    invoke-virtual/range {v2 .. v8}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_8a

    return-object v2

    .line 123
    :cond_8a
    check-cast v1, Ljava/io/Closeable;

    :try_start_8c
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    .line 124
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 125
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    .line 126
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a2

    move-object v12, v9

    goto :goto_a6

    :cond_a2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v0

    :goto_a6
    const/4 v0, 0x2

    .line 127
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 128
    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_bc
    .catchall {:try_start_8c .. :try_end_bc} :catchall_c2

    goto :goto_be

    :cond_bd
    move-object v0, v2

    .line 124
    :goto_be
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_c2
    move-exception v0

    move-object v2, v0

    :try_start_c4
    throw v2
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "option"

    move-object/from16 v8, p3

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p2

    move-object v4, v9

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id IS NOT NULL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") GROUP BY (bucket_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v2, "getContentResolver(...)"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v12

    .line 42
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "count(1)"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    .line 44
    check-cast v9, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 460
    invoke-interface {v9, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 44
    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v10, p0

    .line 40
    invoke-virtual/range {v10 .. v16}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_72

    .line 46
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 47
    :cond_72
    check-cast v3, Ljava/io/Closeable;

    :try_start_74
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    .line 48
    :goto_77
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 49
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x1

    .line 50
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8b

    const-string v5, ""

    goto :goto_8e

    :cond_8b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_8e
    move-object v11, v5

    const/4 v5, 0x2

    .line 51
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 52
    new-instance v5, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x30

    const/16 v17, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v17}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->getContainsPathModified()Z

    move-result v6

    if-eqz v6, :cond_af

    .line 54
    sget-object v6, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-virtual {v6, v0, v5}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    .line 56
    :cond_af
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 58
    :cond_b3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b5
    .catchall {:try_start_74 .. :try_end_b5} :catchall_bc

    const/4 v0, 0x0

    .line 47
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 59
    check-cast v1, Ljava/util/List;

    return-object v1

    :catchall_bc
    move-exception v0

    move-object v1, v0

    .line 47
    :try_start_be
    throw v1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAssetsByRange(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            "III)",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetsByRange(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAssetsPath(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetsPath(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getColumnNames(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getExif(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    move-object v1, p0

    check-cast v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1a

    return-object p2

    .line 252
    :cond_1a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    :cond_32
    return-object p2
.end method

.method public getFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "id"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    move-object v0, p0

    check-cast v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_1a
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdSelection()Ljava/lang/String;
    .registers 2

    .line 18
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getIdSelection(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getInt(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getLong(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMainAssetPathEntity(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
            ")",
            "Ljava/util/List<",
            "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "count(1)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 70
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p3

    move v4, p2

    move-object v5, v9

    .line 71
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id IS NOT NULL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p1, "getContentResolver(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v5

    .line 79
    check-cast v9, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 462
    invoke-interface {v9, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 79
    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, v1

    .line 75
    invoke-virtual/range {v3 .. v9}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_64

    .line 81
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 82
    :cond_64
    check-cast p1, Ljava/io/Closeable;

    :try_start_66
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    .line 83
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 84
    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 85
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 86
    new-instance p3, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const-string v3, "isAll"

    const-string v4, "Recent"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p3

    move v6, p2

    invoke-direct/range {v2 .. v10}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_8a
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8c
    .catchall {:try_start_66 .. :try_end_8c} :catchall_93

    const/4 p2, 0x0

    .line 82
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_93
    move-exception p2

    .line 82
    :try_start_94
    throw p2
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    :catchall_95
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getMediaType(I)I
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public getMediaUri(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 5

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getMediaUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginBytes(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B
    .registers 4

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "asset"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPathModifiedDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getPathModifiedDate(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "getContentResolver(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string p1, "bucket_id"

    const-string v0, "_data"

    .line 414
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id = ?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    .line 412
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_31

    return-object v1

    .line 419
    :cond_31
    check-cast p2, Ljava/io/Closeable;

    :try_start_33
    move-object v2, p2

    check-cast v2, Landroid/database/Cursor;

    .line 420
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_5a

    if-nez v3, :cond_40

    .line 421
    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 423
    :cond_40
    :try_start_40
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 425
    new-instance v2, Lkotlin/Pair;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_5a

    invoke-static {p2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_5a
    move-exception p1

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;
    .registers 4

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getSortOrder(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getString(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getStringOrNull(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFromMediaType(I)I
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getTypeFromMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public getUri(JIZ)Landroid/net/Uri;
    .registers 5

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->injectModifiedDate(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    return-void
.end method

.method public keys()[Ljava/lang/String;
    .registers 3

    .line 26
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreImageKeys()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreVideoKeys()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getTypeKeys()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->locationKeys:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 458
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .line 18
    invoke-static/range {p0 .. p6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logQuery(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public logRowWithId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 18
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logRowWithId(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public moveToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 16

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_12a

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-direct {p0, p1, p3}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getGalleryInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;

    move-result-object v1

    if-eqz v1, :cond_11f

    .line 332
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v4

    const-string v9, "_data"

    .line 339
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getIdSelection()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    .line 337
    invoke-virtual/range {v2 .. v8}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, " path"

    const-string v4, "Cannot find "

    if-eqz v2, :cond_fa

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 346
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 348
    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 355
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 356
    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bucket_id"

    .line 357
    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "bucket_display_name"

    .line 358
    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$GalleryInfo;->getGalleryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getIdSelection()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    aput-object p2, v2, v11

    invoke-virtual {v0, p3, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_c2

    .line 363
    move-object v0, p0

    check-cast v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1

    .line 365
    :cond_c2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot update "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " relativePath"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 352
    :cond_e0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 343
    :cond_fa
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_114
    const-string p1, "No move required, because the target gallery is the same as the current one."

    .line 333
    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_11f
    const-string p1, "Cannot get target gallery info"

    .line 330
    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 327
    :cond_12a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot get gallery id of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public removeAllExistsAssets(Landroid/content/Context;)Z
    .registers 21

    const-string v0, "_data"

    const-string v1, "_id"

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    return v5

    .line 374
    :cond_15
    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 375
    :try_start_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 377
    sget-object v6, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {v6}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v8

    .line 379
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    .line 377
    invoke-virtual/range {v6 .. v12}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_105

    if-nez v6, :cond_3e

    .line 383
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    .line 384
    :cond_3e
    :try_start_3e
    check-cast v6, Ljava/io/Closeable;
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_105

    :try_start_40
    move-object v7, v6

    check-cast v7, Landroid/database/Cursor;

    .line 385
    :cond_43
    :goto_43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_fc

    const-string v9, "PhotoManagerPlugin"

    if-eqz v8, :cond_80

    .line 386
    :try_start_4b
    sget-object v8, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-virtual {v8, v7, v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 387
    invoke-virtual {v8, v7, v0}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 388
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_43

    .line 389
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " was not exists. "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 393
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will be delete ids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_4b .. :try_end_96} :catchall_fc

    const/4 v0, 0x0

    .line 384
    :try_start_97
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 395
    move-object v10, v4

    check-cast v10, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/DBUtils$removeAllExistsAssets$1$idWhere$1;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils$removeAllExistsAssets$1$idWhere$1;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x1e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/DBUtils;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/DBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v1

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " )"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    check-cast v4, Ljava/util/Collection;

    new-array v5, v5, [Ljava/lang/String;

    .line 474
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 397
    invoke-virtual {v3, v1, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete rows: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_97 .. :try_end_f7} :catchall_105

    .line 374
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_fc
    move-exception v0

    move-object v1, v0

    .line 384
    :try_start_fe
    throw v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v0

    move-object v3, v0

    :try_start_101
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_105
    .catchall {:try_start_101 .. :try_end_105} :catchall_105

    :catchall_105
    move-exception v0

    .line 374
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public saveImage(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public saveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 18
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveVideo(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public throwMsg(Ljava/lang/String;)Ljava/lang/Void;
    .registers 2

    .line 18
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->throwMsg(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 4

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->toAssetEntity(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method
