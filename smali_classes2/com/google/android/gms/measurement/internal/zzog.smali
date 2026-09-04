.class final Lcom/google/android/gms/measurement/internal/zzog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzog;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzog;->zzb:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzog;->zzb:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzog;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzog;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzog;->zzb:Lcom/google/android/gms/measurement/internal/zznv;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzog;->zza:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzog;->zzb:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "App info was null when attempting to get app instance id"

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzog;->zzb:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Analytics storage consent denied. Returning null app instance id"

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-object v1
.end method
