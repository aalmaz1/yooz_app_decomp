.class final Lcom/google/android/gms/measurement/internal/zzhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzv;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzs;Ljava/lang/String;Ljava/util/List;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzs;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzs;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_74

    if-eq p1, v1, :cond_4f

    if-eq p1, v0, :cond_2a

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1f

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    .line 17
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    :cond_2a
    if-eqz p4, :cond_37

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    :cond_37
    if-nez p5, :cond_44

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    .line 15
    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    :cond_4f
    if-eqz p4, :cond_5c

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    :cond_5c
    if-nez p5, :cond_69

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    .line 9
    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    goto :goto_7e

    .line 3
    :cond_74
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    .line 20
    :goto_7e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    if-eq p4, v2, :cond_a9

    if-eq p4, v1, :cond_9d

    if-eq p4, v0, :cond_8d

    .line 27
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_8d
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_9d
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_a9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
