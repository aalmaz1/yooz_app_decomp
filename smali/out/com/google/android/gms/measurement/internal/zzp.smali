.class public final Lcom/google/android/gms/measurement/internal/zzp;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzhy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_12

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "App receiver called with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "App receiver called with null action"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "App receiver called with unknown action"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result p2

    if-eqz p2, :cond_72

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzci:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-nez p2, :cond_59

    goto :goto_72

    .line 18
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "App receiver notified triggers are available"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 21
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    :cond_72
    :goto_72
    return-void
.end method
