.class public Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private final googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

.field private methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;


# direct methods
.method static bridge synthetic -$$Nest$munregisterPlugin(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V
    .registers 1

    invoke-direct {p0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->unregisterPlugin()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    invoke-direct {v0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;-><init>()V

    iput-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    return-void
.end method

.method private registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 5

    .line 73
    new-instance v0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    iget-object v1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->googleApiAvailabilityManager:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;

    invoke-direct {v0, p1, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;-><init>(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;)V

    iput-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    .line 74
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "flutter.baseflow.com/google_api_availability_android/methods"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 75
    iget-object p2, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .registers 4

    .line 59
    new-instance v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;

    invoke-direct {v0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;-><init>()V

    .line 60
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 61
    iget-object v1, v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    .line 63
    new-instance v1, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;

    invoke-direct {v1, v0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;-><init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V

    invoke-interface {p0, v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method private unregisterPlugin()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 80
    iput-object v1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    .line 50
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->registerPlugin(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->unregisterPlugin()V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->methodCallHandler:Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->setActivity(Landroid/app/Activity;)V

    return-void
.end method
