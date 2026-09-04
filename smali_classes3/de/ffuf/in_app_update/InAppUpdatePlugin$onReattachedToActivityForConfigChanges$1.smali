.class public final Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;
.super Ljava/lang/Object;
.source "InAppUpdatePlugin.kt"

# interfaces
.implements Lde/ffuf/in_app_update/ActivityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/ffuf/in_app_update/InAppUpdatePlugin;->onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "de/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1",
        "Lde/ffuf/in_app_update/ActivityProvider;",
        "activity",
        "Landroid/app/Activity;",
        "addActivityResultListener",
        "",
        "callback",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "in_app_update_release"
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
.field final synthetic $activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;->$activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activity()Landroid/app/Activity;
    .locals 2

    .line 150
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;->$activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;->$activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method
