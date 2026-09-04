.class public final synthetic Lcom/google/android/gms/measurement/internal/zzni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zznf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zznf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zznf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzni;->zza:Lcom/google/android/gms/measurement/internal/zznf;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznf;->zzc:Lcom/google/android/gms/measurement/internal/zzng;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zznf;->zza:J

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zznf;->zzb:J

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Application going to the background"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzha;->zzn:Lcom/google/android/gms/measurement/internal/zzgz;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgz;->zza(Z)V

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zznb;->zza(Z)V

    .line 7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcp:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0, v6, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    .line 10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/zznh;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zznh;->zzb(J)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznb;->zzb:Lcom/google/android/gms/measurement/internal/zznh;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zznh;->zzb(J)V

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0, v6, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zznb;->zza(ZZJ)Z

    .line 13
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v4, "Application backgrounded at: timestamp_millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzdd:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzng;->zza:Lcom/google/android/gms/measurement/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzam()V

    :cond_2
    return-void
.end method
