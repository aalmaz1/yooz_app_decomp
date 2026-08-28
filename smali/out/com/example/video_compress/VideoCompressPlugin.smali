.class public final Lcom/example/video_compress/VideoCompressPlugin;
.super Ljava/lang/Object;
.source "VideoCompressPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/video_compress/VideoCompressPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0004\n\u0002\u0008\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/example/video_compress/VideoCompressPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "()V",
        "LOG",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "TAG",
        "",
        "TAG$1",
        "_channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "_context",
        "Landroid/content/Context;",
        "channelName",
        "getChannelName",
        "()Ljava/lang/String;",
        "setChannelName",
        "(Ljava/lang/String;)V",
        "transcodeFuture",
        "Ljava/util/concurrent/Future;",
        "Ljava/lang/Void;",
        "init",
        "",
        "context",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "Companion",
        "video_compress_release"
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
.field public static final Companion:Lcom/example/video_compress/VideoCompressPlugin$Companion;

.field private static final TAG:Ljava/lang/String; = "video_compress"


# instance fields
.field private final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final TAG$1:Ljava/lang/String;

.field private _channel:Lio/flutter/plugin/common/MethodChannel;

.field private _context:Landroid/content/Context;

.field private channelName:Ljava/lang/String;

.field private transcodeFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/example/video_compress/VideoCompressPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/video_compress/VideoCompressPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/video_compress/VideoCompressPlugin;->Companion:Lcom/example/video_compress/VideoCompressPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoCompressPlugin"

    .line 34
    iput-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->TAG$1:Ljava/lang/String;

    .line 35
    new-instance v1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/example/video_compress/VideoCompressPlugin;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v0, "video_compress"

    .line 37
    iput-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$init(Lcom/example/video_compress/VideoCompressPlugin;Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/example/video_compress/VideoCompressPlugin;->init(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method private final init(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 5

    .line 193
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 194
    move-object p2, p0

    check-cast p2, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 195
    iput-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin;->_context:Landroid/content/Context;

    .line 196
    iput-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->_channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public static final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/example/video_compress/VideoCompressPlugin;->Companion:Lcom/example/video_compress/VideoCompressPlugin$Companion;

    invoke-virtual {v0, p0}, Lcom/example/video_compress/VideoCompressPlugin$Companion;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method


# virtual methods
.method public final getChannelName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/example/video_compress/VideoCompressPlugin;->init(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin;->_channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 188
    :cond_d
    iput-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->_context:Landroid/content/Context;

    .line 189
    iput-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin;->_channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 26

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    const-string v1, "call"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "result"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v3, v8, Lcom/example/video_compress/VideoCompressPlugin;->_context:Landroid/content/Context;

    .line 41
    iget-object v1, v8, Lcom/example/video_compress/VideoCompressPlugin;->_channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v3, :cond_334

    if-nez v1, :cond_1a

    goto/16 :goto_334

    .line 48
    :cond_1a
    iget-object v2, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v2, :cond_330

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "video_compress"

    const-string v7, "position"

    const/4 v10, 0x1

    const-string v11, "quality"

    const-string v12, "path"

    sparse-switch v4, :sswitch_data_33c

    goto/16 :goto_330

    :sswitch_30
    const-string v1, "getMediaInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_330

    .line 63
    :cond_3a
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    new-instance v1, Lcom/example/video_compress/Utility;

    iget-object v2, v8, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/example/video_compress/Utility;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v0}, Lcom/example/video_compress/Utility;->getMediaInfoJson(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_333

    :sswitch_57
    const-string v4, "compressVideo"

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto/16 :goto_330

    .line 79
    :cond_61
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v4, "deleteOrigin"

    .line 81
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v4, "startTime"

    .line 82
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v12, "duration"

    .line 83
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    const-string v13, "includeAudio"

    .line 84
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    if-nez v13, :cond_a5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    :cond_a5
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v13, "frameRate"

    .line 85
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_b8

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_be

    :cond_b8
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    :goto_be
    invoke-virtual {v3, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v13, "getAbsolutePath(...)"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd hh-mm-ss"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 89
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "VID_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ".mp4"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x154

    .line 91
    invoke-static {v9}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v9

    const-string v13, "build(...)"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    const/16 v14, 0x280

    const/16 v15, 0x2d0

    packed-switch v2, :pswitch_data_35a

    goto/16 :goto_1c3

    :pswitch_123
    const/16 v0, 0x438

    const/16 v2, 0x780

    .line 125
    invoke-static {v0, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto/16 :goto_1c3

    :pswitch_137
    const/16 v0, 0x500

    .line 122
    invoke-static {v15, v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto/16 :goto_1c3

    :pswitch_149
    const/16 v0, 0x21c

    const/16 v2, 0x3c0

    .line 119
    invoke-static {v0, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1c3

    :pswitch_15c
    const/16 v0, 0x1e0

    .line 116
    invoke-static {v0, v14}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1c3

    .line 109
    :pswitch_16d
    new-instance v2, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    invoke-direct {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>()V

    const/high16 v9, 0x40400000    # 3.0f

    .line 110
    invoke-virtual {v2, v9}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->keyFrameInterval(F)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v2

    const-wide/32 v14, 0x384000

    .line 111
    invoke-virtual {v2, v14, v15}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->bitRate(J)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v2

    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->frameRate(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1c3

    .line 104
    :pswitch_195
    invoke-static {v14}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1c3

    :pswitch_1a4
    const/16 v0, 0x168

    .line 101
    invoke-static {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1c3

    .line 97
    :pswitch_1b5
    invoke-static {v15}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->atMost(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    :goto_1c3
    if-eqz v10, :cond_1dc

    .line 133
    invoke-static {}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->builder()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v0

    const/4 v2, -0x1

    .line 134
    invoke-virtual {v0, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->channels(I)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->sampleRate(I)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    goto :goto_1e3

    .line 138
    :cond_1dc
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/RemoveTrackStrategy;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/strategy/RemoveTrackStrategy;-><init>()V

    check-cast v0, Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    :goto_1e3
    if-nez v4, :cond_1f5

    if-eqz v12, :cond_1e8

    goto :goto_1f5

    .line 145
    :cond_1e8
    new-instance v2, Lcom/otaliastudios/transcoder/source/UriDataSource;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/otaliastudios/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v2, Lcom/otaliastudios/transcoder/source/DataSource;

    move-object v12, v7

    goto :goto_22c

    .line 142
    :cond_1f5
    :goto_1f5
    new-instance v2, Lcom/otaliastudios/transcoder/source/UriDataSource;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v2, v3, v10}, Lcom/otaliastudios/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 143
    new-instance v10, Lcom/otaliastudios/transcoder/source/TrimDataSource;

    move-object/from16 v18, v2

    check-cast v18, Lcom/otaliastudios/transcoder/source/DataSource;

    if-eqz v4, :cond_20b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_20c

    :cond_20b
    const/4 v2, 0x0

    :goto_20c
    const v4, 0xf4240

    mul-int/2addr v2, v4

    int-to-long v13, v2

    if-eqz v12, :cond_21a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v16, v2

    goto :goto_21c

    :cond_21a
    const/16 v16, 0x0

    :goto_21c
    mul-int v2, v16, v4

    move-object v12, v7

    int-to-long v6, v2

    move-object/from16 v17, v10

    move-wide/from16 v19, v13

    move-wide/from16 v21, v6

    invoke-direct/range {v17 .. v22}, Lcom/otaliastudios/transcoder/source/TrimDataSource;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;JJ)V

    move-object v2, v10

    check-cast v2, Lcom/otaliastudios/transcoder/source/DataSource;

    .line 149
    :goto_22c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/otaliastudios/transcoder/Transcoder;->into(Ljava/lang/String;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v2}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->setAudioTrackStrategy(Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v9}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->setVideoTrackStrategy(Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object v9

    .line 153
    new-instance v10, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;

    move-object v0, v10

    move-object/from16 v2, p0

    move-object v4, v5

    move-object/from16 v5, p2

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;-><init>(Lio/flutter/plugin/common/MethodChannel;Lcom/example/video_compress/VideoCompressPlugin;Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V

    check-cast v10, Lcom/otaliastudios/transcoder/TranscoderListener;

    invoke-virtual {v9, v10}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->setListener(Lcom/otaliastudios/transcoder/TranscoderListener;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->transcode()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 149
    iput-object v0, v8, Lcom/example/video_compress/VideoCompressPlugin;->transcodeFuture:Ljava/util/concurrent/Future;

    goto/16 :goto_333

    :sswitch_25a
    const-string v1, "getByteThumbnail"

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_263

    goto :goto_29f

    .line 50
    :cond_263
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 52
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 53
    new-instance v3, Lcom/example/video_compress/ThumbnailUtility;

    iget-object v4, v8, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/example/video_compress/ThumbnailUtility;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-long v4, v0

    move-object v0, v3

    move-wide v3, v4

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/example/video_compress/ThumbnailUtility;->getByteThumbnail(Ljava/lang/String;IJLio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_333

    :sswitch_297
    const-string v0, "deleteAllCache"

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a3

    :goto_29f
    move-object/from16 v6, p2

    goto/16 :goto_330

    .line 67
    :cond_2a3
    new-instance v0, Lcom/example/video_compress/Utility;

    iget-object v1, v8, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/example/video_compress/Utility;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p2

    invoke-virtual {v0, v3, v6}, Lcom/example/video_compress/Utility;->deleteAllCache(Landroid/content/Context;Lio/flutter/plugin/common/MethodChannel$Result;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_333

    :sswitch_2b6
    const-string v1, "setLogLevel"

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c0

    goto/16 :goto_330

    :cond_2c0
    const-string v1, "logLevel"

    .line 70
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 71
    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->setLogLevel(I)V

    .line 72
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_333

    :sswitch_2da
    const-string v1, "getFileThumbnail"

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e3

    goto :goto_330

    .line 56
    :cond_2e3
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 58
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 59
    new-instance v1, Lcom/example/video_compress/ThumbnailUtility;

    invoke-direct {v1, v5}, Lcom/example/video_compress/ThumbnailUtility;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-long v9, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move-wide v4, v9

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/example/video_compress/ThumbnailUtility;->getFileThumbnail(Landroid/content/Context;Ljava/lang/String;IJLio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_333

    :sswitch_317
    const-string v0, "cancelCompression"

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_320

    goto :goto_330

    .line 75
    :cond_320
    iget-object v0, v8, Lcom/example/video_compress/VideoCompressPlugin;->transcodeFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_327

    invoke-interface {v0, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_327
    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_333

    .line 177
    :cond_330
    :goto_330
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_333
    return-void

    .line 44
    :cond_334
    :goto_334
    iget-object v0, v8, Lcom/example/video_compress/VideoCompressPlugin;->TAG$1:Ljava/lang/String;

    const-string v1, "Calling VideoCompress plugin before initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_33c
    .sparse-switch
        -0x4f961d74 -> :sswitch_317
        -0x1a595ce6 -> :sswitch_2da
        -0x1278eede -> :sswitch_2b6
        -0x10c1ced4 -> :sswitch_297
        0x4dda750e -> :sswitch_25a
        0x671b0639 -> :sswitch_57
        0x7efd27fc -> :sswitch_30
    .end sparse-switch

    :pswitch_data_35a
    .packed-switch 0x0
        :pswitch_1b5
        :pswitch_1a4
        :pswitch_195
        :pswitch_16d
        :pswitch_15c
        :pswitch_149
        :pswitch_137
        :pswitch_123
    .end packed-switch
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin;->channelName:Ljava/lang/String;

    return-void
.end method
