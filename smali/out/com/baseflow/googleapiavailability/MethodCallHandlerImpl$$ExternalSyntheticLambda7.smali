.class public final synthetic Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda7;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda7;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, p1, p2}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->lambda$onMethodCall$1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
