.class public final synthetic Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/geolocator/errors/ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/geolocator/errors/ErrorCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/geolocator/location/FusedLocationClient$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/geolocator/errors/ErrorCallback;

    invoke-static {v0, p1}, Lcom/baseflow/geolocator/location/FusedLocationClient;->lambda$getLastKnownPosition$1(Lcom/baseflow/geolocator/errors/ErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method
