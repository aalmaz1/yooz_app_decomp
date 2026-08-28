.class final Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppUpdatePlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/ffuf/in_app_update/InAppUpdatePlugin;->performImmediateUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
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
.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;


# direct methods
.method constructor <init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 3

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    iput-object p2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 193
    invoke-virtual {p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 6

    .line 194
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setAppUpdateType$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Ljava/lang/Integer;)V

    .line 195
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    iget-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 197
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateManager$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 198
    iget-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateInfo$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    iget-object v3, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v3}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getActivityProvider$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lde/ffuf/in_app_update/ActivityProvider;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v3

    .line 200
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v1

    const/16 v4, 0x4fc

    .line 197
    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    :cond_38
    return-void
.end method
