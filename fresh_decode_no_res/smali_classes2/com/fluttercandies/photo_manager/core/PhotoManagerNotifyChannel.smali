.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;
.super Ljava/lang/Object;
.source "PhotoManagerNotifyChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001,B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J9\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010#\u001a\u00020$\u00a2\u0006\u0002\u0010%J\u001c\u0010&\u001a\u00020\u001c2\n\u0010\'\u001a\u00060\u000eR\u00020\u00002\u0006\u0010\u001d\u001a\u00020\nH\u0002J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u0018J\u0006\u0010*\u001a\u00020\u001cJ\u0006\u0010+\u001a\u00020\u001cR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0012\u0010\r\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0010*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000cR\u0012\u0010\u0013\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \u0010*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00060\u000eR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n \u0010*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "handler",
        "Landroid/os/Handler;",
        "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/os/Handler;)V",
        "allUri",
        "Landroid/net/Uri;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "audioObserver",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;",
        "audioUri",
        "kotlin.jvm.PlatformType",
        "context",
        "getContext",
        "imageObserver",
        "imageUri",
        "methodChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "notifying",
        "",
        "videoObserver",
        "videoUri",
        "onOuterChange",
        "",
        "uri",
        "changeType",
        "",
        "id",
        "",
        "galleryId",
        "observerType",
        "",
        "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V",
        "registerObserver",
        "mediaObserver",
        "setAndroidQExperimental",
        "open",
        "startNotify",
        "stopNotify",
        "MediaObserver",
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
.field private final allUri:Landroid/net/Uri;

.field private final applicationContext:Landroid/content/Context;

.field private final audioObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

.field private final audioUri:Landroid/net/Uri;

.field private final imageObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

.field private final imageUri:Landroid/net/Uri;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private notifying:Z

.field private final videoObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

.field private final videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->applicationContext:Landroid/content/Context;

    .line 26
    new-instance p1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0, p3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->videoObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    .line 27
    new-instance p1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, p3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->imageObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    .line 28
    new-instance p1, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0, p3}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->audioObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    .line 29
    sget-object p1, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->getAllUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->allUri:Landroid/net/Uri;

    .line 30
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->imageUri:Landroid/net/Uri;

    .line 31
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->videoUri:Landroid/net/Uri;

    .line 32
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->audioUri:Landroid/net/Uri;

    .line 34
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "com.fluttercandies/photo_manager/notify"

    invoke-direct {p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public static final synthetic access$getAllUri$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;)Landroid/net/Uri;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->allUri:Landroid/net/Uri;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private final registerObserver(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;Landroid/net/Uri;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, p1

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;->setUri(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public final onOuterChange(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 3

    const-string v0, "changeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "platform"

    const-string v2, "android"

    .line 73
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "uri"

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "type"

    .line 75
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "mediaType"

    .line 76
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 72
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 79
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    const-string p5, "id"

    invoke-interface {p2, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 82
    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    const-string p3, "galleryId"

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->debug(Ljava/lang/Object;)V

    .line 86
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string p3, "change"

    invoke-virtual {p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAndroidQExperimental(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "open"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "setAndroidQExperimental"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final startNotify()V
    .locals 3

    .line 40
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->notifying:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->imageObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->imageUri:Landroid/net/Uri;

    const-string v2, "imageUri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->registerObserver(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;Landroid/net/Uri;)V

    .line 44
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->videoObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->videoUri:Landroid/net/Uri;

    const-string v2, "videoUri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->registerObserver(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;Landroid/net/Uri;)V

    .line 45
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->audioObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->audioUri:Landroid/net/Uri;

    const-string v2, "audioUri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->registerObserver(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;Landroid/net/Uri;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->notifying:Z

    return-void
.end method

.method public final stopNotify()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->notifying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->notifying:Z

    .line 60
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->imageObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->videoObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;->audioObserver:Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
