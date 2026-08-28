.class Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearFocus(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    .line 238
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 240
    :try_start_b
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->clearFocus(I)V

    .line 241
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p1

    const-string v1, "error"

    .line 243
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_22
    return-void
.end method

.method private create(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "left"

    const-string v3, "top"

    const-string v4, "hybridFallback"

    .line 84
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "hybrid"

    .line 87
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_28

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_28

    move v6, v8

    goto :goto_29

    :cond_28
    move v6, v9

    :goto_29
    const-string v7, "params"

    .line 89
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3f

    .line 90
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object/from16 v25, v7

    goto :goto_41

    :cond_3f
    move-object/from16 v25, v11

    :goto_41
    const-string v7, "direction"

    const-string v10, "viewType"

    const-string v12, "id"

    if-eqz v6, :cond_85

    .line 94
    :try_start_49
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;

    .line 96
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 97
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    .line 102
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    sget-object v24, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->HYBRID_ONLY:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    move-object v12, v0

    invoke-direct/range {v12 .. v25}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;-><init>(ILjava/lang/String;DDDDILio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;Ljava/nio/ByteBuffer;)V

    .line 105
    iget-object v3, v1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v3}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v3

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V

    .line 106
    invoke-interface {v2, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_130

    :catch_82
    move-exception v0

    goto/16 :goto_127

    .line 109
    :cond_85
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 110
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_98

    goto :goto_99

    :cond_98
    move v8, v9

    :goto_99
    if-eqz v8, :cond_9e

    .line 114
    sget-object v4, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_HYBRID_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    goto :goto_a0

    .line 116
    :cond_9e
    sget-object v4, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_VIRTUAL_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;

    :goto_a0
    move-object/from16 v24, v4

    .line 117
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;

    .line 119
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 120
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    .line 121
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_c8

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    goto :goto_c9

    :cond_c8
    move-wide v15, v9

    .line 122
    :goto_c9
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    :cond_d9
    move-wide/from16 v17, v9

    const-string v0, "width"

    .line 123
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-string v0, "height"

    .line 124
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 125
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object v12, v4

    invoke-direct/range {v12 .. v25}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;-><init>(ILjava/lang/String;DDDDILio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest$RequestedDisplayMode;Ljava/nio/ByteBuffer;)V

    .line 128
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_11f

    if-eqz v8, :cond_117

    .line 135
    invoke-interface {v2, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_130

    .line 131
    :cond_117
    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Platform view attempted to fall back to hybrid mode when not requested."

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 137
    :cond_11f
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_126
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_126} :catch_82

    goto :goto_130

    :goto_127
    const-string v3, "error"

    .line 141
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_130
    return-void
.end method

.method private dispose(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    .line 146
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "id"

    .line 147
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 150
    :try_start_13
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->dispose(I)V

    .line 151
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception p1

    const-string v1, "error"

    .line 153
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a
    return-void
.end method

.method static synthetic lambda$resize$0(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;)V
    .registers 5

    if-nez p1, :cond_b

    const-string p1, "Failed to resize the platform view"

    const/4 v0, 0x0

    const-string v1, "error"

    .line 169
    invoke-interface {p0, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2b

    .line 171
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;->width:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;->height:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "height"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method

.method private offset(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 11

    .line 183
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    .line 185
    :try_start_7
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v2

    const-string v1, "id"

    .line 186
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "top"

    .line 187
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v1, "left"

    .line 188
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 185
    invoke-interface/range {v2 .. v7}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->offset(IDD)V

    .line 189
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_42

    :catch_38
    move-exception p1

    const-string v1, "error"

    .line 191
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_42
    return-void
.end method

.method private resize(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 10

    .line 158
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 159
    new-instance v6, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;

    const-string v0, "id"

    .line 161
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "width"

    .line 162
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v0, "height"

    .line 163
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;-><init>(IDD)V

    .line 165
    :try_start_30
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object p1

    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-interface {p1, v6, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_3e} :catch_3f

    goto :goto_4a

    :catch_3f
    move-exception p1

    .line 178
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4a
    return-void
.end method

.method private setDirection(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 225
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "id"

    .line 226
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "direction"

    .line 227
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    .line 230
    :try_start_1f
    iget-object v2, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->setDirection(II)V

    .line 231
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_36

    :catch_2c
    move-exception p1

    const-string v0, "error"

    .line 233
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_36
    return-void
.end method

.method private synchronizeToNativeViewHierarchy(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    .line 249
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    .line 251
    :try_start_b
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->synchronizeToNativeViewHierarchy(Z)V

    .line 252
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception p1

    const-string v1, "error"

    .line 254
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_22
    return-void
.end method

.method private touch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 23

    move-object/from16 v1, p2

    .line 196
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    new-instance v15, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;

    move-object v2, v15

    const/4 v3, 0x0

    .line 199
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    .line 200
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    const/4 v5, 0x2

    .line 201
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x3

    .line 202
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    .line 203
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    .line 204
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x6

    .line 205
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x7

    .line 206
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x8

    .line 207
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x9

    .line 208
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    double-to-float v12, v12

    const/16 v13, 0xa

    .line 209
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    double-to-float v13, v13

    const/16 v14, 0xb

    .line 210
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 p1, v15

    const/16 v15, 0xc

    .line 211
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v1, p1

    const/16 v1, 0xd

    .line 212
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v1, 0xe

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v1, 0xf

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-direct/range {v2 .. v19}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;-><init>(ILjava/lang/Number;Ljava/lang/Number;IILjava/lang/Object;Ljava/lang/Object;IIFFIIIIJ)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 217
    :try_start_bb
    iget-object v0, v2, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-interface {v0, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;)V
    :try_end_c6
    .catch Ljava/lang/IllegalStateException; {:try_start_bb .. :try_end_c6} :catch_ce

    move-object/from16 v3, p2

    .line 218
    :try_start_c8
    invoke-interface {v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_cb
    .catch Ljava/lang/IllegalStateException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_da

    :catch_cc
    move-exception v0

    goto :goto_d1

    :catch_ce
    move-exception v0

    move-object/from16 v3, p2

    :goto_d1
    const-string v4, "error"

    .line 220
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$100(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_da
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 48
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' message."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsChannel"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_b2

    goto/16 :goto_8b

    :sswitch_34
    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_8b

    :cond_3d
    const/4 v2, 0x7

    goto :goto_8b

    :sswitch_3f
    const-string v1, "setDirection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_8b

    :cond_48
    const/4 v2, 0x6

    goto :goto_8b

    :sswitch_4a
    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_8b

    :cond_53
    const/4 v2, 0x5

    goto :goto_8b

    :sswitch_55
    const-string v1, "synchronizeToNativeViewHierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_8b

    :cond_5e
    const/4 v2, 0x4

    goto :goto_8b

    :sswitch_60
    const-string v1, "clearFocus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_8b

    :cond_69
    const/4 v2, 0x3

    goto :goto_8b

    :sswitch_6b
    const-string v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_8b

    :cond_74
    const/4 v2, 0x2

    goto :goto_8b

    :sswitch_76
    const-string v1, "offset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_8b

    :cond_7f
    const/4 v2, 0x1

    goto :goto_8b

    :sswitch_81
    const-string v1, "create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x0

    :goto_8b
    packed-switch v2, :pswitch_data_d4

    .line 79
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_b1

    .line 58
    :pswitch_92
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->dispose(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 70
    :pswitch_96
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->setDirection(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 67
    :pswitch_9a
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->touch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 76
    :pswitch_9e
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->synchronizeToNativeViewHierarchy(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 73
    :pswitch_a2
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->clearFocus(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 61
    :pswitch_a6
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->resize(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 64
    :pswitch_aa
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->offset(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_b1

    .line 55
    :pswitch_ae
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;->create(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_b1
    return-void

    :sswitch_data_b2
    .sparse-switch
        -0x509a5f04 -> :sswitch_81
        -0x3cc89b6d -> :sswitch_76
        -0x37b2634c -> :sswitch_6b
        -0x2d106975 -> :sswitch_60
        -0x126acbb2 -> :sswitch_55
        0x696df3f -> :sswitch_4a
        0x2261393d -> :sswitch_3f
        0x63a5261f -> :sswitch_34
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
    .end packed-switch
.end method
