.class Lcom/baseflow/geolocator/location/LocationManagerClient;
.super Ljava/lang/Object;
.source "LocationManagerClient.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationClient;
.implements Landroidx/core/location/LocationListenerCompat;


# static fields
.field private static final TWO_MINUTES:J = 0x1d4c0L


# instance fields
.field public context:Landroid/content/Context;

.field private currentBestLocation:Landroid/location/Location;

.field private currentLocationProvider:Ljava/lang/String;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private isListening:Z

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private final nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

.field private positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    const-string v0, "location"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    .line 41
    iput-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 42
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {v0, p1, p2}, Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    return-void
.end method

.method private static accuracyToQuality(Lcom/baseflow/geolocator/location/LocationAccuracy;)I
    .registers 2

    .line 100
    sget-object v0, Lcom/baseflow/geolocator/location/LocationManagerClient$1;->$SwitchMap$com$baseflow$geolocator$location$LocationAccuracy:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 p0, 0x66

    return p0

    :cond_1a
    const/16 p0, 0x64

    return p0

    :cond_1d
    const/16 p0, 0x68

    return p0
.end method

.method private static determineProvider(Landroid/location/LocationManager;Lcom/baseflow/geolocator/location/LocationAccuracy;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    .line 84
    sget-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    if-ne p1, v0, :cond_c

    const-string p0, "passive"

    return-object p0

    :cond_c
    const-string p1, "fused"

    .line 86
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1b

    return-object p1

    :cond_1b
    const-string p1, "gps"

    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p1

    :cond_24
    const-string p1, "network"

    .line 90
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    return-object p1

    .line 92
    :cond_2d
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    const/4 p1, 0x0

    .line 93
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 49
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_17

    move v3, v0

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    const-wide/32 v5, -0x1d4c0

    cmp-long v5, v1, v5

    if-gez v5, :cond_21

    move v5, v0

    goto :goto_22

    :cond_21
    move v5, v4

    :goto_22
    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_2a

    move v1, v0

    goto :goto_2b

    :cond_2a
    move v1, v4

    :goto_2b
    if-eqz v3, :cond_2e

    return v0

    :cond_2e
    if-eqz v5, :cond_31

    return v4

    .line 58
    :cond_31
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v5, v2, v3

    if-lez v5, :cond_43

    move v5, v0

    goto :goto_44

    :cond_43
    move v5, v4

    :goto_44
    cmpg-float v3, v2, v3

    if-gez v3, :cond_4a

    move v3, v0

    goto :goto_4b

    :cond_4a
    move v3, v4

    :goto_4b
    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_53

    move v2, v0

    goto :goto_54

    :cond_53
    move v2, v4

    .line 64
    :goto_54
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_67

    .line 65
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_68

    :cond_67
    move p0, v4

    :goto_68
    if-eqz v3, :cond_6b

    return v0

    :cond_6b
    if-eqz v1, :cond_70

    if-nez v5, :cond_70

    return v0

    :cond_70
    if-eqz v1, :cond_77

    if-nez v2, :cond_77

    if-eqz p0, :cond_77

    return v0

    :cond_77
    return v4
.end method


# virtual methods
.method public getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .registers 6

    .line 129
    iget-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 133
    invoke-static {v1, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v0, v1

    goto :goto_c

    .line 138
    :cond_28
    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V

    return-void
.end method

.method public isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 117
    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    return-void

    .line 121
    :cond_9
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->checkLocationService(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    return-void
.end method

.method public onActivityResult(II)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .registers 3

    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/baseflow/geolocator/location/LocationManagerClient;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 210
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    .line 212
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    if-eqz v0, :cond_1b

    .line 213
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0, p1}, Lcom/baseflow/geolocator/location/NmeaClient;->enrichExtrasWithNmea(Landroid/location/Location;)V

    .line 214
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentBestLocation:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/location/PositionChangedCallback;->onPositionChanged(Landroid/location/Location;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 217
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 243
    iget-boolean p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    if-eqz p1, :cond_11

    .line 244
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 247
    :cond_11
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p1, :cond_1a

    .line 248
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, v0}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_1a
    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    .line 230
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_c

    :cond_7
    if-nez p2, :cond_c

    .line 232
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->onProviderDisabled(Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .registers 9

    .line 153
    iget-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->checkLocationService(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 154
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 158
    :cond_e
    iput-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    .line 159
    iput-object p3, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 161
    sget-object p1, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 166
    iget-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz p2, :cond_3b

    .line 167
    invoke-virtual {p2}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide p1

    long-to-float p1, p1

    .line 168
    iget-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {p2}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object p2

    .line 169
    sget-object v0, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    if-ne p2, v0, :cond_2d

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_33

    .line 171
    :cond_2d
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v0

    .line 172
    :goto_33
    invoke-static {p2}, Lcom/baseflow/geolocator/location/LocationManagerClient;->accuracyToQuality(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v2

    move-object v4, p2

    move p2, p1

    move-object p1, v4

    goto :goto_40

    :cond_3b
    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    const/16 v2, 0x66

    .line 175
    :goto_40
    iget-object v3, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-static {v3, p1}, Lcom/baseflow/geolocator/location/LocationManagerClient;->determineProvider(Landroid/location/LocationManager;Lcom/baseflow/geolocator/location/LocationAccuracy;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    if-nez p1, :cond_50

    .line 178
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 182
    :cond_50
    new-instance p1, Landroidx/core/location/LocationRequestCompat$Builder;

    invoke-direct {p1, v0, v1}, Landroidx/core/location/LocationRequestCompat$Builder;-><init>(J)V

    .line 183
    invoke-virtual {p1, p2}, Landroidx/core/location/LocationRequestCompat$Builder;->setMinUpdateDistanceMeters(F)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v0, v1}, Landroidx/core/location/LocationRequestCompat$Builder;->setMinUpdateIntervalMillis(J)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v2}, Landroidx/core/location/LocationRequestCompat$Builder;->setQuality(I)Landroidx/core/location/LocationRequestCompat$Builder;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroidx/core/location/LocationRequestCompat$Builder;->build()Landroidx/core/location/LocationRequestCompat;

    move-result-object p1

    const/4 p2, 0x1

    .line 188
    iput-boolean p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    .line 189
    iget-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {p2}, Lcom/baseflow/geolocator/location/NmeaClient;->start()V

    .line 191
    iget-object p2, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    iget-object p3, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->currentLocationProvider:Ljava/lang/String;

    .line 196
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 191
    invoke-static {p2, p3, p1, p0, v0}, Landroidx/core/location/LocationManagerCompat;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V

    return-void
.end method

.method public stopPositionUpdates()V
    .registers 2

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->isListening:Z

    .line 203
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->stop()V

    .line 204
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationManagerClient;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
