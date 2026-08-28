.class final synthetic Lcom/google/android/gms/measurement/internal/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# static fields
.field static final synthetic zza:[I

.field static final synthetic zzb:[I

.field static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->values()[Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzht;->zzc:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->zzb:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 2
    :catch_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->values()[Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    :try_start_26
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zzb:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    const/4 v2, 0x3

    :try_start_39
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zzd:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    const/4 v3, 0x4

    :try_start_44
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->zze:Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    .line 3
    :catch_4e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzs;->values()[Lcom/google/android/gms/internal/measurement/zzs;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    :try_start_57
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzs;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzs;->zzd:Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    :catch_7d
    return-void
.end method
