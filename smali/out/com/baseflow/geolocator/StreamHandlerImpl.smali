.class Lcom/baseflow/geolocator/StreamHandlerImpl;
.super Ljava/lang/Object;
.source "StreamHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/EventChannel;

.field private context:Landroid/content/Context;

.field private foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

.field private geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private locationClient:Lcom/baseflow/geolocator/location/LocationClient;

.field private final permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;


# direct methods
.method public constructor <init>(Lcom/baseflow/geolocator/permission/PermissionManager;Lcom/baseflow/geolocator/location/GeolocationManager;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 38
    iput-object p2, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    return-void
.end method

.method private disposeListeners(Z)V
    .registers 4

    const-string v0, "Geolocator position updates stopped"

    const-string v1, "FlutterGeolocator"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->canStopLocationService(Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 154
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopLocationService()V

    .line 155
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->disableBackgroundMode()V

    goto :goto_21

    :cond_1c
    const-string p1, "There is still another flutter engine connected, not stopping location service"

    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_21
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_2f

    .line 160
    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    :cond_2f
    return-void
.end method

.method static synthetic lambda$onListen$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V
    .registers 2

    .line 140
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onListen$1(Lio/flutter/plugin/common/EventChannel$EventSink;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .registers 4

    .line 142
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 2

    const/4 p1, 0x1

    .line 148
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/StreamHandlerImpl;->disposeListeners(Z)V

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .registers 7

    const/4 v0, 0x0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->permissionManager:Lcom/baseflow/geolocator/permission/PermissionManager;

    iget-object v2, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 94
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 95
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 96
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_1 .. :try_end_1a} :catch_8e

    return-void

    .line 108
    :cond_1b
    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    const-string v2, "FlutterGeolocator"

    if-nez v1, :cond_27

    const-string p1, "Location background service has not started correctly"

    .line 109
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_27
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3e

    const-string v1, "forceLocationManager"

    .line 116
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 117
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 119
    :goto_3f
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;

    move-result-object v3

    if-eqz p1, :cond_51

    const-string v0, "foregroundNotificationConfig"

    .line 125
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 124
    invoke-static {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    move-result-object v0

    :cond_51
    if-eqz v0, :cond_63

    const-string p1, "Geolocator position updates started using Android foreground service"

    .line 128
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {p1, v1, v3, p2}, Lcom/baseflow/geolocator/GeolocatorLocationService;->startLocationService(ZLcom/baseflow/geolocator/location/LocationOptions;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    .line 130
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    invoke-virtual {p1, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->enableBackgroundMode(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    goto :goto_8d

    :cond_63
    const-string p1, "Geolocator position updates started"

    .line 132
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    invoke-virtual {p1, v0, v1, v3}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 137
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    new-instance v3, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/baseflow/geolocator/StreamHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    :goto_8d
    return-void

    .line 101
    :catch_8e
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 102
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    .line 103
    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_d

    .line 48
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_d

    .line 49
    invoke-virtual {p0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->stopListening()V

    .line 52
    :cond_d
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setForegroundLocationService(Lcom/baseflow/geolocator/GeolocatorLocationService;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->foregroundLocationService:Lcom/baseflow/geolocator/GeolocatorLocationService;

    return-void
.end method

.method startListening(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-eqz v0, :cond_e

    const-string v0, "FlutterGeolocator"

    const-string v1, "Setting a event call handler before the last was disposed."

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->stopListening()V

    .line 68
    :cond_e
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    const-string v1, "flutter.baseflow.com/geolocator_updates_android"

    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    .line 69
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 70
    iput-object p1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method stopListening()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_c

    const-string v0, "FlutterGeolocator"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/baseflow/geolocator/StreamHandlerImpl;->disposeListeners(Z)V

    .line 85
    iget-object v0, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 86
    iput-object v1, p0, Lcom/baseflow/geolocator/StreamHandlerImpl;->channel:Lio/flutter/plugin/common/EventChannel;

    return-void
.end method
