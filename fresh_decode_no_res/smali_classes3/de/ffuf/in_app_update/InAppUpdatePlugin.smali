.class public final Lde/ffuf/in_app_update/InAppUpdatePlugin;
.super Ljava/lang/Object;
.source "InAppUpdatePlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/ffuf/in_app_update/InAppUpdatePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 K2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001KB\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J\u001e\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0!H\u0002J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002J\u001a\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\"\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u000f2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u00102\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&2\u0006\u00103\u001a\u00020(H\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u00105\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u00106\u001a\u00020\u001c2\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020;H\u0016J\u0012\u0010<\u001a\u00020\u001c2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u0008\u0010?\u001a\u00020\u001cH\u0016J\u0008\u0010@\u001a\u00020\u001cH\u0016J\u0010\u0010A\u001a\u00020\u001c2\u0006\u0010B\u001a\u00020;H\u0016J\u001c\u0010C\u001a\u00020\u001c2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010D\u001a\u0004\u0018\u00010\u0016H\u0016J\u0018\u0010E\u001a\u00020\u001c2\u0006\u0010F\u001a\u00020G2\u0006\u0010\u001f\u001a\u00020\u001aH\u0016J\u0010\u0010H\u001a\u00020\u001c2\u0006\u00107\u001a\u000208H\u0016J\u0010\u0010I\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002J\u0010\u0010J\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001aH\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lde/ffuf/in_app_update/InAppUpdatePlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/EventChannel$StreamHandler;",
        "()V",
        "activityProvider",
        "Lde/ffuf/in_app_update/ActivityProvider;",
        "appUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "appUpdateManager",
        "Lcom/google/android/play/core/appupdate/AppUpdateManager;",
        "appUpdateType",
        "",
        "Ljava/lang/Integer;",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "event",
        "Lio/flutter/plugin/common/EventChannel;",
        "installStateSink",
        "Lio/flutter/plugin/common/EventChannel$EventSink;",
        "installStateUpdatedListener",
        "Lcom/google/android/play/core/install/InstallStateUpdatedListener;",
        "updateResult",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "addState",
        "",
        "status",
        "checkAppState",
        "result",
        "block",
        "Lkotlin/Function0;",
        "checkForUpdate",
        "completeFlexibleUpdate",
        "onActivityCreated",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "onAttachedToActivity",
        "activityPluginBinding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onCancel",
        "arguments",
        "",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "binding",
        "onListen",
        "events",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "onReattachedToActivityForConfigChanges",
        "performImmediateUpdate",
        "startFlexibleUpdate",
        "Companion",
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


# static fields
.field public static final Companion:Lde/ffuf/in_app_update/InAppUpdatePlugin$Companion;

.field private static final REQUEST_CODE_START_UPDATE:I = 0x4fc


# instance fields
.field private activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

.field private appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private appUpdateType:Ljava/lang/Integer;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private event:Lio/flutter/plugin/common/EventChannel;

.field private installStateSink:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

