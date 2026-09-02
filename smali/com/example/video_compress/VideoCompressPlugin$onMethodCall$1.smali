.class public final Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;
.super Ljava/lang/Object;
.source "VideoCompressPlugin.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/TranscoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/video_compress/VideoCompressPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/example/video_compress/VideoCompressPlugin$onMethodCall$1",
        "Lcom/otaliastudios/transcoder/TranscoderListener;",
        "onTranscodeCanceled",
        "",
        "onTranscodeCompleted",
        "successCode",
        "",
        "onTranscodeFailed",
        "exception",
        "",
        "onTranscodeProgress",
        "progress",
        "",
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


# instance fields
.field final synthetic $channel:Lio/flutter/plugin/common/MethodChannel;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $deleteOrigin:Z

.field final synthetic $destPath:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic this$0:Lcom/example/video_compress/VideoCompressPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Lcom/example/video_compress/VideoCompressPlugin;Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$channel:Lio/flutter/plugin/common/MethodChannel;

    iput-object p2, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->this$0:Lcom/example/video_compress/VideoCompressPlugin;

    iput-object p3, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$destPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-boolean p6, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$deleteOrigin:Z

    iput-object p7, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$path:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onTranscodeCompleted(I)V
    .registers 4

    .line 158
    iget-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$channel:Lio/flutter/plugin/common/MethodChannel;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "updateProgress"

    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    new-instance p1, Lcom/example/video_compress/Utility;

    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->this$0:Lcom/example/video_compress/VideoCompressPlugin;

    invoke-virtual {v0}, Lcom/example/video_compress/VideoCompressPlugin;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/example/video_compress/Utility;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$destPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/example/video_compress/Utility;->getMediaInfoJson(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "isCancel"

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 162
    iget-boolean p1, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$deleteOrigin:Z

    if-eqz p1, :cond_3d

    .line 163
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$path:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3d
    return-void
.end method

.method public onTranscodeFailed(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onTranscodeProgress(D)V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/example/video_compress/VideoCompressPlugin$onMethodCall$1;->$channel:Lio/flutter/plugin/common/MethodChannel;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "updateProgress"

    invoke-virtual {v0, p2, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
