.class final Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectivePreviewingSingleInputVideoGraphFactory;
.super Ljava/lang/Object;
.source "CompositingVideoSinkProvider.java"

# interfaces
.implements Landroidx/media3/common/PreviewingVideoGraph$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectivePreviewingSingleInputVideoGraphFactory"
.end annotation


# instance fields
.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V
    .registers 2

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput-object p1, p0, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectivePreviewingSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/DebugViewProvider;",
            "Landroidx/media3/common/VideoGraph$Listener;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;J)",
            "Landroidx/media3/common/PreviewingVideoGraph;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory"

    .line 957
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 958
    const-class v3, Landroidx/media3/common/VideoFrameProcessor$Factory;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 961
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_32

    move-object v2, p0

    :try_start_15
    iget-object v3, v2, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectivePreviewingSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    aput-object v3, v1, v4

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/common/PreviewingVideoGraph$Factory;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    .line 963
    invoke-interface/range {v3 .. v11}, Landroidx/media3/common/PreviewingVideoGraph$Factory;->create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_30

    return-object v0

    :catch_30
    move-exception v0

    goto :goto_34

    :catch_32
    move-exception v0

    move-object v2, p0

    .line 972
    :goto_34
    invoke-static {v0}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object v0

    throw v0
.end method
