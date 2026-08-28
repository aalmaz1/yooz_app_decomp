.class public final Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;
.super Ljava/lang/Object;
.source "AndroidQDBUtils.kt"

# interfaces
.implements Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidQDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidQDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,521:1\n37#2,2:522\n37#2,2:526\n37#2,2:528\n37#2,2:530\n37#2,2:532\n37#2,2:534\n37#2,2:537\n37#2,2:543\n37#2,2:545\n215#3,2:524\n1#4:536\n11065#5:539\n11400#5,3:540\n*S KotlinDebug\n*F\n+ 1 AndroidQDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils\n*L\n51#1:522,2\n97#1:526,2\n161#1:528,2\n201#1:530,2\n219#1:532,2\n266#1:534,2\n356#1:537,2\n437#1:543,2\n473#1:545,2\n69#1:524,2\n436#1:539\n436#1:540,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0016JC\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0016\u00a2\u0006\u000c\u0008\u001c\u0012\u0008\u0008\u001d\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\r0\u001bH\u0002J\"\u0010\u001e\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0008H\u0016J>\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00110\"2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J>\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00110\"2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010*\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J*\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J&\u0010.\u001a\u0008\u0012\u0004\u0012\u00020,0\"2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J\u001a\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0004H\u0016J\"\u00101\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u0008H\u0016J&\u00103\u001a\u0008\u0012\u0004\u0012\u00020,0\"2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020(H\u0016J \u00104\u001a\u0002052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00106\u001a\u00020\u00112\u0006\u00107\u001a\u00020\u0008H\u0016J\u001a\u00108\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J(\u00109\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010:2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016J\"\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010<\u001a\u00020(H\u0016J\u001a\u0010=\u001a\u00020>2\u0006\u00106\u001a\u00020\u00112\u0008\u0008\u0002\u0010?\u001a\u00020\u0008H\u0002J\u0013\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00040AH\u0016\u00a2\u0006\u0002\u0010BJ\"\u0010C\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010D\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006E"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;",
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;",
        "()V",
        "TAG",
        "",
        "deleteLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "isQStorageLegacy",
        "",
        "scopedCache",
        "Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;",
        "shouldUseScopedCache",
        "clearFileCache",
        "",
        "context",
        "Landroid/content/Context;",
        "copyToGallery",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;",
        "assetId",
        "galleryId",
        "cursorWithRange",
        "cursor",
        "Landroid/database/Cursor;",
        "start",
        "",
        "pageSize",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "getAssetEntity",
        "id",
        "checkIfExists",
        "getAssetListPaged",
        "",
        "pathId",
        "page",
        "size",
        "requestType",
        "option",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "getAssetListRange",
        "end",
        "getAssetPathEntityFromId",
        "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;",
        "type",
        "getAssetPathList",
        "getExif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "getFilePath",
        "origin",
        "getMainAssetPathEntity",
        "getOriginBytes",
        "",
        "asset",
        "needLocationPermission",
        "getRelativePath",
        "getSomeInfo",
        "Lkotlin/Pair;",
        "getSortOrder",
        "filterOption",
        "getUri",
        "Landroid/net/Uri;",
        "isOrigin",
        "keys",
        "",
        "()[Ljava/lang/String;",
        "moveToGallery",
        "removeAllExistsAssets",
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
.field public static final INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

.field private static final TAG:Ljava/lang/String; = "PhotoManagerPlugin"

.field private static final deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final isQStorageLegacy:Z

.field private static final scopedCache:Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;

