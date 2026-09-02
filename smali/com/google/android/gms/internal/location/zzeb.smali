.class final synthetic Lcom/google/android/gms/internal/location/zzeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/common/internal/ICancelToken;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzeb;->zza:Lcom/google/android/gms/common/internal/ICancelToken;

    return-void
.end method


# virtual methods
.method public final synthetic onCanceled()V
    .registers 2

    sget v0, Lcom/google/android/gms/internal/location/zzdz;->zze:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzeb;->zza:Lcom/google/android/gms/common/internal/ICancelToken;

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
