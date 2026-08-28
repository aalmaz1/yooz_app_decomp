.class public Lcom/baseflow/geolocator/GeolocatorLocationService;
.super Landroid/app/Service;
.source "GeolocatorLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "geolocator_channel_01"

.field private static final ONGOING_NOTIFICATION_ID:I = 0x12697

.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final WAKELOCK_TAG:Ljava/lang/String;

.field private final WIFILOCK_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

.field private final binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

.field private connectedEngines:I

.field private geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

.field private isForeground:Z

.field private listenerCount:I

.field private locationClient:Lcom/baseflow/geolocator/location/LocationClient;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "GeolocatorLocationService:Wakelock"

    .line 33
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WAKELOCK_TAG:Ljava/lang/String;

    const-string v0, "GeolocatorLocationService:WifiLock"

    .line 34
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->WIFILOCK_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    invoke-direct {v0, p0, p0}, Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;-><init>(Lcom/baseflow/geolocator/GeolocatorLocationService;Lcom/baseflow/geolocator/GeolocatorLocationService;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 38
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 39
    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    .line 41
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 44
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 47
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    return-void
.end method

.method private getWifiLockType()I
    .registers 3

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x4

    return v0
.end method

.method static synthetic lambda$startLocationService$0(Lio/flutter/plugin/common/EventChannel$EventSink;Landroid/location/Location;)V
    .registers 2

    .line 121
    invoke-static {p1}, Lcom/baseflow/geolocator/location/LocationMapper;->toHashMap(Landroid/location/Location;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$startLocationService$1(Lio/flutter/plugin/common/EventChannel$EventSink;Lcom/baseflow/geolocator/errors/ErrorCodes;)V
    .registers 4

    .line 123
    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->toDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .registers 6

    .line 196
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    .line 197
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWakeLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 199
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_29

    const/4 v2, 0x1

    const-string v3, "GeolocatorLocationService:Wakelock"

    .line 201
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 203
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    :cond_29
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->isEnableWifiLock()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 208
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_51

    .line 210
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getWifiLockType()I

    move-result v0

    const-string v2, "GeolocatorLocationService:WifiLock"

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 211
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 212
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_51
    return-void
.end method

.method private releaseWakeLocks()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 186
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    :cond_12
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 189
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 190
    iput-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_23
    return-void
.end method


# virtual methods
.method public canStopLocationService(Z)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 88
    iget p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    if-ne p1, v1, :cond_9

    move v0, v1

    :cond_9
    return v0

    .line 90
    :cond_a
    iget p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    if-nez p1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    if-eqz v0, :cond_c

    .line 170
    iget-boolean v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    invoke-virtual {v0, p1, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;Z)V

    .line 171
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    :cond_c
    return-void
.end method

.method public disableBackgroundMode()V
    .registers 3

    .line 155
    iget-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    if-eqz v0, :cond_18

    const-string v0, "FlutterGeolocator"

    const-string v1, "Stop service in foreground."

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopForeground(I)V

    .line 162
    invoke-direct {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->releaseWakeLocks()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    :cond_18
    return-void
.end method

.method public enableBackgroundMode(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V
    .registers 7

    .line 136
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    const-string v1, "FlutterGeolocator"

    if-eqz v0, :cond_f

    const-string v0, "Service already in foreground mode."

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->changeNotificationOptions(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    goto :goto_3b

    :cond_f
    const-string v0, "Start service in foreground mode."

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 144
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "geolocator_channel_01"

    const v3, 0x12697

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, p1}, Lcom/baseflow/geolocator/location/BackgroundNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    .line 145
    invoke-virtual {p1}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/location/BackgroundNotification;->updateChannel(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/BackgroundNotification;->build()Landroid/app/Notification;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v3, v0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->isForeground:Z

    .line 150
    :goto_3b
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/GeolocatorLocationService;->obtainWakeLocks(Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;)V

    return-void
.end method

.method public flutterEngineConnected()V
    .registers 3

    .line 95
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flutter engine connected. Connected engine count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public flutterEngineDisconnected()V
    .registers 3

    .line 101
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flutter engine disconnected. Connected engine count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->connectedEngines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterGeolocator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string p1, "FlutterGeolocator"

    const-string v0, "Binding to location service."

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->binder:Lcom/baseflow/geolocator/GeolocatorLocationService$LocalBinder;

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "FlutterGeolocator"

    const-string v1, "Creating service."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "Destroying location service."

    const-string v1, "FlutterGeolocator"

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->stopLocationService()V

    .line 78
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->disableBackgroundMode()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    .line 80
    iput-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->backgroundNotification:Lcom/baseflow/geolocator/location/BackgroundNotification;

    const-string v0, "Destroyed location service."

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "FlutterGeolocator"

    const-string v1, "Unbinding from location service."

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setGeolocationManager(Lcom/baseflow/geolocator/location/GeolocationManager;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    return-void
.end method

.method public startLocationService(ZLcom/baseflow/geolocator/location/LocationOptions;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .registers 7

    .line 110
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    .line 111
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v0, :cond_2f

    .line 114
    invoke-virtual {p0}, Lcom/baseflow/geolocator/GeolocatorLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 113
    invoke-virtual {v0, v1, p1, p2}, Lcom/baseflow/geolocator/location/GeolocationManager;->createLocationClient(Landroid/content/Context;ZLcom/baseflow/geolocator/location/LocationOptions;)Lcom/baseflow/geolocator/location/LocationClient;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    .line 118
    iget-object p2, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    new-instance v2, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3}, Lcom/baseflow/geolocator/GeolocatorLocationService$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/baseflow/geolocator/location/GeolocationManager;->startPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    :cond_2f
    return-void
.end method

.method public stopLocationService()V
    .registers 3

    .line 128
    iget v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->listenerCount:I

    const-string v0, "FlutterGeolocator"

    const-string v1, "Stopping location service."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->locationClient:Lcom/baseflow/geolocator/location/LocationClient;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/baseflow/geolocator/GeolocatorLocationService;->geolocationManager:Lcom/baseflow/geolocator/location/GeolocationManager;

    if-eqz v1, :cond_18

    .line 131
    invoke-virtual {v1, v0}, Lcom/baseflow/geolocator/location/GeolocationManager;->stopPositionUpdates(Lcom/baseflow/geolocator/location/LocationClient;)V

    :cond_18
    return-void
.end method