.field private static final shouldUseScopedCache:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    .line 30
    new-instance v0, Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->scopedCache:Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_1e

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    sput-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->shouldUseScopedCache:Z

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_2c

    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    sput-boolean v1, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->isQStorageLegacy:Z

    .line 413
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cursorWithRange(Landroid/database/Cursor;IILkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/database/Cursor;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 126
    sget-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->isQStorageLegacy:Z

    if-nez v0, :cond_9

    add-int/lit8 p2, p2, -0x1

    .line 127
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_9
    const/4 p2, 0x0

    :goto_a
    if-ge p2, p3, :cond_18

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method private final getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 482
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v2

    const-string p1, "bucket_id"

    const-string v0, "relative_path"

    .line 484
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "bucket_id = ?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    .line 482
    invoke-virtual/range {v0 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_25

    return-object v0

    .line 489
    :cond_25
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    :try_start_28
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 490
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3d

    if-nez v2, :cond_35

    .line 491
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 493
    :cond_35
    :try_start_35
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_3d
    move-exception p1

    :try_start_3e
    throw p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final getUri(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Landroid/net/Uri;
    .registers 5

    .line 307
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getType()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getUri(JIZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getUri$default(Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;ZILjava/lang/Object;)Landroid/net/Uri;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 306
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getUri(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public assetExists(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->assetExists(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearFileCache(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->clearFileCache(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;)V

    .line 518
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->scopedCache:Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;

    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;->clearFileCache(Landroid/content/Context;)V

    return-void
.end method

.method public convertTypeToMediaType(I)I
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->convertTypeToMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public copyToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 26

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

    .line 328
    invoke-virtual/range {p0 .. p2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    if-eqz v1, :cond_1b5

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "No copy required, because the target gallery is the same as the current one."

    if-nez v1, :cond_1ac

    .line 333
    move-object v11, v8

    check-cast v11, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v12

    if-eqz v12, :cond_1a3

    const-string v13, "_display_name"

    const-string v14, "title"

    const-string v15, "date_added"

    const-string v16, "date_modified"

    const-string v17, "datetaken"

    const-string v18, "duration"

    const-string v19, "width"

    const-string v20, "height"

    const-string v21, "orientation"

    .line 345
    filled-new-array/range {v13 .. v21}, [Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 348
    invoke-virtual {v12}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getType()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->convertTypeToMediaType(I)I

    move-result v13

    const/4 v1, 0x3

    if-ne v13, v1, :cond_66

    const-string v1, "description"

    .line 350
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 354
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    .line 356
    move-object v1, v10

    check-cast v1, Ljava/util/Collection;

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/String;

    .line 538
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "relative_path"

    .line 356
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getIdSelection()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object v7, v1, v15

    const/4 v7, 0x0

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move v15, v2

    move-object v2, v14

    move-object v15, v6

    move-object/from16 v6, v16

    .line 354
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "Cannot find asset."

    if-eqz v1, :cond_19a

    .line 361
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_191

    .line 365
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;

    invoke-virtual {v2, v13}, Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;->getInsertUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 366
    invoke-direct {v8, v0, v9}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 368
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 369
    sget-object v7, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v6}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc

    :cond_d5
    const-string v5, "media_type"

    .line 371
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    invoke-virtual {v4, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v14, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_186

    .line 376
    invoke-virtual {v14, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "."

    const-string v5, "Cannot open output stream for "

    if-eqz v3, :cond_16c

    const/4 v6, 0x1

    .line 378
    invoke-direct {v8, v12, v6}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getUri(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Landroid/net/Uri;

    move-result-object v6

    .line 379
    invoke-virtual {v14, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_154

    .line 381
    move-object v6, v7

    check-cast v6, Ljava/io/Closeable;

    :try_start_ff
    move-object v9, v6

    check-cast v9, Ljava/io/InputStream;

    .line 382
    move-object v9, v3

    check-cast v9, Ljava/io/Closeable;
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_14b

    :try_start_105
    move-object v10, v9

    check-cast v10, Ljava/io/OutputStream;

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 383
    invoke-static {v7, v3, v13, v10, v12}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_142

    .line 382
    :try_start_10e
    invoke-static {v9, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_14b

    .line 381
    invoke-static {v6, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 388
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_128

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    .line 390
    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    return-object v0

    .line 389
    :cond_128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :catchall_142
    move-exception v0

    move-object v1, v0

    .line 382
    :try_start_144
    throw v1
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_145

    :catchall_145
    move-exception v0

    move-object v2, v0

    :try_start_147
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_14b
    .catchall {:try_start_147 .. :try_end_14b} :catchall_14b

    :catchall_14b
    move-exception v0

    move-object v1, v0

    .line 381
    :try_start_14d
    throw v1
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14e

    :catchall_14e
    move-exception v0

    move-object v2, v0

    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 380
    :cond_154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot open input stream for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 377
    :cond_16c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_186
    const-string v0, "Cannot insert new asset."

    .line 375
    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 362
    :cond_191
    invoke-virtual {v8, v2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 360
    :cond_19a
    invoke-virtual {v8, v2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 334
    :cond_1a3
    invoke-virtual {v8, v10}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 331
    :cond_1ac
    invoke-virtual {v8, v10}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 329
    :cond_1b5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get gallery id of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getAllUri()Landroid/net/Uri;
    .registers 2

    .line 26
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAllUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I
    .registers 4

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I

    move-result p1

    return p1
.end method

.method public getAssetCount(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I
    .registers 5

    .line 26
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetCount(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAssetEntity(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "_id = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p2, "getContentResolver(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    .line 231
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->keys()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p0

    .line 229
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2d

    return-object v0

    .line 236
    :cond_2d
    check-cast p2, Ljava/io/Closeable;

    :try_start_2f
    move-object v1, p2

    check-cast v1, Landroid/database/Cursor;

    .line 237
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-virtual {v2, v1, p1, p3}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_44

    goto :goto_40

    :cond_3f
    move-object p1, v0

    :goto_40
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_44
    move-exception p1

    :try_start_45
    throw p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
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

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v9, p6

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pathId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "option"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_23

    const/4 v3, 0x1

    move v11, v3

    goto :goto_24

    :cond_23
    move v11, v10

    .line 145
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_33

    .line 148
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, v13

    .line 150
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v11, :cond_51

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id IS NOT NULL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    .line 154
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id = ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_60
    move-object v7, v1

    mul-int v1, p3, v2

    move-object v11, p0

    .line 156
    invoke-virtual {p0, v1, v2, v9}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "getContentResolver(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v5

    .line 159
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->keys()[Ljava/lang/String;

    move-result-object v6

    .line 161
    check-cast v13, Ljava/util/Collection;

    new-array v3, v10, [Ljava/lang/String;

    .line 529
    invoke-interface {v13, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 161
    move-object v8, v3

    check-cast v8, [Ljava/lang/String;

    move-object v3, p0

    .line 157
    invoke-virtual/range {v3 .. v9}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_8e

    .line 163
    check-cast v12, Ljava/util/List;

    return-object v12

    .line 164
    :cond_8e
    check-cast v3, Ljava/io/Closeable;

    :try_start_90
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    .line 165
    sget-object v5, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    new-instance v6, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$getAssetListPaged$1$1;

    invoke-direct {v6, p1, v12}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$getAssetListPaged$1$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v4, v1, v2, v6}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->cursorWithRange(Landroid/database/Cursor;IILkotlin/jvm/functions/Function1;)V

    .line 170
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_a8

    const/4 v0, 0x0

    .line 164
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 171
    check-cast v12, Ljava/util/List;

    return-object v12

    :catchall_a8
    move-exception v0

    move-object v1, v0

    .line 164
    :try_start_aa
    throw v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
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

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v9, p6

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "galleryId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "option"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_23

    const/4 v3, 0x1

    move v11, v3

    goto :goto_24

    :cond_23
    move v11, v10

    .line 184
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_33

    .line 187
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object v5, v13

    .line 189
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v11, :cond_51

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id IS NOT NULL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_60

    .line 193
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id = ? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_60
    move-object v7, v1

    sub-int v1, p4, v2

    move-object v11, p0

    .line 196
    invoke-virtual {p0, v2, v1, v9}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v3, "getContentResolver(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v5

    .line 199
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->keys()[Ljava/lang/String;

    move-result-object v6

    .line 201
    check-cast v13, Ljava/util/Collection;

    new-array v3, v10, [Ljava/lang/String;

    .line 531
    invoke-interface {v13, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 201
    move-object v8, v3

    check-cast v8, [Ljava/lang/String;

    move-object v3, p0

    .line 197
    invoke-virtual/range {v3 .. v9}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_8e

    .line 203
    check-cast v12, Ljava/util/List;

    return-object v12

    .line 204
    :cond_8e
    check-cast v3, Ljava/io/Closeable;

    :try_start_90
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    .line 205
    sget-object v5, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    new-instance v6, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$getAssetListRange$1$1;

    invoke-direct {v6, p1, v12}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$getAssetListRange$1$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v4, v2, v1, v6}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->cursorWithRange(Landroid/database/Cursor;IILkotlin/jvm/functions/Function1;)V

    .line 210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a1
    .catchall {:try_start_90 .. :try_end_a1} :catchall_a8

    const/4 v0, 0x0

    .line 204
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 211
    check-cast v12, Ljava/util/List;

    return-object v12

    :catchall_a8
    move-exception v0

    move-object v1, v0

    .line 204
    :try_start_aa
    throw v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    :catchall_ab
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAssetPathEntityFromId(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;
    .registers 23

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pathId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "option"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    .line 248
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 249
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move/from16 v4, p3

    move-object v5, v10

    .line 251
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_2e

    move-object v4, v1

    goto :goto_33

    .line 258
    :cond_2e
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "AND bucket_id = ?"

    .line 262
    :goto_33
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bucket_id IS NOT NULL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v2, "getContentResolver(...)"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v13

    .line 265
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v14

    .line 266
    check-cast v10, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 535
    invoke-interface {v10, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 266
    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v11, p0

    .line 263
    invoke-virtual/range {v11 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_78

    return-object v3

    .line 271
    :cond_78
    check-cast v2, Ljava/io/Closeable;

    :try_start_7a
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    .line 272
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    .line 273
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8c

    move-object v5, v1

    goto :goto_8f

    :cond_8c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    :goto_8f
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 278
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_95
    .catchall {:try_start_7a .. :try_end_95} :catchall_ae

    .line 271
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 279
    new-instance v10, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v11, 0x0

    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v5, p3

    move v6, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 276
    :cond_aa
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_ae
    move-exception v0

    move-object v1, v0

    .line 271
    :try_start_b0
    throw v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAssetPathList(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 23
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

    const-string v1, "bucket_id"

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "option"

    move-object/from16 v9, p3

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p2

    move-object v5, v10

    .line 43
    invoke-static/range {v3 .. v8}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bucket_id IS NOT NULL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v3, "getContentResolver(...)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v13

    .line 49
    sget-object v3, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v14

    .line 51
    check-cast v10, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 523
    invoke-interface {v10, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 51
    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/String;

    .line 52
    invoke-virtual/range {p3 .. p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, p0

    .line 47
    invoke-virtual/range {v11 .. v17}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_64

    .line 53
    check-cast v2, Ljava/util/List;

    return-object v2

    .line 54
    :cond_64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    check-cast v3, Ljava/io/Closeable;

    :try_start_70
    move-object v6, v3

    check-cast v6, Landroid/database/Cursor;

    .line 57
    invoke-static {v6, v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->logCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 58
    :goto_76
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 59
    sget-object v7, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-virtual {v7, v6, v1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_a2

    .line 61
    move-object v7, v5

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    :cond_a2
    const-string v10, "bucket_display_name"

    .line 64
    invoke-virtual {v7, v6, v10}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    move-object v10, v4

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-object v7, v5

    check-cast v7, Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 68
    :cond_b9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_bb
    .catchall {:try_start_70 .. :try_end_bb} :catchall_111

    const/4 v1, 0x0

    .line 56
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 69
    check-cast v4, Ljava/util/Map;

    .line 524
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 72
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 73
    new-instance v3, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    move-object v10, v3

    move/from16 v14, p2

    invoke-direct/range {v10 .. v18}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->getContainsPathModified()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 75
    sget-object v4, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-virtual {v4, v0, v3}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    .line 77
    :cond_10a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    .line 79
    :cond_10e
    check-cast v2, Ljava/util/List;

    return-object v2

    :catchall_111
    move-exception v0

    move-object v1, v0

    .line 56
    :try_start_113
    throw v1
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_114

    :catchall_114
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

    .line 26
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

    .line 26
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

    .line 26
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

    const/4 v0, 0x0

    .line 284
    :try_start_b
    move-object v1, p0

    check-cast v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p2

    if-nez p2, :cond_1a

    return-object v0

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 285
    invoke-static {p0, p2, v1, v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getUri$default(Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;ZILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p2

    .line 286
    invoke-static {p2}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "setRequireOriginal(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_34

    return-object v0

    .line 288
    :cond_34
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_3a

    move-object v0, p2

    :catch_3a
    return-object v0
.end method

.method public getFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    move-object v1, p0

    check-cast v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getAssetEntity$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_1a

    return-object v0

    .line 297
    :cond_1a
    sget-boolean v1, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->shouldUseScopedCache:Z

    if-eqz v1, :cond_2b

    .line 298
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->scopedCache:Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;->getCacheFileFromEntity(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 299
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 301
    :cond_2b
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public getIdSelection()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getIdSelection(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getInt(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getLong(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMainAssetPathEntity(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;
    .registers 21
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

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move/from16 v3, p2

    move-object v4, v9

    .line 89
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->makeWhere$default(Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/util/ArrayList;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bucket_id IS NOT NULL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v1, "getContentResolver(...)"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v12

    .line 95
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getStoreBucketKeys()[Ljava/lang/String;

    move-result-object v13

    .line 97
    check-cast v9, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 527
    invoke-interface {v9, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 97
    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 98
    invoke-virtual/range {p3 .. p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v10, p0

    .line 93
    invoke-virtual/range {v10 .. v16}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_61

    .line 99
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 100
    :cond_61
    check-cast v1, Ljava/io/Closeable;

    :try_start_63
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 101
    new-instance v12, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    const-string v4, "isAll"

    const-string v5, "Recent"

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    move/from16 v7, p2

    .line 101
    invoke-direct/range {v3 .. v11}, Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_63 .. :try_end_7e} :catchall_85

    const/4 v2, 0x0

    .line 100
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_85
    move-exception v0

    move-object v2, v0

    .line 100
    :try_start_87
    throw v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getMediaType(I)I
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public getMediaUri(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 5

    .line 26
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getMediaUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginBytes(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B
    .registers 9

    const-string v0, "The asset "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getUri(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Landroid/net/Uri;

    move-result-object p3

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 316
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 317
    check-cast p3, Ljava/io/Closeable;

    :try_start_1f
    move-object v1, p3

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    if-eqz p1, :cond_3e

    .line 318
    check-cast p1, Ljava/io/Closeable;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_73

    :try_start_27
    move-object v3, p1

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_37

    :try_start_33
    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_73

    goto :goto_3e

    :catchall_37
    move-exception p2

    :try_start_38
    throw p2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 319
    :cond_3e
    :goto_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 320
    sget-object v1, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->isLog()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 321
    invoke-virtual {p2}, Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;->getId()J

    move-result-wide v3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p2, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin byte length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fluttercandies/photo_manager/util/LogUtils;->info(Ljava/lang/Object;)V

    .line 323
    :cond_6c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_3a .. :try_end_6f} :catchall_73

    invoke-static {p3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_73
    move-exception p1

    :try_start_74
    throw p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p2

    invoke-static {p3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getPathModifiedDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 26
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

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 499
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v3

    const-string p1, "bucket_id"

    const-string v0, "relative_path"

    .line 501
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id = ?"

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    const/4 v7, 0x0

    move-object v1, p0

    .line 499
    invoke-virtual/range {v1 .. v7}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_2f

    return-object v1

    .line 506
    :cond_2f
    move-object v2, p2

    check-cast v2, Ljava/io/Closeable;

    :try_start_32
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 507
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_59

    if-nez v3, :cond_3f

    .line 508
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 510
    :cond_3f
    :try_start_3f
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 512
    new-instance p2, Lkotlin/Pair;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_59

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_59
    move-exception p1

    :try_start_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p2

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSortOrder(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;
    .registers 5

    const-string v0, "filterOption"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->isQStorageLegacy:Z

    if-eqz v0, :cond_e

    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getSortOrder(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 117
    :cond_e
    invoke-virtual {p3}, Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;->orderByCondString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getString(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getStringOrNull(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeFromMediaType(I)I
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getTypeFromMediaType(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;I)I

    move-result p1

    return p1
.end method

.method public getUri(JIZ)Landroid/net/Uri;
    .registers 5

    .line 26
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getUri(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZ)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public injectModifiedDate(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->injectModifiedDate(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V

    return-void
.end method

.method public keys()[Ljava/lang/String;
    .registers 3

    .line 217
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

    const-string v1, "relative_path"

    .line 218
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 219
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 533
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .line 26
    invoke-static/range {p0 .. p6}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logQuery(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public logRowWithId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->logRowWithId(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public moveToGallery(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "galleryId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getSomeInfo(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    invoke-direct {p0, p1, p3}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 403
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "relative_path"

    .line 404
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getIdSelection()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_54

    .line 408
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

    .line 410
    :cond_54
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

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_72
    const-string p1, "No move required, because the target gallery is the same as the current one."

    .line 398
    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 395
    :cond_7d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Cannot get gallery id of "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->throwMsg(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public removeAllExistsAssets(Landroid/content/Context;)Z
    .registers 28

    const-string v0, "_data"

    const-string v1, "media_type"

    const-string v2, "_id"

    const-string v3, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget-object v3, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->deleteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    const-string v6, "PhotoManagerPlugin"

    const/4 v7, 0x0

    if-eqz v5, :cond_1e

    const-string v0, "The removeAllExistsAssets is running."

    .line 417
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 420
    :cond_1e
    check-cast v3, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_23
    const-string v5, "The removeAllExistsAssets is starting."

    .line 421
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 424
    sget-object v8, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v8}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v10

    .line 429
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "media_type in ( ?,?,? )"

    const/4 v9, 0x3

    new-array v13, v9, [Ljava/lang/Integer;

    const/4 v14, 0x2

    .line 433
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v7

    .line 434
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v13, v16

    .line 435
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 539
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    move v15, v7

    :goto_60
    if-ge v15, v9, :cond_75

    .line 540
    aget-object v17, v13, v15

    .line 541
    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v17

    .line 436
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 541
    invoke-interface {v14, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x3

    goto :goto_60

    .line 542
    :cond_75
    check-cast v14, Ljava/util/List;

    .line 436
    check-cast v14, Ljava/util/Collection;

    new-array v9, v7, [Ljava/lang/String;

    .line 544
    invoke-interface {v14, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 437
    move-object v13, v9

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object v9, v4

    .line 424
    invoke-virtual/range {v8 .. v14}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->logQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_88
    .catchall {:try_start_23 .. :try_end_88} :catchall_19d

    if-nez v8, :cond_8e

    .line 439
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v7

    .line 440
    :cond_8e
    :try_start_8e
    check-cast v8, Ljava/io/Closeable;
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_19d

    :try_start_90
    move-object v9, v8

    check-cast v9, Landroid/database/Cursor;

    move v10, v7

    .line 442
    :cond_94
    :goto_94
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_113

    .line 443
    sget-object v11, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-virtual {v11, v9, v2}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 444
    invoke-virtual {v11, v9, v1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 445
    invoke-virtual {v11, v9, v0}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 446
    invoke-virtual {v11, v13}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getTypeFromMediaType(I)I

    move-result v20

    .line 447
    move-object/from16 v17, v11

    check-cast v17, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->getUri$default(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;JIZILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v11
    :try_end_be
    .catchall {:try_start_90 .. :try_end_be} :catchall_194

    .line 449
    :try_start_be
    invoke-virtual {v4, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_c7

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_ca
    .catchall {:try_start_be .. :try_end_c7} :catchall_194

    :cond_c7
    move/from16 v11, v16

    goto :goto_cb

    :catch_ca
    move v11, v7

    :goto_cb
    if-nez v11, :cond_f6

    .line 455
    :try_start_cd
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " media was not exists. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    add-int/lit8 v10, v10, 0x1

    .line 459
    rem-int/lit16 v11, v10, 0x12c

    if-nez v11, :cond_94

    .line 460
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current checked count == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 465
    :cond_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The removeAllExistsAssets was stopped, will be delete ids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_cd .. :try_end_129} :catchall_194

    const/4 v0, 0x0

    .line 440
    :try_start_12a
    invoke-static {v8, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 468
    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/Iterable;

    const-string v0, ","

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$removeAllExistsAssets$1$idWhere$1;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils$removeAllExistsAssets$1$idWhere$1;

    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/functions/Function1;

    const/16 v24, 0x1e

    const/16 v25, 0x0

    invoke-static/range {v17 .. v25}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    sget-object v1, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;->getAllUri()Landroid/net/Uri;

    move-result-object v1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id in ( "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    check-cast v5, Ljava/util/Collection;

    new-array v2, v7, [Ljava/lang/String;

    .line 546
    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 470
    invoke-virtual {v4, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete rows: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_12a .. :try_end_190} :catchall_19d

    .line 420
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v16

    :catchall_194
    move-exception v0

    move-object v1, v0

    .line 440
    :try_start_196
    throw v1
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_197

    :catchall_197
    move-exception v0

    move-object v2, v0

    :try_start_199
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_19d
    .catchall {:try_start_199 .. :try_end_19d} :catchall_19d

    :catchall_19d
    move-exception v0

    .line 420
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public saveImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 26
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public saveImage(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 26
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveImage(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public saveVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 6

    .line 26
    invoke-static/range {p0 .. p5}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->saveVideo(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method

.method public throwMsg(Ljava/lang/String;)Ljava/lang/Void;
    .registers 2

    .line 26
    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->throwMsg(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public toAssetEntity(Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;
    .registers 4

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls;->toAssetEntity(Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;Landroid/database/Cursor;Landroid/content/Context;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object p1

    return-object p1
.end method
