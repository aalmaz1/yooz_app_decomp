.class public final Lcom/google/android/gms/measurement/internal/zzon;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:J

.field public final zzc:Ljava/lang/Long;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/Double;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzoq;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 10

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    .line 36
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 38
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    if-eqz p6, :cond_19

    .line 40
    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    goto :goto_1f

    .line 41
    :cond_1d
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 42
    :goto_1f
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;)V
    .registers 8

    .line 9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzd:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 15
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 16
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_19

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 21
    :cond_19
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_26

    .line 22
    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 25
    :cond_26
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_33

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 28
    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 29
    :cond_33
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_40

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 31
    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    return-void

    .line 33
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    .line 47
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzg:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    .line 49
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 51
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    const/4 v0, 0x6

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    if-eqz v0, :cond_5

    return-object v0

    .line 3
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzf:Ljava/lang/Double;

    if-eqz v0, :cond_a

    return-object v0

    .line 5
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzon;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method
