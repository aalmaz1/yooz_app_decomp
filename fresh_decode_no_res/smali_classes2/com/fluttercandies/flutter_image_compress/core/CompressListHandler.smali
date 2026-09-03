.class public final Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;
.super Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;
.source "CompressListHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;",
        "Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "handle",
        "",
        "context",
        "Landroid/content/Context;",
        "flutter_image_compress_common_release"
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
.field private final call:Lio/flutter/plugin/common/MethodCall;


# direct methods
.method public static synthetic $r8$lambda$LUl6PMVI9t12Mejx2kup3IVq-T0(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->handle$lambda$0(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p2}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->call:Lio/flutter/plugin/common/MethodCall;

    return-void
.end method

.method private static final handle$lambda$0(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V
    .locals 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, [B

    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    .line 19
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v5, 0x4

    .line 21
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    .line 22
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v9, 0x6

    .line 23
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v11, 0x7

    .line 24
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/16 v8, 0x8

    .line 25
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v7, :cond_0

    .line 26
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    invoke-virtual {v0, v6}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->getRotationDegrees([B)I

    move-result v1

    :cond_0
    const/16 v0, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq v1, v0, :cond_1

    move v8, v2

    move v2, v4

    goto :goto_0

    :cond_1
    move v8, v4

    .line 32
    :goto_0
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    invoke-virtual {v0, v9}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->findFormat(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_2

    const-string p1, "No support format."

    .line 34
    invoke-static {p1}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_2
    add-int v11, v5, v1

    .line 39
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    :try_start_0
    move-object v7, v1

    check-cast v7, Ljava/io/OutputStream;

    move-object v5, p1

    move v9, v2

    .line 41
    invoke-interface/range {v4 .. v13}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->handleByteArray(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V

    .line 52
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->reply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fluttercandies/flutter_image_compress/exception/CompressError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_3
    invoke-virtual {p0, v0}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->reply(Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lcom/fluttercandies/flutter_image_compress/exception/CompressError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 55
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/fluttercandies/flutter_image_compress/exception/CompressError;->printStackTrace()V

    .line 56
    :cond_4
    invoke-virtual {p0, v0}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->reply(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 61
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method public final handle(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Companion:Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler$$ExternalSyntheticLambda0;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
