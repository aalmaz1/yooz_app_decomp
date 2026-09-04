.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;
.super Ljava/lang/Object;
.source "PhotoManagerPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotoManagerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoManagerPlugin.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,616:1\n1549#2:617\n1620#2,3:618\n1549#2:621\n1620#2,3:622\n*S KotlinDebug\n*F\n+ 1 PhotoManagerPlugin.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerPlugin\n*L\n539#1:617\n539#1:618,3\n562#1:621\n562#1:622,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 +2\u00020\u0001:\u0001+B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0014\u0010$\u001a\u00020%*\u00020 2\u0006\u0010&\u001a\u00020\'H\u0002J\u000c\u0010(\u001a\u00020)*\u00020 H\u0002J\u0014\u0010*\u001a\u00020\'*\u00020 2\u0006\u0010&\u001a\u00020\'H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "applicationContext",
        "Landroid/content/Context;",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "activity",
        "Landroid/app/Activity;",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V",
        "deleteManager",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;",
        "getDeleteManager",
        "()Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;",
        "ignorePermissionCheck",
        "",
        "notifyChannel",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;",
        "photoManager",
        "Lcom/fluttercandies/photo_manager/core/PhotoManager;",
        "bindActivity",
        "",
        "handleMethodResult",
        "resultHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "needLocationPermission",
        "handleNotNeedPermissionMethod",
        "handleOtherMethods",
        "handlePermissionMethod",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "replyPermissionError",
        "getInt",
        "",
        "key",
        "",
        "getOption",
        "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;",
        "getString",
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
.field public static final Companion:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;

.field private static final poolSize:I = 0x8

.field private static final threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private activity:Landroid/app/Activity;

.field private final applicationContext:Landroid/content/Context;

.field private final deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

.field private ignorePermissionCheck:Z

.field private final notifyChannel:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

.field private final permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

