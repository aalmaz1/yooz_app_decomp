.class Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$plugin:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;


# direct methods
.method constructor <init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;->val$plugin:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin$1;->val$plugin:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;

    invoke-static {p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;->-$$Nest$munregisterPlugin(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityPlugin;)V

    const/4 p1, 0x0

    return p1
.end method
