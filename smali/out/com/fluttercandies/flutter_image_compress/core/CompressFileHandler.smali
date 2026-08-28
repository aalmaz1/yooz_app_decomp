.class public final Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;
.super Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;
.source "CompressFileHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;",
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
        "handleGetFile",
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
.method public static synthetic $r8$lambda$0cHJjRo8MSPqDWtshrSsWkswhNo(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->handle$lambda$0(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpX8ZvVEMsncJ9hffISlFFgg2t0(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->handleGetFile$lambda$1(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    return-void
.end method

.method private static final handle$lambda$0(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 20
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    .line 21
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    .line 22
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    .line 23
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    .line 24
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v12, 0x6

    .line 25
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x7

    .line 26
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/16 v13, 0x8

    .line 27
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x9

    .line 28
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    sget-object v6, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    invoke-virtual {v6, v12}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->findFormat(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    move-result-object v6

    const/4 v14, 0x0

    if-nez v6, :cond_bb

    const-string v0, "No support format."

    .line 31
    invoke-static {v0}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v1, v14}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_bb
    if-eqz v10, :cond_cc

    .line 36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    move-result-object v2

    .line 37
    sget-object v10, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    invoke-virtual {v10, v2}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->getRotationDegrees([B)I

    move-result v2

    :cond_cc
    const/16 v10, 0x5a

    if-eq v2, v10, :cond_d7

    const/16 v10, 0x10e

    if-eq v2, v10, :cond_d7

    move v10, v7

    move v7, v5

    goto :goto_d8

    :cond_d7
    move v10, v5

    :goto_d8
    add-int/2addr v9, v2

    .line 47
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    :try_start_de
    move-object v5, v15

    check-cast v5, Ljava/io/OutputStream;

    move-object v2, v6

    move-object/from16 v3, p1

    move v6, v7

    move v7, v10

    move v10, v11

    move v11, v13

    move v12, v0

    .line 49
    invoke-interface/range {v2 .. v12}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 61
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f3} :catch_f9
    .catchall {:try_start_de .. :try_end_f3} :catchall_f7

    .line 66
    :goto_f3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_109

    :catchall_f7
    move-exception v0

    goto :goto_10a

    :catch_f9
    move-exception v0

    .line 63
    :try_start_fa
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_105
    invoke-virtual {v1, v14}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_108
    .catchall {:try_start_fa .. :try_end_108} :catchall_f7

    goto :goto_f3

    :goto_109
    return-void

    .line 66
    :goto_10a
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0
.end method

.method private static final handleGetFile$lambda$1(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->call:Lio/flutter/plugin/common/MethodCall;

    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    .line 76
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    .line 77
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    .line 78
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    .line 79
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v10

    check-cast v13, Ljava/lang/String;

    const/4 v5, 0x5

    .line 80
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x6

    .line 81
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_87

    .line 83
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/exif/Exif;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/fluttercandies/flutter_image_compress/exif/Exif;->getRotationDegrees(Ljava/io/File;)I

    move-result v2

    :cond_87
    const/4 v10, 0x7

    .line 87
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v12, 0x8

    .line 88
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/16 v12, 0x9

    .line 89
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v14, 0xa

    .line 90
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    sget-object v7, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    invoke-virtual {v7, v10}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->findFormat(I)Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    move-result-object v7

    const/4 v14, 0x0

    if-nez v7, :cond_d4

    const-string v0, "No support format."

    .line 93
    invoke-static {v0}, Lcom/fluttercandies/flutter_image_compress/logger/LogExtKt;->log(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v1, v14}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V

    return-void

    :cond_d4
    const/16 v10, 0x5a

    if-eq v2, v10, :cond_dd

    const/16 v10, 0x10e

    if-eq v2, v10, :cond_dd

    goto :goto_e2

    :cond_dd
    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v16

    :goto_e2
    add-int v10, v5, v2

    .line 105
    :try_start_e4
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v2

    check-cast v15, Ljava/io/OutputStream;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f1} :catch_109
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_107

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v5, v15

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v0

    .line 106
    :try_start_fb
    invoke-interface/range {v2 .. v12}, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;->handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V

    .line 118
    invoke-virtual {v1, v13}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_101} :catch_105
    .catchall {:try_start_fb .. :try_end_101} :catchall_11d

    .line 123
    :goto_101
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    goto :goto_11c

    :catch_105
    move-exception v0

    goto :goto_10b

    :catchall_107
    move-exception v0

    goto :goto_11f

    :catch_109
    move-exception v0

    move-object v15, v14

    .line 120
    :goto_10b
    :try_start_10b
    sget-object v2, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    invoke-virtual {v2}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;->getShowLog()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_116
    invoke-virtual {v1, v14}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->reply(Ljava/lang/Object;)V
    :try_end_119
    .catchall {:try_start_10b .. :try_end_119} :catchall_11d

    if-eqz v15, :cond_11c

    goto :goto_101

    :cond_11c
    :goto_11c
    return-void

    :catchall_11d
    move-exception v0

    move-object v14, v15

    :goto_11f
    if-eqz v14, :cond_124

    .line 123
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    :cond_124
    throw v0
.end method


# virtual methods
.method public final handle(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Companion:Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler$$ExternalSyntheticLambda0;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final handleGetFile(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->Companion:Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler$$ExternalSyntheticLambda1;-><init>(Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
