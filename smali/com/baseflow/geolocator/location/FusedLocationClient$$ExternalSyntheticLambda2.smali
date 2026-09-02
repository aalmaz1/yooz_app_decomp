.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/location/FusedLocationClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda2;->f$0:Lcom/baseflow/geolocator/location/FusedLocationClient;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {v0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->$r8$lambda$BkkYBV8BAA1_TpPBUCbkZxETMP8(Lcom/baseflow/geolocator/location/FusedLocationClient;Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
