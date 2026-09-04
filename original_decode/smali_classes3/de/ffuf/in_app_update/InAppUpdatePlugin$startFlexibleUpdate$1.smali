.class final Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppUpdatePlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/ffuf/in_app_update/InAppUpdatePlugin;->startFlexibleUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
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
.method public static synthetic $r8$lambda$zYDFli3DGkOdprD4VLIXAZ-HbLI(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V
    .locals 0

    invoke-static {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->invoke$lambda$0(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

.method constructor <init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    iput-object p2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    invoke-static {p0, v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$addState(Lde/ffuf/in_app_update/InAppUpdatePlugin;I)V

    .line 230
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 231
    invoke-static {p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 232
    :cond_0
    invoke-static {p0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-static {p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lio/flutter/plugin/common/MethodChannel$Result;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error during installation"

    .line 234
    invoke-interface {v0, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    :cond_2
    invoke-static {p0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 219
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setAppUpdateType$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Ljava/lang/Integer;)V

    .line 220
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    iget-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$setUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 221
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateManager$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateInfo$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    iget-object v3, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v3}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getActivityProvider$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lde/ffuf/in_app_update/ActivityProvider;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v3

    .line 224
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->defaultOptions(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object v1

    const/16 v4, 0x4fc

    .line 221
    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateManager$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    new-instance v2, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1$$ExternalSyntheticLambda0;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;)V

    invoke-interface {v0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    :cond_1
    return-void
.end method
