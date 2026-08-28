.class final Lcom/google/android/gms/measurement/internal/zzmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzdo;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/internal/measurement/zzdo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    .line 3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzha;->zzo()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v2

    if-nez v2, :cond_42

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_36} :catch_97
    .catchall {:try_start_3 .. :try_end_36} :catchall_95

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    if-nez v2, :cond_63

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_57} :catch_97
    .catchall {:try_start_42 .. :try_end_57} :catchall_95

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_63
    :try_start_63
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zze:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    .line 21
    :cond_84
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_89} :catch_97
    .catchall {:try_start_63 .. :try_end_89} :catchall_95

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    :catchall_95
    move-exception v0

    goto :goto_b1

    :catch_97
    move-exception v2

    .line 25
    :try_start_98
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_95

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    .line 28
    :goto_b1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzc:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmc;->zzb:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    .line 29
    throw v0
.end method
