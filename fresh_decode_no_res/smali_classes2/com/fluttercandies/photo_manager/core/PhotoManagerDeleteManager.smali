.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
.super Ljava/lang/Object;
.source "PhotoManagerDeleteManager.kt"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotoManagerDeleteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n37#2,2:204\n1603#3,9:206\n1855#3:215\n1856#3:217\n1612#3:218\n1603#3,9:219\n1855#3:228\n1856#3:230\n1612#3:231\n1#4:216\n1#4:229\n*S KotlinDebug\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n*L\n96#1:204,2\n111#1:206,9\n111#1:215\n111#1:217\n111#1:218\n192#1:219,9\n192#1:228\n192#1:230\n192#1:231\n111#1:216\n192#1:229\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u00014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u001f\u001a\u00020\u001e2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\r0!J \u0010\"\u001a\u00020\u001e2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100!2\u0006\u0010$\u001a\u00020\nH\u0007J8\u0010%\u001a\u00020\u001e2&\u0010#\u001a\"\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00100&j\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0010`\'2\u0006\u0010$\u001a\u00020\nH\u0007J\u0012\u0010(\u001a\u0004\u0018\u00010\r2\u0006\u0010)\u001a\u00020\u0010H\u0002J\u0010\u0010*\u001a\u00020\u001e2\u0006\u0010+\u001a\u00020\u0008H\u0002J \u0010,\u001a\u00020\u001e2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100!2\u0006\u0010$\u001a\u00020\nH\u0007J\"\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00082\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u00020\u001eH\u0002J\u0008\u00103\u001a\u00020\u001eH\u0003R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0008\u0018\u00010\u001aR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001b\u001a\u000c\u0012\u0008\u0012\u00060\u001aR\u00020\u00000\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "context",
        "Landroid/content/Context;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/content/Context;Landroid/app/Activity;)V",
        "androidQDeleteRequestCode",
        "",
        "androidQHandler",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "androidQSuccessIds",
        "",
        "",
        "androidQUriMap",
        "",
        "Landroid/net/Uri;",
        "androidRDeleteRequestCode",
        "androidRHandler",
        "getContext",
        "()Landroid/content/Context;",
        "cr",
        "Landroid/content/ContentResolver;",
        "getCr",
        "()Landroid/content/ContentResolver;",
        "currentTask",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
        "waitPermissionQueue",
        "Ljava/util/LinkedList;",
        "bindActivity",
        "",
        "deleteInApi28",
        "ids",
        "",
        "deleteInApi30",
        "uris",
        "resultHandler",
        "deleteJustInApi29",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "findIdByUriInApi29",
        "uri",
        "handleAndroidRDelete",
        "resultCode",
        "moveToTrashInApi30",
        "onActivityResult",
        "",
        "requestCode",
        "intent",
        "Landroid/content/Intent;",
        "replyAndroidQDeleteResult",
        "requestAndroidQNextPermission",
        "AndroidQDeleteTask",
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


# instance fields
.field private activity:Landroid/app/Activity;

.field private androidQDeleteRequestCode:I

.field private androidQHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

.field private final androidQSuccessIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final androidQUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private androidRDeleteRequestCode:I

.field private androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

.field private final context:Landroid/content/Context;

.field private currentTask:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

.field private waitPermissionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->activity:Landroid/app/Activity;

    const p1, 0x9c86

    .line 25
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQDeleteRequestCode:I

    .line 26
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQUriMap:Ljava/util/Map;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->waitPermissionQueue:Ljava/util/LinkedList;

    const p1, 0x9c85

    .line 61
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRDeleteRequestCode:I

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getAndroidQDeleteRequestCode$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQDeleteRequestCode:I

    return p0
.end method

.method public static final synthetic access$getAndroidQSuccessIds$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$requestAndroidQNextPermission(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->requestAndroidQNextPermission()V

    return-void
.end method

.method private final findIdByUriInApi29(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQUriMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getCr()Landroid/content/ContentResolver;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContentResolver(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final handleAndroidRDelete(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 82
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->getCall()Lio/flutter/plugin/common/MethodCall;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "ids"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    if-eqz p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final replyAndroidQDeleteResult()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQUriMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-nez v2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->getCr()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply(Ljava/lang/Object;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    iput-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    return-void
.end method

.method private final requestAndroidQNextPermission()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->waitPermissionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->replyAndroidQDeleteResult()V

    return-void

    .line 141
    :cond_0
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->currentTask:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    .line 142
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->requestPermission()V

    return-void
.end method


# virtual methods
.method public final bindActivity(Landroid/app/Activity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final deleteInApi28(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$deleteInApi28$where$1;->INSTANCE:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$deleteInApi28$where$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->getCr()Landroid/content/ContentResolver;

    move-result-object v1

    .line 94
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getAllUri()Landroid/net/Uri;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    check-cast p1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 205
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public final deleteInApi30(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 111
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->getCr()Landroid/content/ContentResolver;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 215
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 206
    check-cast v0, Ljava/util/Collection;

    .line 111
    invoke-static {p2, v0}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "createDeleteRequest(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 114
    iget v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRDeleteRequestCode:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :cond_2
    return-void
.end method

.method public final deleteJustInApi29(Ljava/util/HashMap;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 149
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQUriMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 150
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQUriMap:Ljava/util/Map;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 151
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQSuccessIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 152
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->waitPermissionQueue:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->getCr()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 161
    instance-of v2, v1, Landroid/app/RecoverableSecurityException;

    if-eqz v2, :cond_1

    .line 162
    new-instance v2, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    check-cast v1, Landroid/app/RecoverableSecurityException;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V

    .line 163
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->waitPermissionQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "delete assets error in api 29"

    .line 165
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p1, v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 166
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->replyAndroidQDeleteResult()V

    return-void

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->requestAndroidQNextPermission()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final moveToTrashInApi30(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 192
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->getCr()Landroid/content/ContentResolver;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 228
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 227
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 219
    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x1

    .line 192
    invoke-static {p2, v0, p1}, Landroid/provider/MediaStore;->createTrashRequest(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "createTrashRequest(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 195
    iget v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRDeleteRequestCode:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 193
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 67
    iget p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidRDeleteRequestCode:I

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->handleAndroidRDelete(I)V

    return v0

    .line 71
    :cond_0
    iget p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->androidQDeleteRequestCode:I

    if-ne p1, p3, :cond_2

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_1

    .line 73
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->currentTask:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->handleResult(I)V

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
