.class public final synthetic Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda3;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onSuccess(Z)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$$ExternalSyntheticLambda3;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
