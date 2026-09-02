.class final Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PhotoManagerPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->handleOtherMethods(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

.field final synthetic this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;


# direct methods
.method constructor <init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 8

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->access$getPermissionsUtils$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    invoke-static {v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->access$getApplicationContext$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->haveLocationPermission(Landroid/content/Context;)Z

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    invoke-static {v1, v2, v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->access$handleMethodResult(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_4b

    :catch_18
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    invoke-virtual {v1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->getCall()Lio/flutter/plugin/common/MethodCall;

    move-result-object v1

    .line 272
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 273
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 274
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin$handleOtherMethods$1;->$resultHandler:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " method has an error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v3, v2, v0, v1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4b
    return-void
.end method
