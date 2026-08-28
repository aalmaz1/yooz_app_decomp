.class public final synthetic Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/baseflow/geolocator/location/PositionChangedCallback;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method


# virtual methods
.method public final onPositionChanged(Landroid/location/Location;)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-static {v0, p1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->lambda$onListen$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V

    return-void
.end method
