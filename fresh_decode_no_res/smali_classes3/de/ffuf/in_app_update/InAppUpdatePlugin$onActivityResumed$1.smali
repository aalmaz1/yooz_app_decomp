.class final Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppUpdatePlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/ffuf/in_app_update/InAppUpdatePlugin;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "appUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;


# direct methods
.method constructor <init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    iput-object p2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateType$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    :try_start_0
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->this$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    invoke-static {v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->access$getAppUpdateManager$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;->$activity:Landroid/app/Activity;

    const/16 v3, 0x4fc

    .line 180
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Could not start update flow"

    .line 187
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "in_app_update"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
