.class final synthetic Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->values()[Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 2
    :catch_33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->values()[Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    :try_start_3c
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->zzg:Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method
