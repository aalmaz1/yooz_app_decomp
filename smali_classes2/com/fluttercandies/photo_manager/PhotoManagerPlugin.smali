.class public final Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;
.super Ljava/lang/Object;
.source "PhotoManagerPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0005H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "permissionsUtils",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "plugin",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;",
        "requestPermissionsResultListener",
        "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
        "activityAttached",
        "",
        "addRequestPermissionsResultListener",
        "onAttachedToActivity",
        "onAttachedToEngine",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onReattachedToActivityForConfigChanges",
        "onRemoveRequestPermissionResultListener",
        "oldBinding",
        "Companion",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;


# instance fields
.field private binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private final permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

.field private plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

.field private requestPermissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;-><init>()V

    iput-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    return-void
.end method

.method private final activityAttached(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->onRemoveRequestPermissionResultListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 76
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->bindActivity(Landroid/app/Activity;)V

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->addRequestPermissionsResultListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method private final addRequestPermissionsResultListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;

    iget-object v1, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;->createAddRequestPermissionsResultListener(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->requestPermissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    .line 84
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 85
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getDeleteManager()Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    :cond_0
    return-void
.end method

.method private final onRemoveRequestPermissionResultListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->requestPermissionsResultListener:Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->getDeleteManager()Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->activityAttached(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 6

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    .line 36
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "getBinaryMessenger(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 39
    iget-object v5, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->permissionsUtils:Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;

    .line 35
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;)V

    .line 41
    sget-object v1, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->Companion:Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin$Companion;->register(Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 35
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->onRemoveRequestPermissionResultListener(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->bindActivity(Landroid/app/Activity;)V

    .line 55
    :cond_1
    iput-object v1, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->binding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;->bindActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->plugin:Lcom/fluttercandies/photo_manager/core/PhotoManagerPlugin;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/fluttercandies/photo_manager/PhotoManagerPlugin;->activityAttached(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method
