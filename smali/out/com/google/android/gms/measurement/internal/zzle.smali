.class public final Lcom/google/android/gms/measurement/internal/zzle;
.super Lcom/google/android/gms/measurement/internal/zzjd;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjd;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzle;Ljava/net/HttpURLConnection;)[B
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzle;->zza(Ljava/net/HttpURLConnection;)[B

    move-result-object p0

    return-object p0
.end method

.method private static zza(Ljava/net/HttpURLConnection;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 30
    :goto_e
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_19

    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    .line 32
    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_23

    if-eqz v0, :cond_22

    .line 34
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_22
    return-object p0

    :catchall_23
    move-exception p0

    if-eqz v0, :cond_29

    .line 37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    :cond_29
    throw p0
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Z
    .registers 3

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_16

    .line 21
    :try_start_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_21

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 5
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    return-object v0
.end method

.method protected final zzh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 6
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 7
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 8
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 9
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .registers 1

    .line 13
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzr()V

    return-void
.end method

.method public final bridge synthetic zzs()V
    .registers 1

    .line 14
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzs()V

    return-void
.end method

.method public final bridge synthetic zzt()V
    .registers 1

    .line 15
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzjd;->zzt()V

    return-void
.end method
