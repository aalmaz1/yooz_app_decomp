.class public final Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;
.super Ljava/lang/Object;
.source "ImageCompressPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "()V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "context",
        "Landroid/content/Context;",
        "handleLog",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "onAttachedToEngine",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

.field private static showLog:Z


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->Companion:Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->registerFormat(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V

    .line 26
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->registerFormat(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V

    .line 27
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/handle/heif/HeifHandler;

    invoke-direct {v1}, Lcom/fluttercandies/flutter_image_compress/handle/heif/HeifHandler;-><init>()V

    check-cast v1, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->registerFormat(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V

    .line 28
    sget-object v0, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->INSTANCE:Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;

    new-instance v1, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/flutter_image_compress/format/FormatRegister;->registerFormat(Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;)V

    return-void
.end method

.method public static final synthetic access$getShowLog$cp()Z
    .registers 1

    .line 16
    sget-boolean v0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->showLog:Z

    return v0
.end method

.method public static final synthetic access$setShowLog$cp(Z)V
    .registers 1

    .line 16
    sput-boolean p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->showLog:Z

    return-void
.end method

.method private final handleLog(Lio/flutter/plugin/common/MethodCall;)I
    .registers 4

    .line 43
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->showLog:Z

    return v0
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->context:Landroid/content/Context;

    .line 50
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "flutter_image_compress"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 51
    move-object p1, p0

    check-cast p1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 56
    :cond_d
    iput-object v0, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "context"

    sparse-switch v1, :sswitch_data_98

    goto/16 :goto_93

    :sswitch_1a
    const-string v1, "showLog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 33
    invoke-direct {p0, p1}, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->handleLog(Lio/flutter/plugin/common/MethodCall;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_96

    :sswitch_2f
    const-string p1, "getSystemVersion"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_93

    .line 37
    :cond_38
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_96

    :sswitch_42
    const-string v1, "compressWithList"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_93

    .line 34
    :cond_4b
    new-instance v0, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;

    invoke-direct {v0, p1, p2}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_58

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_59

    :cond_58
    move-object v2, p1

    :goto_59
    invoke-virtual {v0, v2}, Lcom/fluttercandies/flutter_image_compress/core/CompressListHandler;->handle(Landroid/content/Context;)V

    goto :goto_96

    :sswitch_5d
    const-string v1, "compressWithFile"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_93

    .line 35
    :cond_66
    new-instance v0, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;

    invoke-direct {v0, p1, p2}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_73

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_74

    :cond_73
    move-object v2, p1

    :goto_74
    invoke-virtual {v0, v2}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->handle(Landroid/content/Context;)V

    goto :goto_96

    :sswitch_78
    const-string v1, "compressWithFileAndGetFile"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_93

    .line 36
    :cond_81
    new-instance v0, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;

    invoke-direct {v0, p1, p2}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/fluttercandies/flutter_image_compress/ImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_8e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8e
    move-object v2, p1

    :goto_8f
    invoke-virtual {v0, v2}, Lcom/fluttercandies/flutter_image_compress/core/CompressFileHandler;->handleGetFile(Landroid/content/Context;)V

    goto :goto_96

    .line 38
    :cond_93
    :goto_93
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_96
    return-void

    nop

    :sswitch_data_98
    .sparse-switch
        -0x7bdcfe1 -> :sswitch_78
        0x52114e4 -> :sswitch_5d
        0x523d006 -> :sswitch_42
        0x4b43fbf3 -> :sswitch_2f
        0x7b381307 -> :sswitch_1a
    .end sparse-switch
.end method
