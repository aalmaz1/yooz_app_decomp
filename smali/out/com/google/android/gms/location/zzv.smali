.class public abstract Lcom/google/android/gms/location/zzv;
.super Lcom/google/android/gms/internal/location/zzb;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/location/zzw;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzw;
    .registers 3

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/zzw;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/google/android/gms/location/zzw;

    return-object v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/location/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1e

    const/4 p4, 0x2

    if-eq p1, p4, :cond_f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_b

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/location/zzv;->zzf()V

    goto :goto_2c

    .line 2
    :cond_f
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzd(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzv;->zze(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_2c

    .line 5
    :cond_1e
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/location/zzc;->zzd(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/zzv;->zzd(Lcom/google/android/gms/location/LocationResult;)V

    :goto_2c
    return p3
.end method
