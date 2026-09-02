.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/location/LocationServiceListener;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/location/LocationServiceListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;->f$0:Lcom/baseflow/geolocator/location/LocationServiceListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda4;->f$0:Lcom/baseflow/geolocator/location/LocationServiceListener;

    invoke-static {v0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$isLocationServiceEnabled$0(Lcom/baseflow/geolocator/location/LocationServiceListener;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