.field private updateResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public static synthetic $r8$lambda$6L1TEh_Ka4tvdCWrKAs3V3Ge8xk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->onActivityResumed$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrQQTrn43ly5ixyu99InEMgeh_E(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V
    .locals 0

    invoke-static {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->onAttachedToEngine$lambda$0(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WqzZVnlYRkJZJ2A2fm5wIksdaEg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkForUpdate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_EYhQ-tx2XpTXk14Mn2M6YsdemU(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkForUpdate$lambda$7(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->Companion:Lde/ffuf/in_app_update/InAppUpdatePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addState(Lde/ffuf/in_app_update/InAppUpdatePlugin;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->addState(I)V

    return-void
.end method

.method public static final synthetic access$getActivityProvider$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lde/ffuf/in_app_update/ActivityProvider;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    return-object p0
.end method

.method public static final synthetic access$getAppUpdateInfo$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-object p0
.end method

.method public static final synthetic access$getAppUpdateManager$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-object p0
.end method

.method public static final synthetic access$getAppUpdateType$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Ljava/lang/Integer;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateType:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;)Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 0

    .line 32
    iget-object p0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object p0
.end method

.method public static final synthetic access$setAppUpdateInfo$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-void
.end method

.method public static final synthetic access$setAppUpdateType$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Ljava/lang/Integer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateType:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setUpdateResult$p(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method private final addState(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->installStateSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final checkAppState(Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    const-string v1, "Call checkForUpdate first!"

    const-string v2, "REQUIRE_CHECK_FOR_UPDATE"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 213
    :cond_1
    invoke-interface {p1, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 212
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p2, "REQUIRE_FOREGROUND_ACTIVITY"

    const-string v0, "in_app_update requires a foreground activity"

    .line 210
    invoke-interface {p1, p2, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 207
    :cond_3
    invoke-interface {p1, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final checkForUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v0, v1}, Lde/ffuf/in_app_update/ActivityProvider;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 256
    :cond_2
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lde/ffuf/in_app_update/ActivityProvider;->activity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 259
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "getAppUpdateInfo(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lde/ffuf/in_app_update/InAppUpdatePlugin$checkForUpdate$2;

    invoke-direct {v1, p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$checkForUpdate$2;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 279
    new-instance v1, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_3
    const-string v0, "REQUIRE_FOREGROUND_ACTIVITY"

    const-string v2, "in_app_update requires a foreground activity"

    .line 250
    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkForUpdate$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final checkForUpdate$lambda$7(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TASK_FAILURE"

    invoke-interface {p0, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final completeFlexibleUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 244
    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$completeFlexibleUpdate$1;

    invoke-direct {v0, p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin$completeFlexibleUpdate$1;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkAppState(Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final onActivityResumed$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onAttachedToEngine$lambda$0(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->addState(I)V

    return-void
.end method

.method private final performImmediateUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 193
    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;

    invoke-direct {v0, p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$performImmediateUpdate$1;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkAppState(Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final startFlexibleUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 218
    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;

    invoke-direct {v0, p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, v0}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkAppState(Lio/flutter/plugin/common/MethodChannel$Result;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/16 p3, 0x4fc

    if-ne p1, p3, :cond_b

    .line 95
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateType:Ljava/lang/Integer;

    const-string p3, "IN_APP_UPDATE_FAILED"

    const-string v0, "USER_DENIED_UPDATE"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    const-string p2, "Some other error prevented either the user from providing consent or the update to proceed."

    invoke-interface {p1, p3, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 107
    :cond_4
    :goto_0
    iput-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return v1

    .line 109
    :cond_5
    :goto_1
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateType:Ljava/lang/Integer;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_b

    if-eqz p2, :cond_9

    if-eq p2, v1, :cond_7

    goto :goto_2

    .line 116
    :cond_7
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_8
    iput-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_2

    .line 112
    :cond_9
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz p1, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_a
    iput-object v2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->updateResult:Lio/flutter/plugin/common/MethodChannel$Result;

    :goto_2
    return v1

    :cond_b
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;

    invoke-direct {v1, p0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$onActivityResumed$1;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;Landroid/app/Activity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "activityPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onAttachedToActivity$1;

    invoke-direct {v0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$onAttachedToActivity$1;-><init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    check-cast v0, Lde/ffuf/in_app_update/ActivityProvider;

    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "de.ffuf.in_app_update/methods"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 59
    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 61
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "de.ffuf.in_app_update/stateEvents"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->event:Lio/flutter/plugin/common/EventChannel;

    .line 62
    move-object p1, p0

    check-cast p1, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 64
    new-instance p1, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda3;-><init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;)V

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    .line 67
    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->registerListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->installStateSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 72
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->event:Lio/flutter/plugin/common/EventChannel;

    if-nez p1, :cond_1

    const-string p1, "event"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 73
    iget-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->installStateUpdatedListener:Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    if-nez v1, :cond_2

    const-string v1, "installStateUpdatedListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    :cond_3
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 46
    iput-object p2, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->installStateSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "completeFlexibleUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->completeFlexibleUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "checkForUpdate"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0, p2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->checkForUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "startFlexibleUpdate"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, p2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->startFlexibleUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "performImmediateUpdate"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, p2}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->performImmediateUpdate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 89
    :cond_4
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fa969c7 -> :sswitch_3
        -0x5bdc4e8a -> :sswitch_2
        -0x4e826536 -> :sswitch_1
        -0xb88a5f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "activityPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;

    invoke-direct {v0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$onReattachedToActivityForConfigChanges$1;-><init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    check-cast v0, Lde/ffuf/in_app_update/ActivityProvider;

    iput-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin;->activityProvider:Lde/ffuf/in_app_update/ActivityProvider;

    return-void
.end method
