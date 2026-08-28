.class public final Lcom/google/android/gms/internal/location/zzeg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@21.2.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zza:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/location/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzeg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;ZZZZLjava/lang/String;J)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance p7, Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 2
    invoke-direct {p7, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    if-eqz p2, :cond_32

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    goto :goto_2f

    .line 4
    :cond_12
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ClientIdentity;

    .line 6
    iget v1, v0, Lcom/google/android/gms/common/internal/ClientIdentity;->uid:I

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ClientIdentity;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->add(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_1b

    .line 7
    :cond_2f
    :goto_2f
    invoke-virtual {p7, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzc(Landroid/os/WorkSource;)Lcom/google/android/gms/location/LocationRequest$Builder;

    :cond_32
    const/4 p1, 0x1

    if-eqz p3, :cond_38

    .line 8
    invoke-virtual {p7, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setGranularity(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    :cond_38
    if-eqz p4, :cond_3e

    const/4 p2, 0x2

    .line 9
    invoke-virtual {p7, p2}, Lcom/google/android/gms/location/LocationRequest$Builder;->zza(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    :cond_3e
    if-eqz p5, :cond_43

    .line 10
    invoke-virtual {p7, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->zzb(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    :cond_43
    if-eqz p6, :cond_48

    .line 11
    invoke-virtual {p7, p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setWaitForAccurateLocation(Z)Lcom/google/android/gms/location/LocationRequest$Builder;

    :cond_48
    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p8, p1

    if-eqz p1, :cond_54

    .line 12
    invoke-virtual {p7, p8, p9}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateAgeMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 13
    :cond_54
    invoke-virtual {p7}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzeg;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/location/zzeg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/location/zzeg;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;ZZZZLjava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzeg;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/google/android/gms/internal/location/zzeg;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzeg;->zza:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
