.class final Lcom/google/android/gms/measurement/internal/zzmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzmq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmu;->zza:Lcom/google/android/gms/measurement/internal/zzmq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmq;->zza:Lcom/google/android/gms/measurement/internal/zzls;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 4
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;Landroid/content/ComponentName;)V

    return-void
.end method
