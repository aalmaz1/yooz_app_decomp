.class public final Lcom/google/android/gms/internal/measurement/zzpn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zzpm;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzpn;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zzpm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpp;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzb()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzc()Z

    move-result v0

    return v0
.end method

.method public static zzd()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzd()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zze()Z

    move-result v0

    return v0
.end method

.method public static zzf()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzf()Z

    move-result v0

    return v0
.end method

.method public static zzg()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzg()Z

    move-result v0

    return v0
.end method

.method public static zzh()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzh()Z

    move-result v0

    return v0
.end method

.method public static zzi()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzi()Z

    move-result v0

    return v0
.end method

.method public static zzj()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzj()Z

    move-result v0

    return v0
.end method

.method public static zzk()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzk()Z

    move-result v0

    return v0
.end method

.method public static zzl()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpn;->zza:Lcom/google/android/gms/internal/measurement/zzpn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpm;->zzl()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpn;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpm;

    return-object v0
.end method
