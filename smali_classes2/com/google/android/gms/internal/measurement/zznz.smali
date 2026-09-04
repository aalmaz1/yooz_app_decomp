.class public final Lcom/google/android/gms/internal/measurement/zznz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    const-string v1, "measurement.dma_consent.client"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.client_bow_check2"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.separate_service_calls_fix"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service_database_update_fix"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznz;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service_dcu_event"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service_dcu_event2"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznz;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service_npa_remote_default"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.service_split_batch_on_consent"

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.set_consent_inline_on_worker"

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.dma_consent.setting_npa_inline_fix"

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzb:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznz;->zzc:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
