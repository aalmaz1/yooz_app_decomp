.class public final Lcom/google/android/gms/internal/measurement/zzgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzgk;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/measurement/zzgk;
    .registers 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzgl;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    if-nez v1, :cond_f

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzgk;)V

    .line 3
    :cond_f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgk;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized zza(Lcom/google/android/gms/internal/measurement/zzgk;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzgl;

    monitor-enter v0

    .line 5
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgk;

    if-nez v1, :cond_b

    .line 7
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgk;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 8
    monitor-exit v0

    return-void

    .line 6
    :cond_b
    :try_start_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "init() already called"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p0

    monitor-exit v0

    throw p0
.end method
