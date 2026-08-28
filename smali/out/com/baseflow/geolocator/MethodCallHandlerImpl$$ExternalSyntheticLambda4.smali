.class public final synthetic Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/geolocator/errors/ErrorCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/geolocator/MethodCallHandlerImpl$$ExternalSyntheticLambda4;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, p1}, Lcom/baseflow/geolocator/MethodCallHandlerImpl;->lambda$onRequestPermission$1(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void
.end method
