.class Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;
.super Ljava/lang/Object;
.source "VideoThumbnailPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;

.field final synthetic val$args:Ljava/util/Map;

.field final synthetic val$format:I

.field final synthetic val$headers:Ljava/util/HashMap;

.field final synthetic val$maxh:I

.field final synthetic val$maxw:I

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$quality:I

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic val$timeMs:I

.field final synthetic val$video:Ljava/lang/String;


# direct methods
.method constructor <init>(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;IIIIILio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->this$0:Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;

    iput-object p2, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$args:Ljava/util/Map;

    iput-object p4, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$video:Ljava/lang/String;

    iput-object p5, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$headers:Ljava/util/HashMap;

    iput p6, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$format:I

    iput p7, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxh:I

    iput p8, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxw:I

    iput p9, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$timeMs:I

    iput p10, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$quality:I

    iput-object p11, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    :try_start_2
    iget-object v2, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$method:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 78
    iget-object v2, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$args:Ljava/util/Map;

    const-string v4, "path"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->this$0:Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;

    iget-object v5, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$video:Ljava/lang/String;

    iget-object v6, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$headers:Ljava/util/HashMap;

    iget v8, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$format:I

    iget v9, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxh:I

    iget v10, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxw:I

    iget v11, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$timeMs:I

    iget v12, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$quality:I

    invoke-static/range {v4 .. v12}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->-$$Nest$mbuildThumbnailFile(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    .line 82
    :cond_2d
    iget-object v2, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$method:Ljava/lang/String;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 83
    iget-object v4, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->this$0:Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;

    iget-object v5, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$video:Ljava/lang/String;

    iget-object v6, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$headers:Ljava/util/HashMap;

    iget v7, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$format:I

    iget v8, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxh:I

    iget v9, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$maxw:I

    iget v10, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$timeMs:I

    iget v11, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$quality:I

    invoke-static/range {v4 .. v11}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->-$$Nest$mbuildThumbnailData(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Ljava/lang/String;Ljava/util/HashMap;IIIII)[B

    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_52

    goto :goto_4e

    :cond_4c
    move v3, v1

    move-object v1, v0

    :goto_4e
    move-object v2, v0

    move-object v0, v1

    move v1, v3

    goto :goto_53

    :catch_52
    move-exception v2

    .line 90
    :goto_53
    iget-object v3, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->this$0:Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;

    iget-object v4, p0, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v3, v4, v0, v1, v2}, Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;->-$$Nest$monResult(Lxyz/justsoft/video_thumbnail/VideoThumbnailPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;ZLjava/lang/Exception;)V

    return-void
.end method
