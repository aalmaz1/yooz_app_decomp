.class final synthetic Lcom/google/android/gms/internal/measurement/zzjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->values()[Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjq;->zza:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkd;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkd;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkd;->zzg:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkd;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
