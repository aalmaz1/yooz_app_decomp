.class Lcom/baseflow/geolocator/location/FusedLocationClient;
.super Ljava/lang/Object;
.source "FusedLocationClient.java"

# interfaces
.implements Lcom/baseflow/geolocator/location/LocationClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterGeolocator"


# instance fields
.field private final activityRequestCode:I

.field private final context:Landroid/content/Context;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private final fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private final nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

.field private positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$8K-X19RLO5n1afenMDD3OX_5w9M(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$startPositionUpdates$3(Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BkkYBV8BAA1_TpPBUCbkZxETMP8(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$startPositionUpdates$2(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgeterrorCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/errors/ErrorCallback;
    .registers 1

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfusedLocationProviderClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .registers 1

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/google/android/gms/location/LocationCallback;
    .registers 1

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnmeaClient(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/NmeaClient;
    .registers 1

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpositionChangedCallback(Lcom/baseflow/geolocator/location/FusedLocationClient;)Lcom/baseflow/geolocator/location/PositionChangedCallback;
    .registers 1

    iget-object p0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 51
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    .line 52
    new-instance v0, Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {v0, p1, p2}, Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    .line 53
    invoke-direct {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->generateActivityRequestCode()I

    move-result v0

    iput v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    .line 55
    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$1;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/baseflow/geolocator/location/LocationOptions;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-void
.end method

.method private static buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_b

    .line 99
    invoke-static {p0}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p0

    return-object p0

    .line 102
    :cond_b
    new-instance v0, Lcom/google/android/gms/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(J)V

    if-eqz p0, :cond_35

    .line 105
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 106
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 107
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 108
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 111
    :cond_35
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method private static buildLocationRequestDeprecated(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .registers 6

    .line 116
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    if-eqz p0, :cond_2a

    .line 119
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;

    move-result-object v1

    invoke-static {v1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 120
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 121
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getTimeInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 122
    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationOptions;->getDistanceFilter()J

    move-result-wide v1

    long-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    :cond_2a
    return-object v0
.end method

.method private static buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;
    .registers 2

    .line 130
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 131
    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized generateActivityRequestCode()I
    .registers 3

    monitor-enter p0

    .line 150
    :try_start_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/high16 v1, 0x10000

    .line 151
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$getLastKnownPosition$1(Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .registers 3

    const-string p1, "Geolocator"

    const-string v0, "Error trying to get last the last known GPS location"

    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_e

    .line 197
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_e
    return-void
.end method

.method static synthetic lambda$isLocationServiceEnabled$0(Lcom/baseflow/geolocator/location/LocationServiceListener;Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    .line 168
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_b

    .line 169
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    .line 172
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    if-eqz p1, :cond_39

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResponse;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 175
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsStates;->isGpsUsable()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v0

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    if-eqz p1, :cond_2e

    .line 177
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsStates;->isNetworkLocationUsable()Z

    move-result p1

    if-eqz p1, :cond_2e

    move p1, v0

    goto :goto_2f

    :cond_2e
    move p1, v1

    :goto_2f
    if-nez v2, :cond_35

    if-eqz p1, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 178
    :cond_35
    :goto_35
    invoke-interface {p0, v0}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceResult(Z)V

    goto :goto_3e

    .line 180
    :cond_39
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p0, p1}, Lcom/baseflow/geolocator/location/LocationServiceListener;->onLocationServiceError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :goto_3e
    return-void
.end method

.method private synthetic lambda$startPositionUpdates$2(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .registers 2

    .line 240
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    return-void
.end method

.method private synthetic lambda$startPositionUpdates$3(Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V
    .registers 6

    .line 243
    instance-of v0, p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_27

    if-nez p1, :cond_c

    .line 247
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 251
    :cond_c
    check-cast p3, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 252
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ResolvableApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_21

    .line 257
    :try_start_15
    iget v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_1a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_3c

    .line 259
    :catch_1b
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    goto :goto_3c

    .line 262
    :cond_21
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    goto :goto_3c

    .line 265
    :cond_27
    check-cast p3, Lcom/google/android/gms/common/api/ApiException;

    .line 266
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/16 p3, 0x2136

    if-ne p1, p3, :cond_37

    .line 268
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    goto :goto_3c

    .line 272
    :cond_37
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :goto_3c
    return-void
.end method

.method private requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V
    .registers 5

    .line 156
    invoke-static {p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->start()V

    .line 158
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 158
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static toPriority(Lcom/baseflow/geolocator/location/LocationAccuracy;)I
    .registers 2

    .line 137
    sget-object v0, Lcom/baseflow/geolocator/location/FusedLocationClient$2;->$SwitchMap$com$baseflow$geolocator$location$LocationAccuracy:[I

    invoke-virtual {p0}, Lcom/baseflow/geolocator/location/LocationAccuracy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/16 p0, 0x64

    return p0

    :cond_14
    const/16 p0, 0x66

    return p0

    :cond_17
    const/16 p0, 0x68

    return p0

    :cond_1a
    const/16 p0, 0x69

    return p0
.end method


# virtual methods
.method public getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 191
    invoke-interface {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/PositionChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 193
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;-><init>(Lcom/baseflow/geolocator/location/LocationServiceListener;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onActivityResult(II)Z
    .registers 5

    .line 203
    iget v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->activityRequestCode:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_24

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1b

    .line 205
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz p1, :cond_1a

    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-nez p2, :cond_15

    goto :goto_1a

    .line 211
    :cond_15
    invoke-direct {p0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->requestPositionUpdates(Lcom/baseflow/geolocator/location/LocationOptions;)V

    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    return v1

    .line 215
    :cond_1b
    iget-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p1, :cond_24

    .line 216
    sget-object p2, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, p2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_24
    return v1
.end method

.method public startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .registers 5

    .line 230
    iput-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->positionChangedCallback:Lcom/baseflow/geolocator/location/PositionChangedCallback;

    .line 231
    iput-object p3, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 233
    iget-object p2, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-static {p2}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationRequest(Lcom/baseflow/geolocator/location/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p2

    .line 234
    invoke-static {p2}, Lcom/baseflow/geolocator/location/FusedLocationClient;->buildLocationSettingsRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object p2

    .line 236
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v0

    .line 238
    invoke-interface {v0, p2}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;)V

    .line 239
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p3}, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda3;-><init>(Lcom/baseflow/geolocator/location/FusedLocationClient;Landroid/app/Activity;Lcom/baseflow/geolocator/errors/ErrorCallback;)V

    .line 241
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public stopPositionUpdates()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->nmeaClient:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/NmeaClient;->stop()V

    .line 280
    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
