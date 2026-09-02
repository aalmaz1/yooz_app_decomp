.class public interface abstract Lcom/baseflow/geolocator/location/LocationClient;
.super Ljava/lang/Object;
.source "LocationClient.java"


# virtual methods
.method public checkLocationService(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "location"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 26
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "network"

    .line 27
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez v0, :cond_1b

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public abstract getLastKnownPosition(Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract isLocationServiceEnabled(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
.end method

.method public abstract onActivityResult(II)Z
.end method

.method public abstract startPositionUpdates(Landroid/app/Activity;Lcom/baseflow/geolocator/location/PositionChangedCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
.end method

.method public abstract stopPositionUpdates()V
.end method
