.class public final synthetic Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->$r8$lambda$3QNaJk45jKvrkL3loCeIoXYilg4(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method
