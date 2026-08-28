.class public Lcom/baseflow/geolocator/location/NmeaClient;
.super Ljava/lang/Object;
.source "NmeaClient.java"


# static fields
.field public static final GNSS_SATELLITES_USED_IN_FIX_EXTRA:Ljava/lang/String; = "geolocator_mslSatellitesUsedInFix"

.field public static final GNSS_SATELLITE_COUNT_EXTRA:Ljava/lang/String; = "geolocator_mslSatelliteCount"

.field public static final NMEA_ALTITUDE_EXTRA:Ljava/lang/String; = "geolocator_mslAltitude"


# instance fields
.field private final context:Landroid/content/Context;

.field private gnssCallback:Landroid/location/GnssStatus$Callback;

.field private gnss_satellite_count:D

.field private gnss_satellites_used_in_fix:D

.field private lastNmeaMessage:Ljava/lang/String;

.field private lastNmeaMessageTime:Ljava/util/Calendar;

.field private listenerAdded:Z

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

.field private nmeaMessageListener:Landroid/location/OnNmeaMessageListener;


# direct methods
.method public static synthetic $r8$lambda$W39dO37VItqmlyEFYcfUXJekSNs(Lcom/baseflow/geolocator/location/NmeaClient;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baseflow/geolocator/location/NmeaClient;->lambda$new$0(Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetgnss_satellite_count(Lcom/baseflow/geolocator/location/NmeaClient;)D
    .registers 3

    iget-wide v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetgnss_satellites_used_in_fix(Lcom/baseflow/geolocator/location/NmeaClient;)D
    .registers 3

    iget-wide v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputgnss_satellite_count(Lcom/baseflow/geolocator/location/NmeaClient;D)V
    .registers 3

    iput-wide p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgnss_satellites_used_in_fix(Lcom/baseflow/geolocator/location/NmeaClient;D)V
    .registers 3

    iput-wide p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    .line 42
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    const-string p2, "location"

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    .line 47
    new-instance p1, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/location/NmeaClient$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/geolocator/location/NmeaClient;)V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    .line 55
    new-instance p1, Lcom/baseflow/geolocator/location/NmeaClient$1;

    invoke-direct {p1, p0}, Lcom/baseflow/geolocator/location/NmeaClient$1;-><init>(Lcom/baseflow/geolocator/location/NmeaClient;)V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;J)V
    .registers 4

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string p3, "^\\$..GGA.*$"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 50
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    :cond_14
    return-void
.end method


# virtual methods
.method public enrichExtrasWithNmea(Landroid/location/Location;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_e

    .line 105
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 107
    :cond_e
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "geolocator_mslSatelliteCount"

    iget-wide v2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellite_count:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 108
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "geolocator_mslSatellitesUsedInFix"

    iget-wide v2, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnss_satellites_used_in_fix:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 110
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_8d

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, -0x5

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 114
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessageTime:Ljava/util/Calendar;

    if-eqz v1, :cond_45

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    return-void

    .line 119
    :cond_45
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/location/LocationOptions;->isUseMSLAltitude()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 120
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    aget-object v1, v0, v1

    .line 125
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->lastNmeaMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^\\$..GGA.*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    array-length v1, v0

    const/16 v2, 0x9

    if-le v1, v2, :cond_8d

    .line 126
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 127
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 128
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_84

    .line 129
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 131
    :cond_84
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "geolocator_mslAltitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_8d
    return-void
.end method

.method public start()V
    .registers 4

    .line 72
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    if-eqz v0, :cond_5

    return-void

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_29

    .line 77
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_29

    .line 78
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 80
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 81
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    :cond_29
    return-void
.end method

.method public stop()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationOptions:Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v0, :cond_17

    .line 90
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_17

    .line 91
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->nmeaMessageListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 92
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient;->gnssCallback:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/baseflow/geolocator/location/NmeaClient;->listenerAdded:Z

    :cond_17
    return-void
.end method
