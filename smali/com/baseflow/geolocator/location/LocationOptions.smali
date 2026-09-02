.class public Lcom/baseflow/geolocator/location/LocationOptions;
.super Ljava/lang/Object;
.source "LocationOptions.java"


# static fields
.field public static final USE_MSL_ALTITUDE_EXTRA:Ljava/lang/String; = "geolocator_use_mslAltitude"


# instance fields
.field private final accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

.field private final distanceFilter:J

.field private final timeInterval:J

.field private final useMSLAltitude:Z


# direct methods
.method private constructor <init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V
    .registers 7

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/baseflow/geolocator/location/LocationOptions;->accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

    .line 16
    iput-wide p2, p0, Lcom/baseflow/geolocator/location/LocationOptions;->distanceFilter:J

    .line 17
    iput-wide p4, p0, Lcom/baseflow/geolocator/location/LocationOptions;->timeInterval:J

    .line 18
    iput-boolean p6, p0, Lcom/baseflow/geolocator/location/LocationOptions;->useMSLAltitude:Z

    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/LocationOptions;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/LocationOptions;"
        }
    .end annotation

    if-nez p0, :cond_10

    .line 23
    new-instance p0, Lcom/baseflow/geolocator/location/LocationOptions;

    sget-object v1, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baseflow/geolocator/location/LocationOptions;-><init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V

    return-object p0

    :cond_10
    const-string v0, "accuracy"

    .line 26
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "distanceFilter"

    .line 27
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "timeInterval"

    .line 28
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "useMSLAltitude"

    .line 29
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 31
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->best:Lcom/baseflow/geolocator/location/LocationAccuracy;

    const/4 v4, 0x1

    if-eqz v0, :cond_55

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_53

    if-eq v0, v4, :cond_50

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4d

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_47

    goto :goto_55

    .line 48
    :cond_47
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->bestForNavigation:Lcom/baseflow/geolocator/location/LocationAccuracy;

    goto :goto_55

    .line 45
    :cond_4a
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->high:Lcom/baseflow/geolocator/location/LocationAccuracy;

    goto :goto_55

    .line 42
    :cond_4d
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->medium:Lcom/baseflow/geolocator/location/LocationAccuracy;

    goto :goto_55

    .line 39
    :cond_50
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->low:Lcom/baseflow/geolocator/location/LocationAccuracy;

    goto :goto_55

    .line 36
    :cond_53
    sget-object v3, Lcom/baseflow/geolocator/location/LocationAccuracy;->lowest:Lcom/baseflow/geolocator/location/LocationAccuracy;

    :cond_55
    :goto_55
    move-object v6, v3

    .line 56
    new-instance v0, Lcom/baseflow/geolocator/location/LocationOptions;

    if-eqz v1, :cond_60

    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    goto :goto_62

    :cond_60
    const-wide/16 v7, 0x0

    :goto_62
    if-eqz v2, :cond_6a

    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_6c

    :cond_6a
    const-wide/16 v1, 0x1388

    :goto_6c
    move-wide v9, v1

    if-eqz p0, :cond_76

    .line 60
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_77

    :cond_76
    const/4 v4, 0x0

    :goto_77
    move v11, v4

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/baseflow/geolocator/location/LocationOptions;-><init>(Lcom/baseflow/geolocator/location/LocationAccuracy;JJZ)V

    return-object v0
.end method


# virtual methods
.method public getAccuracy()Lcom/baseflow/geolocator/location/LocationAccuracy;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->accuracy:Lcom/baseflow/geolocator/location/LocationAccuracy;

    return-object v0
.end method

.method public getDistanceFilter()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->distanceFilter:J

    return-wide v0
.end method

.method public getTimeInterval()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->timeInterval:J

    return-wide v0
.end method

.method public isUseMSLAltitude()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/LocationOptions;->useMSLAltitude:Z

    return v0
.end method
