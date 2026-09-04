.class public final Lcom/google/android/gms/internal/measurement/zznn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhj<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zza()Lcom/google/android/gms/internal/measurement/zzhr;

    move-result-object v0

    const-string v1, "measurement.client.consent_state_v1"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.client.3p_consent_state_v1"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.service.consent_state_v1_W36"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhj;

    const-string v1, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31b50

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznn;->zza:Lcom/google/android/gms/internal/measurement/zzhj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
