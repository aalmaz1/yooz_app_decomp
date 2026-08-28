.class public Lcom/google/android/gms/internal/play_billing/zzdq;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzcp;


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/play_billing/zzek;

.field private volatile zzc:Lcom/google/android/gms/internal/play_billing/zzcc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzb:Lcom/google/android/gms/internal/play_billing/zzcp;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzdq;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzdq;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    if-nez v0, :cond_22

    if-eqz v1, :cond_15

    goto :goto_22

    .line 8
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzdq;->zzb()Lcom/google/android/gms/internal/play_billing/zzcc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzdq;->zzb()Lcom/google/android/gms/internal/play_billing/zzcc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzcc;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    if-nez v1, :cond_27

    goto :goto_2c

    .line 7
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_3c

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzek;->zzf()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc(Lcom/google/android/gms/internal/play_billing/zzek;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_3c
    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzek;->zzf()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc(Lcom/google/android/gms/internal/play_billing/zzek;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzbz;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzbz;->zza:[B

    array-length v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzek;->zzg()I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/play_billing/zzcc;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    if-nez v0, :cond_19

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    goto :goto_21

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzek;->zzb()Lcom/google/android/gms/internal/play_billing/zzcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 2
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/play_billing/zzek;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    if-eqz v0, :cond_c

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1b

    return-void

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;
    :try_end_12
    .catch Lcom/google/android/gms/internal/play_billing/zzdn; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_1b

    goto :goto_19

    .line 3
    :catch_13
    :try_start_13
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zza:Lcom/google/android/gms/internal/play_billing/zzek;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb:Lcom/google/android/gms/internal/play_billing/zzcc;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdq;->zzc:Lcom/google/android/gms/internal/play_billing/zzcc;

    .line 3
    :goto_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p1
.end method
