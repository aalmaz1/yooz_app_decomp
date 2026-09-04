.class public Lcom/baseflow/geolocator/location/LocationAccuracyManager;
.super Ljava/lang/Object;
.source "LocationAccuracyManager.java"


# static fields
.field private static locationAccuracyManagerInstance:Lcom/baseflow/geolocator/location/LocationAccuracyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baseflow/geolocator/location/LocationAccuracyManager;
    .locals 2

    const-class v0, Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracyManager;->locationAccuracyManagerInstance:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    invoke-direct {v1}, Lcom/baseflow/geolocator/location/LocationAccuracyManager;-><init>()V

    sput-object v1, Lcom/baseflow/geolocator/location/LocationAccuracyManager;->locationAccuracyManagerInstance:Lcom/baseflow/geolocator/location/LocationAccuracyManager;

    .line 23
    :cond_0
    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracyManager;->locationAccuracyManagerInstance:Lcom/baseflow/geolocator/location/LocationAccuracyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getLocationAccuracy(Landroid/content/Context;Lcom/baseflow/geolocator/errors/ErrorCallback;)Lcom/baseflow/geolocator/location/LocationAccuracyStatus;
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 27
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    sget-object p1, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->precise:Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    return-object p1

    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 30
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 33
    sget-object p1, Lcom/baseflow/geolocator/location/LocationAccuracyStatus;->reduced:Lcom/baseflow/geolocator/location/LocationAccuracyStatus;

    return-object p1

    .line 35
    :cond_1
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p2, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    const/4 p1, 0x0

    return-object p1
.end method
