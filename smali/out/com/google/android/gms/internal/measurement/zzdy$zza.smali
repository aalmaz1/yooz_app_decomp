.class abstract Lcom/google/android/gms/internal/measurement/zzdy$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zza"
.end annotation


# instance fields
.field final zza:J

.field final zzb:J

.field private final zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdy;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzdy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdy;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdy;Z)V
    .registers 5

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdy;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zza:J

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdy;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzb:J

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzc:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzdy;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdy;->zzc(Lcom/google/android/gms/internal/measurement/zzdy;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzb()V

    return-void

    .line 12
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zza()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzdy;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzc:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;Ljava/lang/Exception;ZZ)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zzb()V

    return-void
.end method

.method abstract zza()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected zzb()V
    .registers 1

    return-void
.end method
