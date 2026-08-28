.class final Lcom/google/android/gms/measurement/internal/zzmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzf:Z

.field private final synthetic zzg:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzf:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzg:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzg:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    if-nez v1, :cond_34

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzg:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "(legacy) Failed to get user properties; not connected to service"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzb:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzd:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2d} :catch_71
    .catchall {:try_start_3 .. :try_end_2d} :catchall_6f

    .line 10
    :try_start_2d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_9f

    return-void

    .line 12
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzb:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzd:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzf:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zze:Lcom/google/android/gms/measurement/internal/zzo;

    .line 15
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzo;)Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_64

    .line 17
    :cond_53
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzd:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzf:Z

    .line 18
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    :goto_64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzg:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_69} :catch_71
    .catchall {:try_start_34 .. :try_end_69} :catchall_6f

    .line 21
    :try_start_69
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_9f

    goto :goto_97

    :catchall_6f
    move-exception v1

    goto :goto_99

    :catch_71
    move-exception v1

    .line 24
    :try_start_72
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzg:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "(legacy) Failed to get user properties; remote exception"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzb:Ljava/lang/String;

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zzc:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_92
    .catchall {:try_start_72 .. :try_end_92} :catchall_6f

    .line 29
    :try_start_92
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 33
    :goto_97
    monitor-exit v0

    return-void

    .line 31
    :goto_99
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 32
    throw v1

    :catchall_9f
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_92 .. :try_end_a1} :catchall_9f

    throw v1
.end method