.field private final photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;

    .line 35
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0x8

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1

    .line 39
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 40
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/BlockingQueue;

    move-object v2, v0

    .line 35
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsUtils"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->applicationContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->activity:Landroid/app/Activity;

    .line 31
    iput-object p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    .line 49
    new-instance p3, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$1;

    invoke-direct {p3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$1;-><init>()V

    check-cast p3, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    invoke-virtual {p4, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->setPermissionsListener(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)V

    .line 60
    new-instance p3, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    iget-object p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->activity:Landroid/app/Activity;

    invoke-direct {p3, p1, p4}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 67
    new-instance p3, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    .line 70
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    invoke-direct {p3, p1, p2, p4}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->notifyChannel:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    .line 73
    new-instance p2, Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-direct {p2, p1}, Lcom/fluttercandies/photo_manager/core/PhotoManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPermissionsUtils$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    return-object p0
.end method

.method public static final synthetic access$getPhotoManager$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/core/PhotoManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    return-object p0
.end method

.method public static final synthetic access$getThreadPool$cp()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 27
    sget-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static final synthetic access$handleMethodResult(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handleMethodResult(Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V

    return-void
.end method

.method private final getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I
    .locals 0

    .line 609
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method private final getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;
    .locals 1

    const-string v0, "option"

    .line 613
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Map;

    .line 614
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertToFilterOptions(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object p1

    return-object p1
.end method

.method private final getString(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 605
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final handleMethodResult(Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->getCall()Lio/flutter/plugin/common/MethodCall;

    move-result-object v2

    .line 339
    iget-object v4, v2, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v8, "deleteWithIds failed"

    const-string v9, "save image error"

    const-string v10, "assetId"

    const-string v11, "option"

    const-string v12, "end"

    const-string v13, "start"

    const-string v14, "path"

    const-string v15, "relativePath"

    const-string v6, "desc"

    const-string v7, "title"

    move-object/from16 v18, v9

    const-string v9, "ids"

    move-object/from16 v19, v15

    const-string v15, "type"

    move-object/from16 v20, v6

    const-string v6, ""

    move-object/from16 v21, v6

    const-string v6, "id"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v0, "getThumb"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 381
    :cond_0
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-virtual {v2, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Map;

    .line 383
    sget-object v4, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Factory:Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;

    invoke-virtual {v4, v2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;->fromMap(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    move-result-object v2

    .line 384
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getThumb(Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_1
    const-string v0, "getAssetCount"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_9

    .line 587
    :cond_1
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v0

    .line 588
    invoke-direct {v1, v2, v15}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v2

    .line 589
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v3, v0, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetCount(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)V

    goto/16 :goto_a

    :sswitch_2
    const-string v0, "copyAsset"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 524
    :cond_2
    invoke-virtual {v2, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    const-string v4, "galleryId"

    .line 525
    invoke-virtual {v2, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    .line 526
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->copyToGallery(Ljava/lang/String;Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_3
    const-string v0, "getAssetPathList"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_9

    .line 341
    :cond_3
    invoke-virtual {v2, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v4, "hasAll"

    .line 342
    invoke-virtual {v2, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 343
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v5

    const-string v6, "onlyAll"

    .line 344
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 346
    iget-object v6, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v6, v0, v4, v2, v5}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetPathList(IZZLcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object v0

    .line 347
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertPaths(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_4
    const-string v0, "getMediaUrl"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_9

    .line 417
    :cond_4
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 419
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getMediaUri(JI)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_5
    const-string v0, "deleteWithIds"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_9

    .line 537
    :cond_5
    :try_start_0
    invoke-virtual {v2, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    .line 538
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_7

    .line 539
    check-cast v0, Ljava/lang/Iterable;

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 619
    check-cast v4, Ljava/lang/String;

    .line 539
    iget-object v5, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v5, v4}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 619
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 620
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 617
    check-cast v2, Ljava/lang/Iterable;

    .line 539
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 540
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-virtual {v2, v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->deleteInApi30(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    .line 541
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v2, v4, :cond_9

    .line 542
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 543
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 544
    iget-object v5, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v5, v4}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 545
    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 547
    :cond_8
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-virtual {v0, v2, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->deleteJustInApi29(Ljava/util/HashMap;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    .line 549
    :cond_9
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->deleteInApi28(Ljava/util/List;)V

    .line 550
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 553
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "deleteWithIds failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    .line 554
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError$default(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_6
    const-string v5, "getOriginBytes"

    .line 339
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_9

    .line 412
    :cond_a
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    .line 413
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v2, v3, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getOriginBytes(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V

    goto/16 :goto_a

    :sswitch_7
    const-string v0, "cancelCacheRequests"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_9

    .line 395
    :cond_b
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->cancelCacheRequests()V

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_8
    const-string v0, "assetExists"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9

    .line 400
    :cond_c
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 401
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->assetExists(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_9
    const-string v0, "getAssetsByRange"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_9

    .line 593
    :cond_d
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v4

    .line 594
    invoke-direct {v1, v2, v13}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v5

    .line 595
    invoke-direct {v1, v2, v12}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v6

    .line 596
    invoke-direct {v1, v2, v15}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v7

    .line 597
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetsByRange(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)V

    goto/16 :goto_a

    :sswitch_a
    const-string v0, "fetchEntityProperties"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_9

    .line 424
    :cond_e
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 425
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->fetchEntityProperties(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 427
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    :cond_f
    const/4 v6, 0x0

    .line 431
    :goto_2
    invoke-virtual {v3, v6}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_b
    const-string v0, "saveVideo"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_9

    .line 505
    :cond_10
    :try_start_1
    invoke-virtual {v2, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 506
    invoke-virtual {v2, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v20

    .line 507
    invoke-virtual {v2, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_11

    move-object/from16 v5, v21

    :cond_11
    move-object/from16 v6, v19

    .line 508
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_12

    move-object/from16 v6, v21

    goto :goto_3

    :cond_12
    move-object v6, v2

    .line 510
    :goto_3
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v2, 0x0

    .line 512
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    .line 515
    :cond_13
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object v0

    .line 516
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    const-string v2, "save video error"

    .line 518
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v2, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 519
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_c
    move-object/from16 v6, v19

    move-object/from16 v5, v20

    const-string v0, "saveImage"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_9

    :cond_14
    :try_start_2
    const-string v0, "image"

    .line 466
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, [B

    .line 467
    invoke-virtual {v2, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_15

    move-object/from16 v4, v21

    .line 468
    :cond_15
    invoke-virtual {v2, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_16

    move-object/from16 v5, v21

    .line 469
    :cond_16
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_17

    move-object/from16 v6, v21

    goto :goto_4

    :cond_17
    move-object v6, v2

    .line 470
    :goto_4
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->saveImage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v2, 0x0

    .line 472
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    .line 475
    :cond_18
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object v0

    .line 476
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :catch_2
    move-exception v0

    .line 478
    check-cast v0, Ljava/lang/Throwable;

    move-object/from16 v8, v18

    invoke-static {v8, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_d
    const-string v0, "fetchPathProperties"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_9

    .line 435
    :cond_19
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 436
    invoke-virtual {v2, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 437
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v2

    .line 438
    iget-object v5, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v5, v0, v4, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->fetchPathProperties(Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 440
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertPaths(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 441
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1a
    const/4 v2, 0x0

    .line 443
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_e
    const-string v0, "moveAssetToPath"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_9

    .line 530
    :cond_1b
    invoke-virtual {v2, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    const-string v4, "albumId"

    .line 531
    invoke-virtual {v2, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    .line 532
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->moveToGallery(Ljava/lang/String;Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_f
    const-string v5, "getFullFile"

    .line 339
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_9

    .line 405
    :cond_1c
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/String;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_5

    :cond_1d
    const-string v0, "isOrigin"

    .line 407
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 408
    :goto_5
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v4, v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getFile(Ljava/lang/String;ZLcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_10
    const-string v0, "requestCacheAssetsThumb"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_9

    .line 388
    :cond_1e
    invoke-virtual {v2, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    .line 389
    invoke-virtual {v2, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Map;

    .line 390
    sget-object v4, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;->Factory:Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;

    invoke-virtual {v4, v2}, Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption$Factory;->fromMap(Ljava/util/Map;)Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;

    move-result-object v2

    .line 391
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->requestCache(Ljava/util/List;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_11
    const-string v0, "moveToTrash"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_9

    .line 560
    :cond_1f
    :try_start_3
    invoke-virtual {v2, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    .line 561
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_21

    .line 562
    check-cast v0, Ljava/lang/Iterable;

    .line 621
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 622
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 623
    check-cast v4, Ljava/lang/String;

    .line 562
    iget-object v5, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v5, v4}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 623
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 624
    :cond_20
    check-cast v2, Ljava/util/List;

    .line 621
    check-cast v2, Ljava/lang/Iterable;

    .line 562
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 563
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-virtual {v2, v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->moveToTrashInApi30(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :cond_21
    const-string v0, "The API 29 or lower have not the IS_TRASHED row in MediaStore."

    .line 565
    invoke-static {v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;)V

    const-string v0, "The api not support 29 or lower."

    .line 569
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "The api cannot be used in 29 or lower."

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v21

    .line 566
    invoke-virtual {v3, v0, v9, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_a

    :catch_3
    move-exception v0

    .line 573
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "deleteWithIds failed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    .line 574
    invoke-static/range {v2 .. v7}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError$default(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_12
    const-string v0, "notify"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_9

    .line 455
    :cond_22
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 456
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 457
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->notifyChannel:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->startNotify()V

    goto :goto_7

    .line 459
    :cond_23
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->notifyChannel:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;

    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->stopNotify()V

    :goto_7
    const/4 v2, 0x0

    .line 461
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_13
    const-string v0, "getAssetListRange"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_9

    .line 370
    :cond_24
    invoke-direct {v1, v2, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getString(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 371
    invoke-direct {v1, v2, v15}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v18

    .line 372
    invoke-direct {v1, v2, v13}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v19

    .line 373
    invoke-direct {v1, v2, v12}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v20

    .line 374
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v21

    .line 376
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetListRange(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object v0

    .line 377
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAssets(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_14
    const-string v0, "getAssetListPaged"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_9

    .line 351
    :cond_25
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 352
    invoke-virtual {v2, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v0, "page"

    .line 353
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    const-string v0, "size"

    .line 354
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 355
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v9

    .line 357
    iget-object v4, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual/range {v4 .. v9}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetListPaged(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;

    move-result-object v0

    .line 358
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAssets(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_15
    const-string v0, "getLatLngAndroidQ"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_9

    .line 448
    :cond_26
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 450
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getLocation(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 451
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_a

    :sswitch_16
    const-string v0, "getColumnNames"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_9

    .line 583
    :cond_27
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getColumnNames(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto/16 :goto_a

    :sswitch_17
    const-string v0, "getAssetCountFromPath"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_9

    .line 362
    :cond_28
    invoke-direct {v1, v2, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getString(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-direct {v1, v2, v15}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getInt(Lio/flutter/plugin/common/MethodCall;Ljava/lang/String;)I

    move-result v4

    .line 364
    invoke-direct {v1, v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getOption(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;

    move-result-object v2

    .line 366
    iget-object v5, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v5, v3, v2, v4, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->getAssetCount(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)V

    goto/16 :goto_a

    :sswitch_18
    const-string v0, "removeNoExistsAssets"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_9

    .line 579
    :cond_29
    iget-object v0, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->removeAllExistsAssets(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    goto :goto_a

    :sswitch_19
    move-object/from16 v8, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v21

    const-string v0, "saveImageWithPath"

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_9

    .line 485
    :cond_2a
    :try_start_4
    invoke-virtual {v2, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-virtual {v2, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2b

    move-object v4, v9

    .line 487
    :cond_2b
    invoke-virtual {v2, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2c

    move-object v5, v9

    .line 488
    :cond_2c
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2d

    move-object v6, v9

    goto :goto_8

    :cond_2d
    move-object v6, v2

    .line 490
    :goto_8
    iget-object v2, v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->saveImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;

    move-result-object v0

    if-nez v0, :cond_2e

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    return-void

    .line 495
    :cond_2e
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;

    invoke-virtual {v2, v0}, Lcom/fluttercandies/photo_manager/core/utils/ConvertUtils;->convertAsset(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;)Ljava/util/Map;

    move-result-object v0

    .line 496
    invoke-virtual {v3, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 498
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    .line 499
    invoke-virtual {v3, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_a

    .line 600
    :cond_2f
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->notImplemented()V

    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ace45f7 -> :sswitch_19
        -0x6ae40afc -> :sswitch_18
        -0x6566d1fc -> :sswitch_17
        -0x58e2ffa4 -> :sswitch_16
        -0x4c7d6c22 -> :sswitch_15
        -0x4593ae63 -> :sswitch_14
        -0x457764db -> :sswitch_13
        -0x3df868b7 -> :sswitch_12
        -0x3d9b9794 -> :sswitch_11
        -0x38872c20 -> :sswitch_10
        -0x34d615df -> :sswitch_f
        -0x255e5c41 -> :sswitch_e
        -0x90ed76e -> :sswitch_d
        0x9c05dde -> :sswitch_c
        0xa75c8fe -> :sswitch_b
        0x1378a450 -> :sswitch_a
        0x2538d26d -> :sswitch_9
        0x3317d76c -> :sswitch_8
        0x39fda90c -> :sswitch_7
        0x3f5cefaf -> :sswitch_6
        0x4490dbe7 -> :sswitch_5
        0x46296061 -> :sswitch_4
        0x51f509bd -> :sswitch_3
        0x5817ac7b -> :sswitch_2
        0x6ba583f5 -> :sswitch_1
        0x75315820 -> :sswitch_0
    .end sparse-switch
.end method

.method private final handleNotNeedPermissionMethod(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 4

    .line 284
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->getCall()Lio/flutter/plugin/common/MethodCall;

    move-result-object v0

    .line 285
    iget-object v1, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "releaseMemoryCache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 315
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "openSetting"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->getAppDetailSettingIntent(Landroid/content/Context;)V

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "clearFileCache"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 307
    sget-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;

    new-instance v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleNotNeedPermissionMethod$1;

    invoke-direct {v1, p0, p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleNotNeedPermissionMethod$1;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;->runOnBackground(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "ignorePermissionCheck"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "ignore"

    .line 319
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 320
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->ignorePermissionCheck:Z

    .line 321
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_4
    const-string v2, "log"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 287
    :cond_4
    sget-object v1, Lcom/fluttercandies/photo_manager/util/LogUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/util/LogUtils;

    invoke-virtual {v0}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fluttercandies/photo_manager/util/LogUtils;->setLog(Z)V

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_5
    const-string v0, "forceOldApi"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->photoManager:Lcom/fluttercandies/photo_manager/core/PhotoManager;

    invoke-virtual {v0, v3}, Lcom/fluttercandies/photo_manager/core/PhotoManager;->setUseOldApi(Z)V

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_6
    const-string v0, "systemVersion"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    .line 302
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x721bc057 -> :sswitch_6
        -0x22b656c2 -> :sswitch_5
        0x1a344 -> :sswitch_4
        0x43de9447 -> :sswitch_3
        0x5be80799 -> :sswitch_2
        0x6aa3b8a6 -> :sswitch_1
        0x7279007a -> :sswitch_0
    .end sparse-switch
.end method

.method private final handleOtherMethods(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 2

    .line 265
    sget-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;

    new-instance v1, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;

    invoke-direct {v1, p0, p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$Companion;->runOnBackground(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final handlePermissionMethod(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->getCall()Lio/flutter/plugin/common/MethodCall;

    move-result-object v0

    .line 216
    iget-object v1, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v2, "requestPermissionExtend"

    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "type"

    if-eqz v2, :cond_0

    const-string v1, "androidPermission"

    .line 223
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    .line 224
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "mediaLocation"

    .line 225
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 227
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->withActivity(Landroid/app/Activity;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    move-result-object v2

    .line 228
    new-instance v3, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;

    invoke-direct {v3, p1, p0, v1, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handlePermissionMethod$1;-><init>(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;IZ)V

    check-cast v3, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    invoke-virtual {v2, v3}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->setListener(Lcom/fluttercandies/photo_manager/permission/PermissionsListener;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    move-result-object p1

    .line 250
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->applicationContext:Landroid/content/Context;

    .line 249
    invoke-virtual {p1, v2, v1, v0}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->requestPermission(Landroid/content/Context;IZ)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    goto :goto_0

    :cond_0
    const-string v2, "presentLimited"

    .line 256
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    invoke-virtual {v1, v0, p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->presentLimited(ILcom/fluttercandies/photo_manager/util/ResultHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final replyPermissionError(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3

    const-string v0, "User denied permission."

    const/4 v1, 0x0

    const-string v2, "Request for permission failed."

    .line 327
    invoke-virtual {p1, v2, v0, v1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bindActivity(Landroid/app/Activity;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->activity:Landroid/app/Activity;

    .line 64
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->bindActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public final getDeleteManager()Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->deleteManager:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    return-object v0
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/fluttercandies/photo_manager/util/ResultHandler;

    invoke-direct {v0, p2, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V

    .line 79
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 81
    sget-object p2, Lcom/fluttercandies/photo_manager/constant/Methods;->Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;->isNotNeedPermissionMethod(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handleNotNeedPermissionMethod(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    return-void

    .line 89
    :cond_0
    sget-object p2, Lcom/fluttercandies/photo_manager/constant/Methods;->Companion:Lcom/fluttercandies/photo_manager/constant/Methods$Companion;

    invoke-virtual {p2, p1}, Lcom/fluttercandies/photo_manager/constant/Methods$Companion;->isPermissionMethod(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handlePermissionMethod(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    return-void

    .line 95
    :cond_1
    iget-boolean p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->ignorePermissionCheck:Z

    if-eqz p1, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handleOtherMethods(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    return-void

    .line 100
    :cond_2
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handleOtherMethods(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V

    return-void
.end method
