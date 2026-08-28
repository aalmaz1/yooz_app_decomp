.class public Lcom/google/android/gms/internal/measurement/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.1.2"


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/measurement/zzlc;

.field private volatile zzb:Lcom/google/android/gms/internal/measurement/zzik;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzlc;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    if-nez v0, :cond_1d

    .line 19
    monitor-enter p0

    .line 20
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    if-eqz v0, :cond_b

    .line 21
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    goto :goto_1d

    .line 22
    :cond_b
    :try_start_b
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;
    :try_end_11
    .catch Lcom/google/android/gms/internal/measurement/zzkb; {:try_start_b .. :try_end_11} :catch_12
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    goto :goto_18

    .line 26
    :catch_12
    :try_start_12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    .line 28
    :goto_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1

    .line 29
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkk;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkk;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    .line 41
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzik;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2a
    if-eqz v0, :cond_39

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzck()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 48
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzlc;->zzck()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

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

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzik;->zzb()I

    move-result v0

    return v0

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    if-eqz v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzcb()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzlc;)Lcom/google/android/gms/internal/measurement/zzlc;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzik;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    return-object v0

    .line 9
    :cond_7
    monitor-enter p0

    .line 10
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    if-eqz v0, :cond_10

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    monitor-exit p0

    return-object v0

    .line 12
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    if-nez v0, :cond_19

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    goto :goto_21

    .line 14
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Lcom/google/android/gms/internal/measurement/zzlc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlc;->zzbz()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    .line 15
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Lcom/google/android/gms/internal/measurement/zzik;

    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method
